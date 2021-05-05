# Montagu Slab

WIP

## Pre-building the Fonts

Before building the fonts, it is necessary to decompose all smart components inside the Glyphs app.

First, install "Montagu Slab Pre-build.py" script placed in "sources/glyphs-decomposed". Open Glyphs app and do the following:

1. Shift+Cmd+Y (Script > Open Scripts Folder)
2. Place "Montagu Slab Pre-build.py" file into the "Scripts" folder
3. Quit Glyphs app

Pre-build process:

1. Duplicate "Montagu-Slab.glyphs" placed in "sources/glyphs-origin" into "sources/glyphs-decomposed"
2. Open the duplicate in Glyphs app
3. Cmd+A (Edit > Select All)
4. Run "Montagu Slab Pre-build" from Script menu
5. Save file

Tested with Glyphs v2.6.6

## Building the Fonts

Family is built using fontmake and gftools post processing script. Tools are all python based.

To install all the Python tools into a virtualenv, do the following:

```
python3 -m venv venv
source venv/bin/activate
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