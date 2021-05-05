## Fontbakery report

Fontbakery version: 0.7.34

<details>
<summary><b>[1] Family checks</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
<pre>--- Rationale ---

There&#x27;s no reasonable (and legal) way to run the command `ftxvalidator` of the
Apple Font Tool Suite on a non-macOS machine. I.e. on GNU+Linux or Windows etc.

If Font Bakery is not running on an OSX machine, the machine running Font
Bakery could access `ftxvalidator` on OSX, e.g. via ssh or a remote procedure
call (rpc).

There&#x27;s an ssh example implementation at:
https://github.com/googlefonts/fontbakery/blob/master/prebuilt/workarounds
/ftxvalidator/ssh-implementation/ftxvalidator


</pre>

* ⚠ **WARN** Could not find ftxvalidator.

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab14pt-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Cdotaccent: X=625.0,Y=1798.0 (should be at ascender 1800?)
	* Cdotaccent: X=1113.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=583.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=1071.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=605.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=1093.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=204.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=692.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=684.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=1172.0,Y=1798.0 (should be at ascender 1800?) and 24 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<497.5,678.0>-<416.0,641.0>-<298.0,630.0>>/B<<298.0,630.0>-<416.0,620.0>-<497.5,582.5>> = 10.169740999848386
	* braceright: B<<468.5,582.5>-<550.0,620.0>-<668.0,630.0>>/B<<668.0,630.0>-<550.0,641.0>-<468.5,678.0>> = 10.169740999848386
	* eng: L<<587.0,1160.0>--<587.0,911.0>>/B<<587.0,911.0>-<615.0,1040.0>-<702.0,1113.5>> = 12.246332859680393
	* m: L<<581.0,1160.0>--<581.0,900.0>>/B<<581.0,900.0>-<605.0,1034.0>-<687.5,1110.0>> = 10.154266580200266
	* n: L<<587.0,1160.0>--<587.0,911.0>>/B<<587.0,911.0>-<615.0,1040.0>-<702.0,1113.5>> = 12.246332859680393
	* nacute: L<<587.0,1160.0>--<587.0,911.0>>/B<<587.0,911.0>-<615.0,1040.0>-<702.0,1113.5>> = 12.246332859680393
	* ncaron: L<<587.0,1160.0>--<587.0,911.0>>/B<<587.0,911.0>-<615.0,1040.0>-<702.0,1113.5>> = 12.246332859680393
	* ntilde: L<<587.0,1160.0>--<587.0,911.0>>/B<<587.0,911.0>-<615.0,1040.0>-<702.0,1113.5>> = 12.246332859680393
	* u: L<<962.0,0.0>--<962.0,250.0>>/B<<962.0,250.0>-<934.0,121.0>-<847.0,47.5>> = 12.246332859680393
	* uacute: L<<962.0,0.0>--<962.0,250.0>>/B<<962.0,250.0>-<934.0,121.0>-<847.0,47.5>> = 12.246332859680393 and 25 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* k: L<<222.0,210.0>--<223.0,1370.0>>
	* k: L<<623.0,1580.0>--<622.0,644.0>>
	* uni0137: L<<222.0,210.0>--<223.0,1370.0>> and uni0137: L<<623.0,1580.0>--<622.0,644.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab14pt-ExtraLight.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 14pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EA2: X=1024.5,Y=1801.5 (should be at ascender 1800?)
	* Atilde: X=864.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EBA: X=979.5,Y=1801.5 (should be at ascender 1800?)
	* uni1EBC: X=818.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EC8: X=534.5,Y=1801.5 (should be at ascender 1800?)
	* Itilde: X=374.0,Y=1802.0 (should be at ascender 1800?)
	* Ntilde: X=924.0,Y=1802.0 (should be at ascender 1800?)
	* uni1ECE: X=1082.5,Y=1801.5 (should be at ascender 1800?)
	* uni1EDE: X=1082.5,Y=1801.5 (should be at ascender 1800?)
	* uni1EE0: X=921.0,Y=1802.0 (should be at ascender 1800?) and 88 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<452.0,656.5>-<375.0,586.0>-<248.0,578.0>>/B<<248.0,578.0>-<375.0,570.0>-<452.0,499.5>> = 7.2088410783514005
	* braceright: B<<477.0,499.5>-<554.0,570.0>-<681.0,578.0>>/B<<681.0,578.0>-<554.0,586.0>-<476.5,656.5>> = 7.2088410783514005
	* eth: B<<894.5,1055.5>-<1004.0,999.0>-<1067.0,882.0>>/B<<1067.0,882.0>-<1032.0,1011.0>-<972.5,1119.0>> = 13.120828331480157
	* nine.lf: B<<1111.5,549.0>-<1148.0,729.0>-<1129.0,987.0>>/B<<1129.0,987.0>-<1113.0,796.0>-<987.5,679.0>> = 9.0003200404022
	* nine: B<<1111.5,549.0>-<1148.0,729.0>-<1129.0,987.0>>/B<<1129.0,987.0>-<1113.0,796.0>-<987.5,679.0>> = 9.0003200404022
	* six.dnom: B<<188.5,523.5>-<154.0,437.0>-<162.0,300.0>>/B<<162.0,300.0>-<174.0,366.0>-<236.5,416.5>> = 13.646790326027142
	* six.lf: B<<254.0,951.0>-<218.0,771.0>-<237.0,513.0>>/B<<237.0,513.0>-<253.0,704.0>-<378.0,821.0>> = 9.0003200404022
	* six.numr: B<<188.5,1291.5>-<154.0,1205.0>-<162.0,1068.0>>/B<<162.0,1068.0>-<174.0,1134.0>-<236.5,1184.5>> = 13.646790326027142
	* six: B<<254.0,951.0>-<218.0,771.0>-<237.0,513.0>>/B<<237.0,513.0>-<253.0,704.0>-<378.0,821.0>> = 9.0003200404022
	* uni2076: B<<188.5,1291.5>-<154.0,1205.0>-<162.0,1068.0>>/B<<162.0,1068.0>-<174.0,1134.0>-<236.5,1184.5>> = 13.646790326027142 and uni2086: B<<188.5,103.5>-<154.0,17.0>-<162.0,-120.0>>/B<<162.0,-120.0>-<174.0,-54.0>-<236.5,-3.5>> = 13.646790326027142 [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* dotlessi.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* i.loclTRK.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* i.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* iacute.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* icircumflex.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* idieresis.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* igrave.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* imacron.ss01: L<<263.0,217.0>--<266.0,1044.0>>
	* l.ss01: L<<260.0,225.0>--<263.0,1498.0>>
	* lacute.ss01: L<<260.0,225.0>--<263.0,1498.0>> and 12 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab14pt-Light.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 14pt Light' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EA2: X=911.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EA2: X=1045.0,Y=1798.5 (should be at ascender 1800?)
	* Atilde: X=782.0,Y=1800.5 (should be at ascender 1800?)
	* uni1EBA: X=860.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EBA: X=993.0,Y=1798.5 (should be at ascender 1800?)
	* uni1EBC: X=731.0,Y=1800.5 (should be at ascender 1800?)
	* uni1EC8: X=425.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EC8: X=559.0,Y=1798.5 (should be at ascender 1800?)
	* Itilde: X=296.0,Y=1800.5 (should be at ascender 1800?)
	* Ntilde: X=835.0,Y=1800.5 (should be at ascender 1800?) and 61 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<470.0,667.0>-<390.0,595.0>-<255.0,586.0>>/B<<255.0,586.0>-<390.0,577.0>-<470.0,505.0>> = 7.628149668580618
	* braceright: B<<464.5,505.0>-<544.0,577.0>-<679.0,586.0>>/B<<679.0,586.0>-<544.0,595.0>-<464.0,667.0>> = 7.628149668580618
	* nine.lf: B<<1089.0,543.0>-<1123.0,712.0>-<1106.0,952.0>>/B<<1106.0,952.0>-<1085.0,776.0>-<965.5,667.5>> = 10.855943400436837
	* nine: B<<1089.0,543.0>-<1123.0,712.0>-<1106.0,952.0>>/B<<1106.0,952.0>-<1085.0,776.0>-<965.5,667.5>> = 10.855943400436837
	* six.lf: B<<296.5,957.0>-<262.0,788.0>-<279.0,548.0>>/B<<279.0,548.0>-<300.0,724.0>-<420.0,832.5>> = 10.855943400436837 and six: B<<296.5,957.0>-<262.0,788.0>-<279.0,548.0>>/B<<279.0,548.0>-<300.0,724.0>-<420.0,832.5>> = 10.855943400436837 [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* dotlessi.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* i.loclTRK.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* i.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* iacute.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* icircumflex.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* idieresis.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* igrave.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* imacron.ss01: L<<260.0,237.0>--<266.0,1029.0>>
	* k: L<<273.0,87.0>--<274.0,1479.0>>
	* l.ss01: L<<249.0,253.0>--<257.0,1479.0>> and 6 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab14pt-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 4	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 4	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 14pt Medium' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni01EA: X=1184.0,Y=-2.0 (should be at baseline 0?)
	* Q: X=1191.0,Y=2.0 (should be at baseline 0?)
	* uni1EA9: X=830.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EA3: X=531.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EC3: X=828.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EBB: X=529.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EC9: X=253.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1ED5: X=896.0,Y=1798.0 (should be at ascender 1800?)
	* uni1ECF: X=597.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EDF: X=597.0,Y=1501.0 (should be at cap-height 1500?) and 9 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---

This test looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).

This test is not run for variable fonts, as they may legitimately have short
segments. As this test is liable to generate significant numbers of false
positives, the test will pass if there are more than 100 reported short
segments.


</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* Aogonek contains a short segment B<<1520.0,-298.0>-<1547.0,-298.0>-<1565.5,-291.5>>
	* Aogonek contains a short segment B<<1565.5,-291.5>-<1584.0,-285.0>-<1606.0,-272.0>>
	* Ccedilla contains a short segment B<<933.0,-259.0>-<933.0,-232.0>-<913.5,-219.0>>
	* Ccedilla contains a short segment B<<913.5,-219.0>-<894.0,-206.0>-<864.0,-206.0>>
	* Ccedilla contains a short segment L<<890.0,-105.0>--<905.0,-105.0>>
	* Eogonek contains a short segment B<<1272.0,-207.0>-<1272.0,-251.0>-<1299.5,-274.5>>
	* Eogonek contains a short segment B<<1299.5,-274.5>-<1327.0,-298.0>-<1370.0,-298.0>>
	* Eogonek contains a short segment B<<1370.0,-298.0>-<1396.0,-298.0>-<1415.0,-291.5>>
	* Eogonek contains a short segment B<<1415.0,-291.5>-<1434.0,-285.0>-<1455.0,-272.0>>
	* Scedilla contains a short segment B<<910.0,-29.0>-<895.0,-29.0>-<880.0,-29.0>> and 69 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<457.0,653.0>-<383.0,618.0>-<278.0,609.0>>/B<<278.0,609.0>-<383.0,601.0>-<457.0,565.5>> = 9.25606745963407
	* braceright: B<<494.5,565.5>-<569.0,601.0>-<673.0,609.0>>/B<<673.0,609.0>-<569.0,618.0>-<494.5,653.0>> = 9.344671902099696
	* dollar: B<<1021.5,563.5>-<951.0,588.0>-<866.0,600.0>>/L<<866.0,600.0>--<866.0,600.0>> = 8.035710710534744
	* m: L<<504.0,1139.0>--<504.0,897.0>>/B<<504.0,897.0>-<536.0,1025.0>-<621.5,1093.5>> = 14.036243467926484
	* u: L<<995.0,0.0>--<995.0,279.0>>/B<<995.0,279.0>-<959.0,131.0>-<860.5,54.0>> = 13.67130713219584
	* uacute: L<<995.0,0.0>--<995.0,279.0>>/B<<995.0,279.0>-<959.0,131.0>-<860.5,54.0>> = 13.67130713219584
	* ubreve: L<<995.0,0.0>--<995.0,279.0>>/B<<995.0,279.0>-<959.0,131.0>-<860.5,54.0>> = 13.67130713219584
	* ucircumflex: L<<995.0,0.0>--<995.0,279.0>>/B<<995.0,279.0>-<959.0,131.0>-<860.5,54.0>> = 13.67130713219584
	* udieresis: L<<995.0,0.0>--<995.0,279.0>>/B<<995.0,279.0>-<959.0,131.0>-<860.5,54.0>> = 13.67130713219584
	* ugrave: L<<995.0,0.0>--<995.0,279.0>>/B<<995.0,279.0>-<959.0,131.0>-<860.5,54.0>> = 13.67130713219584 and 16 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* k: L<<246.0,152.0>--<247.0,1421.0>>
	* k: L<<525.0,1573.0>--<524.0,578.0>>
	* uni0137: L<<246.0,152.0>--<247.0,1421.0>> and uni0137: L<<525.0,1573.0>--<524.0,578.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab14pt-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Abreve: X=720.5,Y=1800.5 (should be at ascender 1800?)
	* Abreve: X=1034.0,Y=1800.5 (should be at ascender 1800?)
	* uni1EAE: X=720.5,Y=1800.5 (should be at ascender 1800?)
	* uni1EAE: X=1034.0,Y=1800.5 (should be at ascender 1800?)
	* uni1EB6: X=720.5,Y=1800.5 (should be at ascender 1800?)
	* uni1EB6: X=1034.0,Y=1800.5 (should be at ascender 1800?)
	* uni1EB0: X=720.5,Y=1800.5 (should be at ascender 1800?)
	* uni1EB0: X=1034.0,Y=1800.5 (should be at ascender 1800?)
	* uni1EB2: X=720.5,Y=1800.5 (should be at ascender 1800?)
	* uni1EB2: X=1034.0,Y=1800.5 (should be at ascender 1800?) and 47 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---

This test looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).

