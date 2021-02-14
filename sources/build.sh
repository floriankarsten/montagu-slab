#FK FONT BUILDER v1.0.1
#!/bin/sh
set -e

font_file="Montagu-Slab"

mkdir -p ../fonts/otf
mkdir -p ../fonts/ttf
mkdir -p ../fonts/ttf/static
mkdir -p ../fonts/woff2
mkdir -p ../fonts/woff2/static

echo "Generating Static OTFs"
fontmake -g ready-to-export/$font_file.glyphs -i -o otf --output-dir ../fonts/otf

echo "Generating Static TTFs"
fontmake -g ready-to-export/$font_file.glyphs -i -o ttf --output-dir ../fonts/ttf/static

echo "Generating VFs"
fontmake -g ready-to-export/$font_file.glyphs -o variable --output-path ../fonts/ttf/$font_file.ttf

rm -rf master_ufo/ instance_ufo/

echo "Post processing"

ttfs=$(ls ../fonts/ttf/static/*.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	ttfautohint $ttf $ttf.fix
	mv "$ttf.fix" $ttf
	gftools fix-hinting $ttf
	mv "$ttf.fix" $ttf
	woff2_compress $ttf
done

vfs=$(ls ../fonts/ttf/*.ttf)
for vf in $vfs
do
	gftools fix-dsig -f $vf;
	gftools fix-nonhinting $vf "$vf.fix"
	mv "$vf.fix" $vf
	gftools fix-unwanted-tables --tables MVAR $vf
	woff2_compress $vf
done
rm ../fonts/ttf/*backup*.ttf

mv ../fonts/ttf/*.woff2 ../fonts/woff2
mv ../fonts/ttf/static/*.woff2 ../fonts/woff2/static

echo "Voila! Done."
cd ..