# Montagu Slab

Montagu Slab is a slab-serif display typeface, drawing inspiration from 19th-century classic designs. The typeface is available as a variable font with weight and optical size axes.

The optical size axis, which controls x-height, spacing, contrast and aperture, provides a wide range of variation – from low contrast and higher x-height version suitable for longer text, to a tight and high contrast display variant with prominent upturned tails.

## Pre-building the Fonts

If you want to make a contribution and generate new fonts, before building them, it is necessary to decompose all smart components inside the Glyphs app.

First, install "Montagu Slab Pre-build.py" script placed in "sources/glyphs-decomposed". To do so, open Glyphs app and do the following:

1. Shift+Cmd+Y (Script > Open Scripts Folder)
2. Place "Montagu Slab Pre-build.py" file into the "Scripts" folder
3. Quit Glyphs app

Pre-build process:

1. Duplicate "Montagu-Slab.glyphs" placed in "sources/glyphs-origin" into "sources/glyphs-decomposed"
2. Open the duplicated `glyphs-decomposed` file in Glyphs app
3. Cmd+A (Edit > Select All)
4. Run "Montagu Slab Pre-build" from Script menu
5. Save file

Tested with Glyphs v2.6.6

## Building the Fonts

Family is built using fontmake and gftools post processing script. Tools are all python based.

To install all the Python tools into a virtualenv, do the following :

```
#Create the virtualenv. This step is only required once
python3 -m venv venv 

#Activate the virtualenv. This step is needed every time before building new fonts
source venv/bin/activate 

#Installing required dependencies. This step is only required when creating the venv
pip install -r requirements.txt
```

Then run the build script in the terminal:

```
cd sources
sh build.sh
```

## License

Montagu Slab is licensed under the SIL Open Font License v1.1, see [OFL.txt](OFL.txt) for details.

## About Author

Florian Karsten Studio (Brno, Czech Republic) focuses on graphic design, type design and programming. We create websites, books, programmes, typefaces and above all, functional systems. We're excited about open-source and peer2peer networks.

Questions, comments, requests, suggestions: fonts@floriankarsten.com