This test is not run for variable fonts, as they may legitimately have short
segments. As this test is liable to generate significant numbers of false
positives, the test will pass if there are more than 100 reported short
segments.


</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* Ccedilla contains a short segment B<<952.0,-263.0>-<952.0,-231.0>-<929.0,-215.5>>
	* Ccedilla contains a short segment B<<929.0,-215.5>-<906.0,-200.0>-<871.0,-200.0>>
	* Ccedilla contains a short segment L<<882.0,-116.0>--<902.0,-116.0>>
	* Eogonek contains a short segment B<<1345.0,-315.0>-<1375.0,-315.0>-<1396.0,-307.0>>
	* Eogonek contains a short segment B<<1396.0,-307.0>-<1417.0,-299.0>-<1441.0,-283.0>>
	* Scedilla contains a short segment B<<898.0,-28.0>-<881.0,-28.0>-<865.0,-27.0>>
	* Scedilla contains a short segment L<<852.0,-116.0>--<872.0,-116.0>>
	* Scedilla contains a short segment B<<897.5,-318.5>-<922.0,-298.0>-<922.0,-263.0>>
	* Scedilla contains a short segment B<<922.0,-263.0>-<922.0,-231.0>-<899.5,-215.5>>
	* Scedilla contains a short segment B<<899.5,-215.5>-<877.0,-200.0>-<842.0,-200.0>> and 63 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<497.0,683.0>-<413.0,609.0>-<267.0,598.0>>/B<<267.0,598.0>-<413.0,587.0>-<497.0,513.0>> = 8.617329833049736
	* braceright: B<<446.0,513.0>-<530.0,587.0>-<676.0,598.0>>/B<<676.0,598.0>-<530.0,609.0>-<446.0,683.0>> = 8.617329833049736
	* nine.lf: B<<1031.0,439.5>-<1092.0,617.0>-<1073.0,899.0>>/B<<1073.0,899.0>-<1045.0,746.0>-<933.0,651.0>> = 14.225269954002863
	* nine: B<<1031.0,439.5>-<1092.0,617.0>-<1073.0,899.0>>/B<<1073.0,899.0>-<1045.0,746.0>-<933.0,651.0>> = 14.225269954002863
	* percent: B<<1093.0,1027.0>-<1062.0,1037.0>-<1027.0,1039.0>>/B<<1027.0,1039.0>-<1061.0,1034.0>-<1091.0,1025.0>> = 5.095398200849013
	* percent: B<<864.0,474.0>-<894.0,463.0>-<930.0,461.0>>/B<<930.0,461.0>-<896.0,466.0>-<865.0,476.0>> = 5.186056004168259
	* perthousand: B<<1093.0,1027.0>-<1062.0,1037.0>-<1027.0,1039.0>>/B<<1027.0,1039.0>-<1061.0,1034.0>-<1091.0,1025.0>> = 5.095398200849013
	* perthousand: B<<864.0,474.0>-<889.0,465.0>-<918.0,462.0>>/B<<918.0,462.0>-<890.0,466.0>-<864.0,474.0>> = 2.2239612403853224
	* perthousand: B<<918.0,462.0>-<890.0,466.0>-<864.0,474.0>>/B<<864.0,474.0>-<889.0,465.0>-<918.0,462.0>> = 2.6961473854724685
	* six.lf: B<<383.0,1060.5>-<322.0,883.0>-<341.0,601.0>>/B<<341.0,601.0>-<369.0,754.0>-<481.0,849.0>> = 14.225269954002863 and 22 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab14pt-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 14pt SemiBold' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* parenleft: X=384.5,Y=1501.0 (should be at cap-height 1500?)
	* parenright: X=359.0,Y=1501.0 (should be at cap-height 1500?)
	* uni0328: X=198.0,Y=-0.5 (should be at baseline 0?) and ogonek: X=198.0,Y=-0.5 (should be at baseline 0?) [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<476.0,664.0>-<398.0,628.0>-<287.0,619.0>>/B<<287.0,619.0>-<398.0,609.0>-<476.0,573.0>> = 9.783348251038905
	* braceright: B<<482.0,573.0>-<560.0,609.0>-<671.0,619.0>>/B<<671.0,619.0>-<560.0,628.0>-<482.0,664.0>> = 9.783348251038905
	* eng: L<<545.0,1149.0>--<545.0,888.0>>/B<<545.0,888.0>-<577.0,1025.0>-<670.0,1099.5>> = 13.147242375269487
	* m: L<<540.0,1149.0>--<540.0,899.0>>/B<<540.0,899.0>-<568.0,1029.0>-<652.5,1101.0>> = 12.154941697222226
	* n: L<<545.0,1149.0>--<545.0,888.0>>/B<<545.0,888.0>-<577.0,1025.0>-<670.0,1099.5>> = 13.147242375269487
	* nacute: L<<545.0,1149.0>--<545.0,888.0>>/B<<545.0,888.0>-<577.0,1025.0>-<670.0,1099.5>> = 13.147242375269487
	* ncaron: L<<545.0,1149.0>--<545.0,888.0>>/B<<545.0,888.0>-<577.0,1025.0>-<670.0,1099.5>> = 13.147242375269487
	* ntilde: L<<545.0,1149.0>--<545.0,888.0>>/B<<545.0,888.0>-<577.0,1025.0>-<670.0,1099.5>> = 13.147242375269487
	* u: L<<980.0,0.0>--<980.0,266.0>>/B<<980.0,266.0>-<948.0,127.0>-<855.0,51.5>> = 12.964508660419233
	* uacute: L<<980.0,0.0>--<980.0,266.0>>/B<<980.0,266.0>-<948.0,127.0>-<855.0,51.5>> = 12.964508660419233 and 25 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* k: L<<235.0,179.0>--<236.0,1398.0>> and uni0137: L<<235.0,179.0>--<236.0,1398.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab14pt-Thin.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 14pt Thin' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni01EA: X=1116.0,Y=-1.0 (should be at baseline 0?)
	* Q: X=1086.0,Y=-2.0 (should be at baseline 0?)
	* Uogonek: X=1103.0,Y=-1.0 (should be at baseline 0?)
	* eogonek: X=785.0,Y=-1.0 (should be at baseline 0?)
	* u: X=72.0,Y=1102.0 (should be at x-height 1100?)
	* u: X=306.0,Y=1102.0 (should be at x-height 1100?)
	* uni2082: X=597.0,Y=-1.5 (should be at baseline 0?)
	* uni2085: X=576.0,Y=-2.0 (should be at baseline 0?)
	* uni2086: X=381.0,Y=1.0 (should be at baseline 0?)
	* period: X=142.0,Y=1.5 (should be at baseline 0?) and 20 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft: B<<434.0,646.0>-<359.0,577.0>-<240.0,570.0>>/B<<240.0,570.0>-<359.0,563.0>-<434.0,494.0>> = 6.732921326859609
	* braceright: B<<489.5,494.0>-<564.0,563.0>-<683.0,570.0>>/B<<683.0,570.0>-<564.0,577.0>-<489.5,646.0>> = 6.732921326859609
	* eth: B<<909.5,1055.5>-<1022.0,995.0>-<1085.0,873.0>>/B<<1085.0,873.0>-<1049.0,1012.0>-<983.0,1126.0>> = 12.791384733230128
	* nine.dnom: B<<583.5,204.0>-<620.0,296.0>-<611.0,442.0>>/B<<611.0,442.0>-<601.0,371.0>-<536.5,316.0>> = 11.544561124029443
	* nine.lf: B<<1134.0,554.5>-<1172.0,746.0>-<1151.0,1023.0>>/B<<1151.0,1023.0>-<1140.0,816.0>-<1009.5,690.0>> = 7.377272242458543
	* nine.numr: B<<583.5,984.0>-<620.0,1076.0>-<611.0,1222.0>>/B<<611.0,1222.0>-<601.0,1151.0>-<536.5,1096.0>> = 11.544561124029443
	* nine: B<<1134.0,554.5>-<1172.0,746.0>-<1151.0,1023.0>>/B<<1151.0,1023.0>-<1140.0,816.0>-<1009.5,690.0>> = 7.377272242458543
	* six.dnom: B<<160.0,516.5>-<124.0,425.0>-<132.0,278.0>>/B<<132.0,278.0>-<142.0,349.0>-<206.5,404.0>> = 11.132157833560836
	* six.lf: B<<212.0,945.5>-<174.0,754.0>-<195.0,477.0>>/B<<195.0,477.0>-<206.0,684.0>-<336.5,810.0>> = 7.377272242458543
	* six.numr: B<<160.0,1296.5>-<124.0,1205.0>-<132.0,1058.0>>/B<<132.0,1058.0>-<142.0,1129.0>-<206.5,1184.0>> = 11.132157833560836 and 5 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Cdotaccent: X=619.0,Y=1798.0 (should be at ascender 1800?)
	* Cdotaccent: X=1051.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=572.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=1004.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=631.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=1063.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=238.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=670.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=669.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=1101.0,Y=1798.0 (should be at ascender 1800?) and 27 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1351.5,896.5>-<1256.0,810.0>-<1095.0,786.0>>/B<<1095.0,786.0>-<1298.0,770.0>-<1414.5,682.5>> = 12.98515885733826
	* R: L<<1042.0,708.0>--<947.0,708.0>>/B<<947.0,708.0>-<1100.0,697.0>-<1176.0,619.0>> = 4.112228844718457
	* Racute: L<<1042.0,708.0>--<947.0,708.0>>/B<<947.0,708.0>-<1100.0,697.0>-<1176.0,619.0>> = 4.112228844718457
	* Rcaron: L<<1042.0,708.0>--<947.0,708.0>>/B<<947.0,708.0>-<1100.0,697.0>-<1176.0,619.0>> = 4.112228844718457
	* braceleft: B<<461.5,643.0>-<371.0,602.0>-<240.0,590.0>>/B<<240.0,590.0>-<371.0,579.0>-<461.5,537.5>> = 10.033697761121097
	* braceright: B<<460.5,537.5>-<551.0,579.0>-<682.0,590.0>>/B<<682.0,590.0>-<551.0,602.0>-<460.5,643.0>> = 10.033697761121097
	* eng: L<<558.0,1140.0>--<558.0,901.0>>/B<<558.0,901.0>-<582.0,1025.0>-<663.0,1095.5>> = 10.954062643398332
	* m: L<<546.0,1140.0>--<546.0,902.0>>/B<<546.0,902.0>-<570.0,1025.0>-<649.0,1095.5>> = 11.04094018032372
	* n: L<<558.0,1140.0>--<558.0,901.0>>/B<<558.0,901.0>-<582.0,1025.0>-<663.0,1095.5>> = 10.954062643398332
	* nacute: L<<558.0,1140.0>--<558.0,901.0>>/B<<558.0,901.0>-<582.0,1025.0>-<663.0,1095.5>> = 10.954062643398332 and 35 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* k: L<<204.0,192.0>--<205.0,1308.0>>
	* k: L<<34.0,0.0>--<35.0,192.0>>
	* k: L<<605.0,1500.0>--<604.0,650.0>>
	* uni0137: L<<204.0,192.0>--<205.0,1308.0>>
	* uni0137: L<<34.0,0.0>--<35.0,192.0>> and uni0137: L<<605.0,1500.0>--<604.0,650.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-ExtraLight.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* A: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* A: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* Aacute: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* Aacute: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* Abreve: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* Abreve: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EAE: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EAE: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EB6: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EB6: X=876.0,Y=1501.0 (should be at cap-height 1500?) and 71 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1237.0,881.0>-<1150.0,792.0>-<995.0,769.0>>/B<<995.0,769.0>-<1177.0,754.0>-<1280.5,661.0>> = 13.151896221608181
	* R: L<<935.0,724.0>--<849.0,724.0>>/B<<849.0,724.0>-<974.0,695.0>-<1031.0,606.5>> = 13.0615510833281
	* Racute: L<<935.0,724.0>--<849.0,724.0>>/B<<849.0,724.0>-<974.0,695.0>-<1031.0,606.5>> = 13.0615510833281
	* Rcaron: L<<935.0,724.0>--<849.0,724.0>>/B<<849.0,724.0>-<974.0,695.0>-<1031.0,606.5>> = 13.0615510833281
	* a: L<<862.0,187.0>--<862.0,308.0>>/B<<862.0,308.0>-<820.0,136.0>-<708.5,59.5>> = 13.722297133133548
	* aacute: L<<862.0,187.0>--<862.0,308.0>>/B<<862.0,308.0>-<820.0,136.0>-<708.5,59.5>> = 13.722297133133548
	* abreve: L<<862.0,187.0>--<862.0,308.0>>/B<<862.0,308.0>-<820.0,136.0>-<708.5,59.5>> = 13.722297133133548
	* acircumflex: L<<862.0,187.0>--<862.0,308.0>>/B<<862.0,308.0>-<820.0,136.0>-<708.5,59.5>> = 13.722297133133548
	* adieresis: L<<862.0,187.0>--<862.0,308.0>>/B<<862.0,308.0>-<820.0,136.0>-<708.5,59.5>> = 13.722297133133548
	* agrave: L<<862.0,187.0>--<862.0,308.0>>/B<<862.0,308.0>-<820.0,136.0>-<708.5,59.5>> = 13.722297133133548 and 71 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* R: L<<997.0,214.0>--<996.0,392.0>>
	* Racute: L<<997.0,214.0>--<996.0,392.0>>
	* Rcaron: L<<997.0,214.0>--<996.0,392.0>>
	* dotlessi.ss01: L<<236.0,215.0>--<239.0,1031.0>>
	* i.loclTRK.ss01: L<<236.0,215.0>--<239.0,1031.0>>
	* i.ss01: L<<236.0,215.0>--<239.0,1031.0>>
	* iacute.ss01: L<<236.0,215.0>--<239.0,1031.0>>
	* icircumflex.ss01: L<<236.0,215.0>--<239.0,1031.0>>
	* idieresis.ss01: L<<236.0,215.0>--<239.0,1031.0>>
	* igrave.ss01: L<<236.0,215.0>--<239.0,1031.0>> and 20 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-Light.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Light' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1254.5,883.5>-<1166.0,795.0>-<1010.0,771.0>>/B<<1010.0,771.0>-<1196.0,756.0>-<1301.0,664.0>> = 13.35681158121582
	* R: L<<952.0,721.0>--<869.0,721.0>>/B<<869.0,721.0>-<996.0,695.0>-<1054.5,607.5>> = 11.569972047901999
	* Racute: L<<952.0,721.0>--<869.0,721.0>>/B<<869.0,721.0>-<996.0,695.0>-<1054.5,607.5>> = 11.569972047901999
	* Rcaron: L<<952.0,721.0>--<869.0,721.0>>/B<<869.0,721.0>-<996.0,695.0>-<1054.5,607.5>> = 11.569972047901999
	* a: L<<849.0,208.0>--<849.0,298.0>>/B<<849.0,298.0>-<808.0,131.0>-<700.0,56.0>> = 13.793808612176546
	* aacute: L<<849.0,208.0>--<849.0,298.0>>/B<<849.0,298.0>-<808.0,131.0>-<700.0,56.0>> = 13.793808612176546
	* abreve: L<<849.0,208.0>--<849.0,298.0>>/B<<849.0,298.0>-<808.0,131.0>-<700.0,56.0>> = 13.793808612176546
	* acircumflex: L<<849.0,208.0>--<849.0,298.0>>/B<<849.0,298.0>-<808.0,131.0>-<700.0,56.0>> = 13.793808612176546
	* adieresis: L<<849.0,208.0>--<849.0,298.0>>/B<<849.0,298.0>-<808.0,131.0>-<700.0,56.0>> = 13.793808612176546
	* agrave: L<<849.0,208.0>--<849.0,298.0>>/B<<849.0,298.0>-<808.0,131.0>-<700.0,56.0>> = 13.793808612176546 and 63 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* dotlessi.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* i.loclTRK.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* i.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* iacute.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* icircumflex.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* idieresis.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* igrave.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* imacron.ss01: L<<231.0,232.0>--<236.0,1018.0>>
	* l.ss01: L<<206.0,248.0>--<214.0,1422.0>>
	* lacute.ss01: L<<206.0,248.0>--<214.0,1422.0>> and 5 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 4	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 4	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Medium' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Acircumflex: X=856.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EA4: X=856.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EAC: X=856.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EA6: X=856.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EA8: X=856.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EAA: X=856.0,Y=1801.0 (should be at ascender 1800?)
	* uni0202: X=877.0,Y=1801.0 (should be at ascender 1800?)
	* Amacron: X=534.0,Y=1799.0 (should be at ascender 1800?)
	* Amacron: X=1219.0,Y=1799.0 (should be at ascender 1800?)
	* Ccircumflex: X=819.0,Y=1801.0 (should be at ascender 1800?) and 59 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---

This test looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).

