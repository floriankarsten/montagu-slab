#FK FONT BUILDER v1.0.1
#!/bin/sh
set -e

mkdir -p ../fonts/otf ../fonts/ttf ../fonts/ttf/static ../fonts/woff2 ../fonts/woff2/static

echo "Generating VFs"
VF_File=../fonts/ttf/MontaguSlab\[wght\].ttf
glyphs2ufo MontaguSlab.glyphs --generate-GDEF
fontmake -m MontaguSlab.designspace -o variable --output-path $VF_File

echo "Voila! Done."
cd ..