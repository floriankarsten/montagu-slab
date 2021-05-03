#MenuTitle: Montagu Slab Pre-build
# -*- coding: utf-8 -*-


thisFont = Glyphs.font

for thisGlyph in thisFont.glyphs:
	for thisLayer in thisGlyph.layers:
		thisLayer.decomposeComponents()
		thisLayer.decomposeSmartOutlines()
		thisLayer.cleanUpPaths()

del thisFont.glyphs["_corner.Serif"]
del thisFont.glyphs["_corner.Serif.001"]
del thisFont.glyphs["caroncomb.alt"]
del thisFont.glyphs["gravecomb.alt"]
del thisFont.glyphs["acutecomb.alt"]
del thisFont.glyphs["_U"]
del thisFont.glyphs["_U.horn"]
del thisFont.glyphs["_zero.slash"]

Glyphs.clearLog() # clears macro window log
listOfSelectedLayers = [ l for l in thisFont.selectedLayers if hasattr(l.parent, 'name')]
 # active layers of selected glyphs

def process( thisGlyph ):
	thisGlyph.setLeftMetricsKey_(None)
	thisGlyph.setRightMetricsKey_(None)
	thisGlyph.setWidthMetricsKey_(None)
	for thisLayer in thisGlyph.layers:
		thisLayer.setLeftMetricsKey_(None)
		thisLayer.setRightMetricsKey_(None)
		thisLayer.setWidthMetricsKey_(None)

thisFont.disableUpdateInterface() # suppresses UI updates in Font View
try:
	for thisLayer in listOfSelectedLayers:
		thisGlyph = thisLayer.parent
		print("Deleted metrics keys: %s" % thisGlyph.name)
		thisGlyph.beginUndo() # begin undo grouping
		process( thisGlyph )
		thisGlyph.endUndo()   # end undo grouping

except Exception as e:
	Glyphs.showMacroWindow()
	print("\n⚠️ Script Error:\n")
	import traceback
	print(traceback.format_exc())
	print()
	raise e
	
finally:
	thisFont.enableUpdateInterface() # re-enables UI updates in Font View
	