This test is not run for variable fonts, as they may legitimately have short
segments. As this test is liable to generate significant numbers of false
positives, the test will pass if there are more than 100 reported short
segments.


</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* Aogonek contains a short segment B<<1489.0,-311.0>-<1516.0,-311.0>-<1534.5,-304.5>>
	* Aogonek contains a short segment B<<1534.5,-304.5>-<1553.0,-298.0>-<1574.0,-285.0>>
	* Ccedilla contains a short segment B<<881.0,-308.5>-<903.0,-290.0>-<903.0,-258.0>>
	* Ccedilla contains a short segment B<<903.0,-258.0>-<903.0,-229.0>-<882.5,-214.5>>
	* Ccedilla contains a short segment B<<882.5,-214.5>-<862.0,-200.0>-<831.0,-200.0>>
	* Ccedilla contains a short segment L<<854.0,-105.0>--<872.0,-105.0>>
	* Eogonek contains a short segment B<<1222.0,-286.0>-<1249.0,-311.0>-<1292.0,-311.0>>
	* Eogonek contains a short segment B<<1292.0,-311.0>-<1319.0,-311.0>-<1337.5,-304.5>>
	* Eogonek contains a short segment B<<1337.5,-304.5>-<1356.0,-298.0>-<1378.0,-285.0>>
	* Scedilla contains a short segment B<<870.0,-29.0>-<862.0,-29.0>-<855.0,-29.0>> and 64 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1305.5,890.5>-<1213.0,803.0>-<1054.0,779.0>>/B<<1054.0,779.0>-<1250.0,763.0>-<1361.0,673.5>> = 13.250479851552916
	* R: L<<999.0,714.0>--<919.0,714.0>>/B<<919.0,714.0>-<1055.0,695.0>-<1120.5,611.5>> = 7.953081971438419
	* Racute: L<<999.0,714.0>--<919.0,714.0>>/B<<919.0,714.0>-<1055.0,695.0>-<1120.5,611.5>> = 7.953081971438419
	* Rcaron: L<<999.0,714.0>--<919.0,714.0>>/B<<919.0,714.0>-<1055.0,695.0>-<1120.5,611.5>> = 7.953081971438419
	* a: L<<809.0,269.0>--<809.0,270.0>>/B<<809.0,270.0>-<772.0,118.0>-<674.0,47.5>> = 13.680925359319371
	* aacute: L<<809.0,269.0>--<809.0,270.0>>/B<<809.0,270.0>-<772.0,118.0>-<674.0,47.5>> = 13.680925359319371
	* abreve: L<<809.0,269.0>--<809.0,270.0>>/B<<809.0,270.0>-<772.0,118.0>-<674.0,47.5>> = 13.680925359319371
	* acircumflex: L<<809.0,269.0>--<809.0,270.0>>/B<<809.0,270.0>-<772.0,118.0>-<674.0,47.5>> = 13.680925359319371
	* adieresis: L<<809.0,269.0>--<809.0,270.0>>/B<<809.0,270.0>-<772.0,118.0>-<674.0,47.5>> = 13.680925359319371
	* agrave: L<<809.0,269.0>--<809.0,270.0>>/B<<809.0,270.0>-<772.0,118.0>-<674.0,47.5>> = 13.680925359319371 and 60 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* k: L<<221.0,138.0>--<222.0,1362.0>> and uni0137: L<<221.0,138.0>--<222.0,1362.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 4	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 4	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EA2: X=898.0,Y=1798.0 (should be at ascender 1800?)
	* Aring: X=631.0,Y=1802.0 (should be at ascender 1800?)
	* Aring: X=1093.0,Y=1802.0 (should be at ascender 1800?)
	* Aring: X=977.0,Y=1802.0 (should be at ascender 1800?)
	* Aring: X=748.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=631.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=1093.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=977.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=748.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EBA: X=812.0,Y=1798.0 (should be at ascender 1800?) and 29 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---

