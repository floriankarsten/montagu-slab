#!/bin/sh
set -e
#source ../env/bin/activate

echo "BUILDING THE FONTS"

gftools builder glyphs-decomposed/config.yml


echo "Deleting unnecessary static fonts"

mkdir -p ../fonts/ttf/delete-ttf
mv ../fonts/ttf/MontaguSlab-*.ttf ../fonts/ttf/delete-ttf
rm -rf ../fonts/ttf/delete-ttf

mkdir -p ../fonts/otf/delete-otf
mv ../fonts/otf/MontaguSlab-*.otf ../fonts/otf/delete-otf
rm -rf ../fonts/otf/delete-otf

mkdir -p ../fonts/webfonts/delete-webfonts
mv ../fonts/webfonts/MontaguSlab-*.woff2 ../fonts/webfonts/delete-webfonts
rm -rf ../fonts/webfonts/delete-webfonts