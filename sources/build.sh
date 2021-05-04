#FK FONT BUILDER v1.0.1
#!/bin/sh
set -e

rm -rf ../fonts
mkdir -p ../fonts/otf ../fonts/ttf ../fonts/ttf/static ../fonts/woff2 ../fonts/woff2/static

echo "Generating UFOs"
glyphs2ufo glyphs-decomposed/MontaguSlab.glyphs --generate-GDEF

echo "Generating VF"
VF_File=../fonts/ttf/MontaguSlab\[opsz,wght\].ttf
fontmake -m MontaguSlab.designspace -o variable --output-path $VF_File

echo "Post processing VF"
gftools fix-nonhinting $VF_File $VF_File.fix
mv $VF_File.fix $VF_File
gftools fix-dsig -f $VF_File
gftools fix-unwanted-tables $VF_File -t MVAR
python3 MontaguSlab-STAT.py $VF_File
ttx -m $VF_File MontaguSlab-fvar.ttx
mv *.ttf ../fonts/ttf
rm $VF_File
mv ../fonts/ttf/MontaguSlab-fvar.ttf $VF_File
python3 scripts/fix-font-name.py $VF_File "Montagu Slab"
fonttools ttLib.woff2 compress $VF_File
mv ../fonts/ttf/*.woff2 ../fonts/woff2

echo "Generating static TTFs"
fontmake -m MontaguSlab.designspace -i -o ttf --output-dir ../fonts/ttf/static/ -a

echo "Post processing static TTFs"
ttfs=$(ls ../fonts/ttf/static/*.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	gftools fix-hinting $ttf
	mv "$ttf.fix" $ttf
	fonttools ttLib.woff2 compress $ttf
done
mv ../fonts/ttf/static/*.woff2 ../fonts/woff2/static

echo "Generating Static OTFs"
fontmake -m MontaguSlab.designspace -i -o otf --output-dir ../fonts/otf

echo "Cleaning"
rm -rf instance_ufos glyphs-decomposed/*.ufo glyphs-decomposed/MontaguSlab.designspace ../fonts/ttf/*backup*.ttf

#echo "Reporting tables"
#ttx -o report-fvar.ttx -t fvar $VF_File
#ttx -o report-STAT.ttx -t STAT $VF_File
#mv *.ttx reports

echo "Voila! Done."
cd ..

# fontbakery check-googlefonts *.ttf --succinct --loglevel WARN --ghmarkdown report.md