This test looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).

This test is not run for variable fonts, as they may legitimately have short
segments. As this test is liable to generate significant numbers of false
positives, the test will pass if there are more than 100 reported short
segments.


</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* Ccedilla contains a short segment B<<914.0,-262.0>-<914.0,-228.0>-<890.5,-212.0>>
	* Ccedilla contains a short segment B<<890.5,-212.0>-<867.0,-196.0>-<832.0,-196.0>>
	* Ccedilla contains a short segment L<<840.0,-117.0>--<862.0,-117.0>>
	* Eogonek contains a short segment B<<1269.0,-325.0>-<1299.0,-325.0>-<1320.0,-316.5>>
	* Eogonek contains a short segment B<<1320.0,-316.5>-<1341.0,-308.0>-<1366.0,-292.0>>
	* Eogonek contains a short segment B<<1402.0,-363.0>-<1376.0,-383.0>-<1333.5,-399.5>>
	* Eng contains a short segment B<<1094.5,-104.5>-<1128.0,-127.0>-<1128.0,-171.0>>
	* Scedilla contains a short segment B<<865.0,-28.0>-<854.0,-28.0>-<843.0,-27.0>>
	* Scedilla contains a short segment L<<831.0,-117.0>--<854.0,-117.0>>
	* Scedilla contains a short segment B<<880.0,-320.0>-<905.0,-299.0>-<905.0,-262.0>> and 82 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1280.5,887.0>-<1190.0,799.0>-<1033.0,775.0>>/B<<1033.0,775.0>-<1223.0,760.0>-<1331.5,669.0>> = 13.205295993886088
	* R: L<<976.0,718.0>--<895.0,718.0>>/B<<895.0,718.0>-<1027.0,694.0>-<1089.0,609.0>> = 10.304846468766009
	* Racute: L<<976.0,718.0>--<895.0,718.0>>/B<<895.0,718.0>-<1027.0,694.0>-<1089.0,609.0>> = 10.304846468766009
	* Rcaron: L<<976.0,718.0>--<895.0,718.0>>/B<<895.0,718.0>-<1027.0,694.0>-<1089.0,609.0>> = 10.304846468766009
	* a: L<<828.0,239.0>--<828.0,284.0>>/B<<828.0,284.0>-<790.0,124.0>-<687.0,51.5>> = 13.360218444764461
	* aacute: L<<828.0,239.0>--<828.0,284.0>>/B<<828.0,284.0>-<790.0,124.0>-<687.0,51.5>> = 13.360218444764461
	* abreve: L<<828.0,239.0>--<828.0,284.0>>/B<<828.0,284.0>-<790.0,124.0>-<687.0,51.5>> = 13.360218444764461
	* acircumflex: L<<828.0,239.0>--<828.0,284.0>>/B<<828.0,284.0>-<790.0,124.0>-<687.0,51.5>> = 13.360218444764461
	* adieresis: L<<828.0,239.0>--<828.0,284.0>>/B<<828.0,284.0>-<790.0,124.0>-<687.0,51.5>> = 13.360218444764461
	* agrave: L<<828.0,239.0>--<828.0,284.0>>/B<<828.0,284.0>-<790.0,124.0>-<687.0,51.5>> = 13.360218444764461 and 64 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: percent	Contours detected: 3	Expected: 5
Glyph name: perthousand	Contours detected: 5	Expected: 6 or 7
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt SemiBold' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* atilde: X=341.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EBD: X=328.0,Y=1501.0 (should be at cap-height 1500?)
	* itilde: X=76.5,Y=1501.0 (should be at cap-height 1500?)
	* ntilde: X=404.5,Y=1501.0 (should be at cap-height 1500?)
	* uni1EE1: X=381.0,Y=1501.0 (should be at cap-height 1500?)
	* otilde: X=381.0,Y=1501.0 (should be at cap-height 1500?)
	* uni022D: X=381.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EEF: X=370.0,Y=1501.0 (should be at cap-height 1500?)
	* utilde: X=370.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EF9: X=420.5,Y=1501.0 (should be at cap-height 1500?) and 4 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---

This test looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).

This test is not run for variable fonts, as they may legitimately have short
segments. As this test is liable to generate significant numbers of false
positives, the test will pass if there are more than 100 reported short
segments.


</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* Aogonek contains a short segment B<<1505.0,-300.0>-<1528.0,-300.0>-<1545.0,-294.5>>
	* Aogonek contains a short segment B<<1545.0,-294.5>-<1562.0,-289.0>-<1581.0,-278.0>>
	* AE contains a short segment L<<1432.0,862.0>--<1508.0,862.0>>
	* AEacute contains a short segment L<<1432.0,862.0>--<1508.0,862.0>>
	* Ccedilla contains a short segment B<<894.0,-255.0>-<894.0,-229.0>-<876.0,-216.5>>
	* Ccedilla contains a short segment B<<876.0,-216.5>-<858.0,-204.0>-<831.0,-204.0>>
	* Ccedilla contains a short segment L<<867.0,-96.0>--<881.0,-96.0>>
	* Eogonek contains a short segment B<<1243.0,-276.0>-<1270.0,-300.0>-<1311.0,-300.0>>
	* Eogonek contains a short segment B<<1311.0,-300.0>-<1335.0,-300.0>-<1352.0,-294.5>>
	* Eogonek contains a short segment B<<1352.0,-294.5>-<1369.0,-289.0>-<1387.0,-278.0>> and 64 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1326.5,893.0>-<1233.0,806.0>-<1073.0,782.0>>/B<<1073.0,782.0>-<1272.0,766.0>-<1385.5,677.5>> = 13.127573139657596
	* R: L<<1019.0,711.0>--<936.0,711.0>>/B<<936.0,711.0>-<1078.0,695.0>-<1147.5,614.0>> = 6.4287477488297915
	* Racute: L<<1019.0,711.0>--<936.0,711.0>>/B<<936.0,711.0>-<1078.0,695.0>-<1147.5,614.0>> = 6.4287477488297915
	* Rcaron: L<<1019.0,711.0>--<936.0,711.0>>/B<<936.0,711.0>-<1078.0,695.0>-<1147.5,614.0>> = 6.4287477488297915
	* braceleft: B<<439.5,635.5>-<354.0,596.0>-<232.0,586.0>>/B<<232.0,586.0>-<354.0,576.0>-<439.5,537.0>> = 9.37179967900539
	* braceright: B<<470.0,537.0>-<555.0,576.0>-<677.0,586.0>>/B<<677.0,586.0>-<555.0,596.0>-<470.0,635.5>> = 9.37179967900539
	* eng: L<<511.0,1129.0>--<511.0,878.0>>/B<<511.0,878.0>-<539.0,1010.0>-<625.5,1081.5>> = 11.976132444203333
	* m: L<<502.0,1129.0>--<502.0,897.0>>/B<<502.0,897.0>-<527.0,1019.0>-<606.5,1086.0>> = 11.5806191822281
	* n: L<<511.0,1129.0>--<511.0,878.0>>/B<<511.0,878.0>-<539.0,1010.0>-<625.5,1081.5>> = 11.976132444203333
	* nacute: L<<511.0,1129.0>--<511.0,878.0>>/B<<511.0,878.0>-<539.0,1010.0>-<625.5,1081.5>> = 11.976132444203333 and 35 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* k: L<<213.0,163.0>--<214.0,1337.0>>
	* k: L<<32.0,0.0>--<33.0,163.0>>
	* uni0137: L<<213.0,163.0>--<214.0,1337.0>> and uni0137: L<<32.0,0.0>--<33.0,163.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-Thin.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ampersand	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: approxequal	Contours detected: 0	Expected: 2
Glyph name: asciicircum	Contours detected: 0	Expected: 1
Glyph name: asciitilde	Contours detected: 0	Expected: 1
Glyph name: at	Contours detected: 0	Expected: 2
Glyph name: copyright	Contours detected: 0	Expected: 3
Glyph name: currency	Contours detected: 0	Expected: 2
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: greater	Contours detected: 0	Expected: 1
Glyph name: greaterequal	Contours detected: 0	Expected: 2
Glyph name: less	Contours detected: 0	Expected: 1
Glyph name: lessequal	Contours detected: 0	Expected: 2
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: logicalnot	Contours detected: 0	Expected: 1
Glyph name: multiply	Contours detected: 2	Expected: 1
Glyph name: notequal	Contours detected: 0	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: paragraph	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: registered	Contours detected: 0	Expected: 3 or 4
Glyph name: section	Contours detected: 0	Expected: 2
Glyph name: sterling	Contours detected: 0	Expected: 1 or 2
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni00B5	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni27E8	Contours detected: 0	Expected: 1
Glyph name: uni27E9	Contours detected: 0	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Thin' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni01EA: X=1057.0,Y=-1.0 (should be at baseline 0?)
	* Q: X=1060.0,Y=-1.0 (should be at baseline 0?)
	* Uogonek: X=1046.0,Y=-2.0 (should be at baseline 0?)
	* uni1EA9: X=866.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EA9: X=732.0,Y=1801.0 (should be at ascender 1800?)
	* aring: X=438.5,Y=1501.0 (should be at cap-height 1500?)
	* aring: X=693.5,Y=1501.0 (should be at cap-height 1500?)
	* aringacute: X=438.5,Y=1501.0 (should be at cap-height 1500?)
	* aringacute: X=693.5,Y=1501.0 (should be at cap-height 1500?)
	* uni1EC3: X=879.0,Y=1802.0 (should be at ascender 1800?) and 39 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<1219.0,878.5>-<1133.0,789.0>-<980.0,766.0>>/B<<980.0,766.0>-<1159.0,751.0>-<1260.0,657.5>> = 13.339207542781917
	* R: L<<919.0,726.0>--<829.0,726.0>>/B<<829.0,726.0>-<952.0,696.0>-<1007.5,606.0>> = 13.70696100407981
	* Racute: L<<919.0,726.0>--<829.0,726.0>>/B<<829.0,726.0>-<952.0,696.0>-<1007.5,606.0>> = 13.70696100407981
	* Rcaron: L<<919.0,726.0>--<829.0,726.0>>/B<<829.0,726.0>-<952.0,696.0>-<1007.5,606.0>> = 13.70696100407981
	* a: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322
	* aacute: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322
	* abreve: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322
	* acircumflex: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322
	* adieresis: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322
	* agrave: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322 and 69 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 81 | 1261 | 85 | 1108 | 0 |
| 0% | 0% | 3% | 50% | 3% | 44% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
