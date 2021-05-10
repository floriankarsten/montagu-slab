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
<summary><b>[7] MontaguSlab16pt-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* Cdotaccent: X=643.0,Y=1798.0 (should be at ascender 1800?)
	* Cdotaccent: X=1131.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=593.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=1081.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=623.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=1111.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=204.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=692.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=694.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=1182.0,Y=1798.0 (should be at ascender 1800?) and 23 more. [code: found-misalignments]

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
	* R: L<<1099.0,696.0>--<1065.0,696.0>>/B<<1065.0,696.0>-<1196.0,677.0>-<1250.5,591.5>> = 8.252529047136063
	* Racute: L<<1099.0,696.0>--<1065.0,696.0>>/B<<1065.0,696.0>-<1196.0,677.0>-<1250.5,591.5>> = 8.252529047136063
	* Rcaron: L<<1099.0,696.0>--<1065.0,696.0>>/B<<1065.0,696.0>-<1196.0,677.0>-<1250.5,591.5>> = 8.252529047136063
	* braceleft.case: B<<544.0,826.0>-<479.0,755.0>-<330.0,750.0>>/B<<330.0,750.0>-<479.0,745.0>-<544.0,674.0>> = 3.843911917862876
	* braceleft: B<<598.0,750.5>-<533.0,648.0>-<340.0,640.0>>/B<<340.0,640.0>-<533.0,633.0>-<598.0,530.0>> = 4.450770567399401
	* braceright.case: B<<318.5,674.0>-<384.0,745.0>-<532.0,750.0>>/B<<532.0,750.0>-<384.0,755.0>-<318.5,826.0>> = 3.869864619105556
	* braceright: B<<364.0,530.0>-<429.0,633.0>-<622.0,640.0>>/B<<622.0,640.0>-<429.0,648.0>-<364.0,750.5>> = 4.450770567399401
	* eng: L<<591.0,1160.0>--<591.0,900.0>>/B<<591.0,900.0>-<620.0,1030.0>-<711.5,1104.5>> = 12.575465499744425
	* eth: B<<813.5,1055.5>-<906.0,1005.0>-<956.0,886.0>>/B<<956.0,886.0>-<939.0,993.0>-<908.0,1083.0>> = 13.762977891069923
	* m: L<<585.0,1160.0>--<585.0,891.0>>/B<<585.0,891.0>-<609.0,1025.0>-<692.5,1101.5>> = 10.154266580200266 and 36 more. [code: found-jaggy-segments]

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
	* k: L<<623.0,1580.0>--<622.0,633.0>>
	* uni0137: L<<222.0,210.0>--<223.0,1370.0>> and uni0137: L<<623.0,1580.0>--<622.0,633.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-ExtraLight.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
 FONT_FAMILY_NAME = 'Montagu Slab 16pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* uni1EA2: X=1048.5,Y=1801.0 (should be at ascender 1800?)
	* uni1EBA: X=984.5,Y=1801.0 (should be at ascender 1800?)
	* uni1EC8: X=540.0,Y=1801.0 (should be at ascender 1800?)
	* uni1ECE: X=1088.0,Y=1801.0 (should be at ascender 1800?)
	* Ohorn: X=1720.0,Y=1502.0 (should be at cap-height 1500?)
	* uni1EDA: X=1720.0,Y=1502.0 (should be at cap-height 1500?)
	* uni1EE2: X=1720.0,Y=1502.0 (should be at cap-height 1500?)
	* uni1EDC: X=1720.0,Y=1502.0 (should be at cap-height 1500?)
	* uni1EDE: X=1088.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EDE: X=1720.0,Y=1502.0 (should be at cap-height 1500?) and 73 more. [code: found-misalignments]

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
	* braceleft.case: B<<397.5,819.5>-<335.0,756.0>-<226.0,750.0>>/B<<226.0,750.0>-<335.0,744.0>-<397.5,680.5>> = 6.301432826535456
	* braceleft: B<<435.0,713.0>-<367.0,638.0>-<243.0,631.0>>/B<<243.0,631.0>-<367.0,624.0>-<435.0,549.5>> = 6.462019800736384
	* braceright.case: B<<423.5,680.5>-<486.0,744.0>-<595.0,750.0>>/B<<595.0,750.0>-<486.0,756.0>-<423.5,819.5>> = 6.301432826535456
	* braceright: B<<465.5,549.5>-<534.0,624.0>-<658.0,631.0>>/B<<658.0,631.0>-<534.0,638.0>-<465.5,713.0>> = 6.462019800736384
	* eth: B<<897.5,1054.0>-<1008.0,993.0>-<1067.0,867.0>>/B<<1067.0,867.0>-<1034.0,1004.0>-<973.5,1116.5>> = 11.548353067229039
	* nine.lf: B<<1106.5,548.0>-<1142.0,726.0>-<1123.0,979.0>>/B<<1123.0,979.0>-<1106.0,791.0>-<982.0,676.0>> = 9.461732176690402
	* nine: B<<1106.5,548.0>-<1142.0,726.0>-<1123.0,979.0>>/B<<1123.0,979.0>-<1106.0,791.0>-<982.0,676.0>> = 9.461732176690402
	* six.lf: B<<263.5,952.0>-<228.0,774.0>-<247.0,521.0>>/B<<247.0,521.0>-<264.0,709.0>-<388.0,824.0>> = 9.461732176690402
	* six: B<<263.5,952.0>-<228.0,774.0>-<247.0,521.0>>/B<<247.0,521.0>-<264.0,709.0>-<388.0,824.0>> = 9.461732176690402 and yen: L<<803.0,593.0>--<668.0,780.0>>/L<<668.0,780.0>--<680.0,761.0>> = 3.5508202431404676 [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* i.loclTRK.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* i.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* iacute.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* icircumflex.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* idieresis.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* igrave.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* imacron.ss01: L<<265.0,222.0>--<269.0,1042.0>>
	* l.ss01: L<<258.0,231.0>--<263.0,1496.0>>
	* lacute.ss01: L<<258.0,231.0>--<263.0,1496.0>> and 5 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-Light.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
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
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
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
 FONT_FAMILY_NAME = 'Montagu Slab 16pt Light' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* uni1EA2: X=930.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EA2: X=1068.5,Y=1798.0 (should be at ascender 1800?)
	* Atilde: X=803.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EBA: X=861.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EBA: X=999.5,Y=1798.0 (should be at ascender 1800?)
	* uni1EBC: X=734.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EC8: X=426.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EC8: X=563.5,Y=1798.0 (should be at ascender 1800?)
	* Itilde: X=298.5,Y=1798.0 (should be at ascender 1800?)
	* Ntilde: X=841.5,Y=1798.0 (should be at ascender 1800?) and 61 more. [code: found-misalignments]

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
	* R: L<<1006.0,700.0>--<932.0,700.0>>/B<<932.0,700.0>-<1050.0,670.0>-<1103.0,581.0>> = 14.264512298079882
	* Racute: L<<1006.0,700.0>--<932.0,700.0>>/B<<932.0,700.0>-<1050.0,670.0>-<1103.0,581.0>> = 14.264512298079882
	* Rcaron: L<<1006.0,700.0>--<932.0,700.0>>/B<<932.0,700.0>-<1050.0,670.0>-<1103.0,581.0>> = 14.264512298079882
	* braceleft.case: B<<420.0,821.0>-<357.0,756.0>-<242.0,750.0>>/B<<242.0,750.0>-<357.0,744.0>-<420.0,679.0>> = 5.973273980950297
	* braceleft: B<<460.0,719.0>-<392.0,640.0>-<258.0,633.0>>/B<<258.0,633.0>-<392.0,626.0>-<460.0,547.0>> = 5.980689950330773
	* braceright.case: B<<407.5,679.0>-<470.0,744.0>-<585.0,750.0>>/B<<585.0,750.0>-<470.0,756.0>-<407.5,821.0>> = 5.973273980950297
	* braceright: B<<450.0,547.0>-<518.0,626.0>-<652.0,633.0>>/B<<652.0,633.0>-<518.0,640.0>-<450.0,719.0>> = 5.980689950330773
	* eth: B<<883.5,1054.5>-<991.0,996.0>-<1050.0,871.0>>/B<<1050.0,871.0>-<1020.0,1003.0>-<964.5,1111.5>> = 12.463044435052213
	* nine.lf: B<<1085.0,542.0>-<1119.0,709.0>-<1102.0,945.0>>/B<<1102.0,945.0>-<1080.0,772.0>-<961.0,665.0>> = 11.367390806004797
	* nine: B<<1085.0,542.0>-<1119.0,709.0>-<1102.0,945.0>>/B<<1102.0,945.0>-<1080.0,772.0>-<961.0,665.0>> = 11.367390806004797 and 7 more. [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* i.loclTRK.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* i.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* iacute.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* icircumflex.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* idieresis.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* igrave.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* imacron.ss01: L<<262.0,240.0>--<268.0,1030.0>>
	* l.ss01: L<<248.0,258.0>--<257.0,1479.0>>
	* lacute.ss01: L<<248.0,258.0>--<257.0,1479.0>> and 4 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[9] MontaguSlab16pt-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
 FONT_FAMILY_NAME = 'Montagu Slab 16pt Medium' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* uni1EA9: X=850.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EA3: X=550.0,Y=1502.0 (should be at cap-height 1500?)
	* uni1EC3: X=825.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EBB: X=525.0,Y=1502.0 (should be at cap-height 1500?)
	* g: X=932.0,Y=-1.0 (should be at baseline 0?)
	* g: X=454.0,Y=-1.0 (should be at baseline 0?)
	* gbreve: X=932.0,Y=-1.0 (should be at baseline 0?)
	* gbreve: X=454.0,Y=-1.0 (should be at baseline 0?)
	* gcaron: X=932.0,Y=-1.0 (should be at baseline 0?)
	* gcaron: X=454.0,Y=-1.0 (should be at baseline 0?) and 24 more. [code: found-misalignments]

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
	* Aogonek contains a short segment B<<1541.0,-297.0>-<1568.0,-297.0>-<1586.5,-290.5>>
	* Aogonek contains a short segment B<<1586.5,-290.5>-<1605.0,-284.0>-<1626.0,-271.0>>
	* Ccedilla contains a short segment B<<944.0,-259.0>-<944.0,-232.0>-<925.0,-219.0>>
	* Ccedilla contains a short segment B<<925.0,-219.0>-<906.0,-206.0>-<876.0,-206.0>>
	* Ccedilla contains a short segment L<<903.0,-104.0>--<918.0,-104.0>>
	* Eogonek contains a short segment B<<1281.0,-207.0>-<1281.0,-250.0>-<1308.0,-273.5>>
	* Eogonek contains a short segment B<<1308.0,-273.5>-<1335.0,-297.0>-<1378.0,-297.0>>
	* Eogonek contains a short segment B<<1378.0,-297.0>-<1404.0,-297.0>-<1422.5,-290.5>>
	* Eogonek contains a short segment B<<1422.5,-290.5>-<1441.0,-284.0>-<1462.0,-271.0>>
	* Scedilla contains a short segment B<<929.0,-25.0>-<914.0,-25.0>-<900.0,-25.0>> and 69 more. [code: found-short-segments]

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
	* R: L<<1055.0,698.0>--<1005.0,698.0>>/B<<1005.0,698.0>-<1128.0,673.0>-<1181.5,586.0>> = 11.488981202159193
	* Racute: L<<1055.0,698.0>--<1005.0,698.0>>/B<<1005.0,698.0>-<1128.0,673.0>-<1181.5,586.0>> = 11.488981202159193
	* Rcaron: L<<1055.0,698.0>--<1005.0,698.0>>/B<<1005.0,698.0>-<1128.0,673.0>-<1181.5,586.0>> = 11.488981202159193
	* braceleft.case: B<<485.5,824.0>-<421.0,756.0>-<289.0,750.0>>/B<<289.0,750.0>-<421.0,744.0>-<485.5,676.0>> = 5.205124404999463
	* braceleft: B<<532.5,735.5>-<466.0,644.0>-<301.0,637.0>>/B<<301.0,637.0>-<466.0,629.0>-<532.5,537.5>> = 5.205076772283028
	* braceright.case: B<<360.5,676.0>-<425.0,744.0>-<557.0,750.0>>/B<<557.0,750.0>-<425.0,756.0>-<360.5,824.0>> = 5.205124404999463
	* braceright: B<<404.5,537.5>-<471.0,629.0>-<636.0,637.0>>/B<<636.0,637.0>-<471.0,644.0>-<404.5,735.5>> = 5.205076772283028
	* eng: L<<513.0,1140.0>--<513.0,861.0>>/B<<513.0,861.0>-<549.0,1006.0>-<649.0,1082.0>> = 13.943230920553672
	* eth: B<<846.5,1055.0>-<946.0,1001.0>-<1000.0,879.0>>/B<<1000.0,879.0>-<977.0,998.0>-<935.5,1096.5>> = 12.936189670735347
	* m: L<<509.0,1139.0>--<509.0,889.0>>/B<<509.0,889.0>-<540.0,1018.0>-<626.0,1087.5>> = 13.512530635785994 and 36 more. [code: found-jaggy-segments]

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
	* k: L<<245.0,149.0>--<246.0,1424.0>> and uni0137: L<<245.0,149.0>--<246.0,1424.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* Abreve: X=742.5,Y=1802.0 (should be at ascender 1800?)
	* Abreve: X=1055.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EAE: X=742.5,Y=1802.0 (should be at ascender 1800?)
	* uni1EAE: X=1055.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EB6: X=742.5,Y=1802.0 (should be at ascender 1800?)
	* uni1EB6: X=1055.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EB0: X=742.5,Y=1802.0 (should be at ascender 1800?)
	* uni1EB0: X=1055.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EB2: X=742.5,Y=1802.0 (should be at ascender 1800?)
	* uni1EB2: X=1055.0,Y=1802.0 (should be at ascender 1800?) and 84 more. [code: found-misalignments]

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
	* Ccedilla contains a short segment B<<959.0,-262.0>-<959.0,-230.0>-<937.0,-215.0>>
	* Ccedilla contains a short segment B<<937.0,-215.0>-<915.0,-200.0>-<880.0,-200.0>>
	* Ccedilla contains a short segment L<<892.0,-115.0>--<912.0,-115.0>>
	* Eogonek contains a short segment B<<1352.0,-314.0>-<1382.0,-314.0>-<1402.5,-306.0>>
	* Eogonek contains a short segment B<<1402.5,-306.0>-<1423.0,-298.0>-<1447.0,-282.0>>
	* Scedilla contains a short segment B<<918.0,-25.0>-<901.0,-25.0>-<885.0,-24.0>>
	* Scedilla contains a short segment L<<873.0,-115.0>--<893.0,-115.0>>
	* Scedilla contains a short segment B<<940.0,-262.0>-<940.0,-230.0>-<918.0,-215.0>>
	* Scedilla contains a short segment B<<918.0,-215.0>-<896.0,-200.0>-<861.0,-200.0>>
	* uni0162 contains a short segment L<<902.0,-115.0>--<922.0,-115.0>> and 72 more. [code: found-short-segments]

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
	* R: L<<1031.0,699.0>--<969.0,699.0>>/B<<969.0,699.0>-<1090.0,672.0>-<1143.0,584.0>> = 12.578935237493035
	* Racute: L<<1031.0,699.0>--<969.0,699.0>>/B<<969.0,699.0>-<1090.0,672.0>-<1143.0,584.0>> = 12.578935237493035
	* Rcaron: L<<1031.0,699.0>--<969.0,699.0>>/B<<969.0,699.0>-<1090.0,672.0>-<1143.0,584.0>> = 12.578935237493035
	* braceleft.case: B<<453.5,822.5>-<390.0,756.0>-<266.0,750.0>>/B<<266.0,750.0>-<390.0,744.0>-<453.5,677.5>> = 5.540431594400349
	* braceleft: B<<497.0,727.5>-<430.0,642.0>-<280.0,635.0>>/B<<280.0,635.0>-<430.0,628.0>-<497.0,542.5>> = 5.343729186545131
	* braceright.case: B<<383.5,677.5>-<447.0,744.0>-<571.0,750.0>>/B<<571.0,750.0>-<447.0,756.0>-<383.5,822.5>> = 5.540431594400349
	* braceright: B<<427.0,542.5>-<494.0,628.0>-<644.0,635.0>>/B<<644.0,635.0>-<494.0,642.0>-<427.0,727.5>> = 5.343729186545131
	* eth: B<<864.5,1055.0>-<968.0,999.0>-<1024.0,876.0>>/B<<1024.0,876.0>-<998.0,1001.0>-<950.0,1104.0>> = 12.72905741338642
	* uni0156: L<<1031.0,699.0>--<969.0,699.0>>/B<<969.0,699.0>-<1090.0,672.0>-<1143.0,584.0>> = 12.578935237493035
	* uni0210: L<<1031.0,699.0>--<969.0,699.0>>/B<<969.0,699.0>-<1090.0,672.0>-<1143.0,584.0>> = 12.578935237493035 and 3 more. [code: found-jaggy-segments]

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
	* k: L<<258.0,116.0>--<259.0,1453.0>> and uni0137: L<<258.0,116.0>--<259.0,1453.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[9] MontaguSlab16pt-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
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
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
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
 FONT_FAMILY_NAME = 'Montagu Slab 16pt SemiBold' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* eth: X=624.5,Y=1498.0 (should be at cap-height 1500?)
	* v: X=559.0,Y=-2.0 (should be at baseline 0?)
	* v: X=842.0,Y=-2.0 (should be at baseline 0?)
	* w: X=520.0,Y=-2.0 (should be at baseline 0?)
	* w: X=1507.0,Y=-2.0 (should be at baseline 0?)
	* w: X=1236.0,Y=-2.0 (should be at baseline 0?)
	* w: X=793.0,Y=-2.0 (should be at baseline 0?)
	* wacute: X=520.0,Y=-2.0 (should be at baseline 0?)
	* wacute: X=1507.0,Y=-2.0 (should be at baseline 0?)
	* wacute: X=1236.0,Y=-2.0 (should be at baseline 0?) and 26 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* uhorn: L<<811.0,1149.0>--<1253.0,1149.0>> -> L<<1253.0,1149.0>--<1253.0,1149.0>>
	* uni1EE9: L<<811.0,1149.0>--<1253.0,1149.0>> -> L<<1253.0,1149.0>--<1253.0,1149.0>>
	* uni1EEB: L<<811.0,1149.0>--<1253.0,1149.0>> -> L<<1253.0,1149.0>--<1253.0,1149.0>>
	* uni1EED: L<<811.0,1149.0>--<1253.0,1149.0>> -> L<<1253.0,1149.0>--<1253.0,1149.0>>
	* uni1EEF: L<<811.0,1149.0>--<1253.0,1149.0>> -> L<<1253.0,1149.0>--<1253.0,1149.0>> and uni1EF1: L<<811.0,1149.0>--<1253.0,1149.0>> -> L<<1253.0,1149.0>--<1253.0,1149.0>> [code: found-colinear-vectors]

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
	* R: L<<1075.0,697.0>--<1033.0,697.0>>/B<<1033.0,697.0>-<1160.0,675.0>-<1213.5,588.5>> = 9.827724011163108
	* Racute: L<<1075.0,697.0>--<1033.0,697.0>>/B<<1033.0,697.0>-<1160.0,675.0>-<1213.5,588.5>> = 9.827724011163108
	* Rcaron: L<<1075.0,697.0>--<1033.0,697.0>>/B<<1033.0,697.0>-<1160.0,675.0>-<1213.5,588.5>> = 9.827724011163108
	* braceleft.case: B<<512.5,825.0>-<448.0,756.0>-<308.0,750.0>>/B<<308.0,750.0>-<448.0,744.0>-<512.5,675.0>> = 4.908063349054138
	* braceleft: B<<563.0,742.5>-<497.0,646.0>-<319.0,638.0>>/B<<319.0,638.0>-<497.0,631.0>-<563.0,534.5>> = 4.825403808579327
	* braceright.case: B<<341.0,675.0>-<406.0,744.0>-<546.0,750.0>>/B<<546.0,750.0>-<406.0,756.0>-<341.0,825.0>> = 4.908063349054138
	* braceright: B<<386.0,534.5>-<452.0,631.0>-<630.0,638.0>>/B<<630.0,638.0>-<452.0,646.0>-<386.0,742.5>> = 4.825403808579327
	* eng: L<<549.0,1149.0>--<549.0,879.0>>/B<<549.0,879.0>-<582.0,1017.0>-<678.0,1092.5>> = 13.448615051686525
	* eth: B<<831.0,1055.5>-<927.0,1003.0>-<979.0,882.0>>/B<<979.0,882.0>-<960.0,996.0>-<923.5,1090.5>> = 13.79339269298903
	* m: L<<544.0,1149.0>--<544.0,891.0>>/B<<544.0,891.0>-<572.0,1022.0>-<657.0,1094.5>> = 12.06488441052542 and 36 more. [code: found-jaggy-segments]

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
	* k: L<<235.0,177.0>--<236.0,1399.0>>
	* k: L<<572.0,1576.0>--<571.0,602.0>>
	* uni0137: L<<235.0,177.0>--<236.0,1399.0>> and uni0137: L<<572.0,1576.0>--<571.0,602.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-Thin.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
 FONT_FAMILY_NAME = 'Montagu Slab 16pt Thin' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* Q: X=1154.0,Y=-2.0 (should be at baseline 0?)
	* Uhorn: X=1699.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EE8: X=1699.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EF0: X=1699.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EEA: X=1699.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EEC: X=1699.0,Y=1799.0 (should be at ascender 1800?)
	* uni1EEE: X=1699.0,Y=1799.0 (should be at ascender 1800?)
	* Uogonek: X=1124.0,Y=-1.0 (should be at baseline 0?)
	* uni1EA3: X=774.0,Y=1498.0 (should be at cap-height 1500?)
	* uni1EA3: X=554.0,Y=1498.0 (should be at cap-height 1500?) and 41 more. [code: found-misalignments]

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
	* braceleft.case: B<<375.5,818.5>-<314.0,756.0>-<210.0,750.0>>/B<<210.0,750.0>-<314.0,744.0>-<375.5,681.5>> = 6.603731348869935
	* braceleft: B<<409.5,707.5>-<341.0,637.0>-<228.0,630.0>>/B<<228.0,630.0>-<341.0,623.0>-<409.5,553.0>> = 7.089532911189703
	* braceright.case: B<<440.0,681.5>-<502.0,744.0>-<605.0,750.0>>/B<<605.0,750.0>-<502.0,756.0>-<440.0,818.5>> = 6.667701323073103
	* braceright: B<<481.5,553.0>-<550.0,623.0>-<663.0,630.0>>/B<<663.0,630.0>-<550.0,637.0>-<481.5,707.5>> = 7.089532911189703
	* eth: B<<910.5,1053.5>-<1024.0,991.0>-<1085.0,864.0>>/B<<1085.0,864.0>-<1049.0,1006.0>-<982.5,1121.5>> = 11.42970682912706
	* nine.dnom: B<<582.0,204.5>-<618.0,295.0>-<610.0,439.0>>/B<<610.0,439.0>-<600.0,369.0>-<536.0,315.5>> = 11.309932474020162
	* nine.lf: B<<1128.5,553.5>-<1166.0,742.0>-<1145.0,1014.0>>/B<<1145.0,1014.0>-<1132.0,811.0>-<1003.0,687.0>> = 8.078997569467882
	* nine.numr: B<<582.0,981.5>-<618.0,1072.0>-<610.0,1216.0>>/B<<610.0,1216.0>-<600.0,1146.0>-<536.0,1092.5>> = 11.309932474020162
	* nine: B<<1128.5,553.5>-<1166.0,742.0>-<1145.0,1014.0>>/B<<1145.0,1014.0>-<1132.0,811.0>-<1003.0,687.0>> = 8.078997569467882
	* six.dnom: B<<167.5,518.5>-<132.0,428.0>-<140.0,284.0>>/B<<140.0,284.0>-<151.0,354.0>-<214.5,407.5>> = 12.110420220283205 and 8 more. [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* i.loclTRK.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* i.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* iacute.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* icircumflex.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* idieresis.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* igrave.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* imacron.ss01: L<<268.0,203.0>--<269.0,1054.0>>
	* l.ss01: L<<268.0,205.0>--<269.0,1513.0>>
	* lacute.ss01: L<<268.0,205.0>--<269.0,1513.0>> and 12 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: c	Contours detected: 2	Expected: 1
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
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
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* B: B<<1392.5,896.5>-<1298.0,810.0>-<1139.0,786.0>>/B<<1139.0,786.0>-<1341.0,769.0>-<1456.0,681.5>> = 13.394207674479551
	* braceleft.case: B<<545.0,837.5>-<479.0,755.0>-<312.0,750.0>>/B<<312.0,750.0>-<479.0,745.0>-<545.0,662.5>> = 3.4298603910528938
	* braceleft: B<<503.0,654.0>-<418.0,605.0>-<262.0,600.0>>/B<<262.0,600.0>-<418.0,595.0>-<503.0,546.0>> = 3.6715494810911826
	* braceright.case: B<<335.5,662.5>-<402.0,745.0>-<568.0,750.0>>/B<<568.0,750.0>-<402.0,755.0>-<335.5,837.5>> = 3.4505097509451392
	* braceright: B<<457.0,546.0>-<542.0,595.0>-<698.0,600.0>>/B<<698.0,600.0>-<542.0,605.0>-<457.0,654.0>> = 3.6715494810911826
	* eng: L<<558.0,1140.0>--<558.0,870.0>>/B<<558.0,870.0>-<578.0,1005.0>-<657.0,1082.5>> = 8.426969021480678
	* eth: B<<730.0,1075.5>-<811.0,1035.0>-<853.0,935.0>>/B<<853.0,935.0>-<814.0,1112.0>-<722.0,1257.0>> = 10.356462865054173
	* m: L<<546.0,1140.0>--<546.0,869.0>>/B<<546.0,869.0>-<565.0,1004.0>-<641.5,1082.0>> = 8.01123161285598
	* n: L<<558.0,1140.0>--<558.0,870.0>>/B<<558.0,870.0>-<578.0,1005.0>-<657.0,1082.5>> = 8.426969021480678
	* nacute: L<<558.0,1140.0>--<558.0,870.0>>/B<<558.0,870.0>-<578.0,1005.0>-<657.0,1082.5>> = 8.426969021480678 and 30 more. [code: found-jaggy-segments]

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
	* k: L<<605.0,1500.0>--<604.0,647.0>>
	* uni0137: L<<204.0,192.0>--<205.0,1308.0>>
	* uni0137: L<<34.0,0.0>--<35.0,192.0>> and uni0137: L<<605.0,1500.0>--<604.0,647.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab144pt-ExtraLight.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* uni1EB6: X=876.0,Y=1501.0 (should be at cap-height 1500?) and 69 more. [code: found-misalignments]

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
	* B: B<<1242.5,881.0>-<1156.0,792.0>-<1002.0,769.0>>/B<<1002.0,769.0>-<1183.0,753.0>-<1286.0,660.0>> = 13.546065133571405
	* R: L<<934.0,725.0>--<845.0,725.0>>/B<<845.0,725.0>-<972.0,697.0>-<1029.5,608.0>> = 12.433235188095638
	* Racute: L<<934.0,725.0>--<845.0,725.0>>/B<<845.0,725.0>-<972.0,697.0>-<1029.5,608.0>> = 12.433235188095638
	* Rcaron: L<<934.0,725.0>--<845.0,725.0>>/B<<845.0,725.0>-<972.0,697.0>-<1029.5,608.0>> = 12.433235188095638
	* a: L<<865.0,187.0>--<865.0,309.0>>/B<<865.0,309.0>-<823.0,137.0>-<711.0,60.0>> = 13.722297133133548
	* aacute: L<<865.0,187.0>--<865.0,309.0>>/B<<865.0,309.0>-<823.0,137.0>-<711.0,60.0>> = 13.722297133133548
	* abreve: L<<865.0,187.0>--<865.0,309.0>>/B<<865.0,309.0>-<823.0,137.0>-<711.0,60.0>> = 13.722297133133548
	* acircumflex: L<<865.0,187.0>--<865.0,309.0>>/B<<865.0,309.0>-<823.0,137.0>-<711.0,60.0>> = 13.722297133133548
	* adieresis: L<<865.0,187.0>--<865.0,309.0>>/B<<865.0,309.0>-<823.0,137.0>-<711.0,60.0>> = 13.722297133133548
	* agrave: L<<865.0,187.0>--<865.0,309.0>>/B<<865.0,309.0>-<823.0,137.0>-<711.0,60.0>> = 13.722297133133548 and 73 more. [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* i.loclTRK.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* i.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* iacute.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* icircumflex.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* idieresis.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* igrave.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* imacron.ss01: L<<236.0,215.0>--<239.0,1032.0>>
	* l.ss01: L<<214.0,223.0>--<218.0,1444.0>>
	* lacute.ss01: L<<214.0,223.0>--<218.0,1444.0>> and 12 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Light.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
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
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* B: B<<1265.5,883.5>-<1178.0,795.0>-<1023.0,771.0>>/B<<1023.0,771.0>-<1208.0,755.0>-<1312.5,663.0>> = 13.744719041821336
	* R: L<<949.0,724.0>--<859.0,724.0>>/B<<859.0,724.0>-<990.0,698.0>-<1051.0,610.0>> = 11.22579776281439
	* Racute: L<<949.0,724.0>--<859.0,724.0>>/B<<859.0,724.0>-<990.0,698.0>-<1051.0,610.0>> = 11.22579776281439
	* Rcaron: L<<949.0,724.0>--<859.0,724.0>>/B<<859.0,724.0>-<990.0,698.0>-<1051.0,610.0>> = 11.22579776281439
	* a: L<<854.0,208.0>--<854.0,301.0>>/B<<854.0,301.0>-<813.0,133.0>-<703.5,57.0>> = 13.714811891878439
	* aacute: L<<854.0,208.0>--<854.0,301.0>>/B<<854.0,301.0>-<813.0,133.0>-<703.5,57.0>> = 13.714811891878439
	* abreve: L<<854.0,208.0>--<854.0,301.0>>/B<<854.0,301.0>-<813.0,133.0>-<703.5,57.0>> = 13.714811891878439
	* acircumflex: L<<854.0,208.0>--<854.0,301.0>>/B<<854.0,301.0>-<813.0,133.0>-<703.5,57.0>> = 13.714811891878439
	* adieresis: L<<854.0,208.0>--<854.0,301.0>>/B<<854.0,301.0>-<813.0,133.0>-<703.5,57.0>> = 13.714811891878439
	* agrave: L<<854.0,208.0>--<854.0,301.0>>/B<<854.0,301.0>-<813.0,133.0>-<703.5,57.0>> = 13.714811891878439 and 65 more. [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* i.loclTRK.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* i.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* iacute.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* icircumflex.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* idieresis.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* igrave.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* imacron.ss01: L<<231.0,231.0>--<237.0,1021.0>>
	* l.ss01: L<<207.0,247.0>--<215.0,1425.0>>
	* lacute.ss01: L<<207.0,247.0>--<215.0,1425.0>> and 5 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[9] MontaguSlab144pt-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: c	Contours detected: 2	Expected: 1
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
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
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
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
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Medium' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* Acircumflex: X=855.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EA4: X=855.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EAC: X=855.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EA6: X=855.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EA8: X=855.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EAA: X=855.0,Y=1801.0 (should be at ascender 1800?)
	* uni0202: X=875.0,Y=1801.0 (should be at ascender 1800?)
	* Amacron: X=534.0,Y=1799.0 (should be at ascender 1800?)
	* Amacron: X=1218.0,Y=1799.0 (should be at ascender 1800?)
	* Ccircumflex: X=819.0,Y=1801.0 (should be at ascender 1800?) and 50 more. [code: found-misalignments]

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
	* Aogonek contains a short segment B<<1488.0,-312.0>-<1515.0,-312.0>-<1533.5,-305.0>>
	* Aogonek contains a short segment B<<1533.5,-305.0>-<1552.0,-298.0>-<1574.0,-285.0>>
	* Ccedilla contains a short segment B<<903.0,-258.0>-<903.0,-229.0>-<882.5,-214.5>>
	* Ccedilla contains a short segment B<<882.5,-214.5>-<862.0,-200.0>-<831.0,-200.0>>
	* Ccedilla contains a short segment L<<855.0,-105.0>--<872.0,-105.0>>
	* Eogonek contains a short segment B<<1292.0,-312.0>-<1319.0,-312.0>-<1337.5,-305.0>>
	* Eogonek contains a short segment B<<1337.5,-305.0>-<1356.0,-298.0>-<1378.0,-285.0>>
	* Scedilla contains a short segment B<<873.0,-29.0>-<866.0,-29.0>-<859.0,-29.0>>
	* Scedilla contains a short segment L<<850.0,-105.0>--<867.0,-105.0>>
	* Scedilla contains a short segment B<<898.0,-258.0>-<898.0,-229.0>-<877.5,-214.5>> and 60 more. [code: found-short-segments]

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
	* B: B<<1332.5,890.5>-<1241.0,803.0>-<1085.0,779.0>>/B<<1085.0,779.0>-<1278.0,762.0>-<1388.0,672.5>> = 13.779949218755245
	* R: L<<993.0,722.0>--<890.0,722.0>>/B<<890.0,722.0>-<1039.0,704.0>-<1111.0,618.5>> = 6.888258276994703
	* Racute: L<<993.0,722.0>--<890.0,722.0>>/B<<890.0,722.0>-<1039.0,704.0>-<1111.0,618.5>> = 6.888258276994703
	* Rcaron: L<<993.0,722.0>--<890.0,722.0>>/B<<890.0,722.0>-<1039.0,704.0>-<1111.0,618.5>> = 6.888258276994703
	* a: L<<822.0,269.0>--<822.0,274.0>>/B<<822.0,274.0>-<785.0,120.0>-<683.0,48.5>> = 13.50980395328139
	* aacute: L<<822.0,269.0>--<822.0,274.0>>/B<<822.0,274.0>-<785.0,120.0>-<683.0,48.5>> = 13.50980395328139
	* abreve: L<<822.0,269.0>--<822.0,274.0>>/B<<822.0,274.0>-<785.0,120.0>-<683.0,48.5>> = 13.50980395328139
	* acircumflex: L<<822.0,269.0>--<822.0,274.0>>/B<<822.0,274.0>-<785.0,120.0>-<683.0,48.5>> = 13.50980395328139
	* adieresis: L<<822.0,269.0>--<822.0,274.0>>/B<<822.0,274.0>-<785.0,120.0>-<683.0,48.5>> = 13.50980395328139
	* agrave: L<<822.0,269.0>--<822.0,274.0>>/B<<822.0,274.0>-<785.0,120.0>-<683.0,48.5>> = 13.50980395328139 and 75 more. [code: found-jaggy-segments]

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
	* k: L<<221.0,135.0>--<222.0,1365.0>>
	* k: L<<28.0,0.0>--<29.0,135.0>>
	* k: L<<500.0,1500.0>--<499.0,580.0>>
	* uni0137: L<<221.0,135.0>--<222.0,1365.0>>
	* uni0137: L<<28.0,0.0>--<29.0,135.0>> and uni0137: L<<500.0,1500.0>--<499.0,580.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: c	Contours detected: 2	Expected: 1
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
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
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* uni1EA2: X=897.0,Y=1798.0 (should be at ascender 1800?)
	* Aring: X=631.0,Y=1801.0 (should be at ascender 1800?)
	* Aring: X=1092.0,Y=1801.0 (should be at ascender 1800?)
	* Aring: X=976.0,Y=1801.0 (should be at ascender 1800?)
	* Aring: X=747.0,Y=1801.0 (should be at ascender 1800?)
	* Aringacute: X=631.0,Y=1801.0 (should be at ascender 1800?)
	* Aringacute: X=1092.0,Y=1801.0 (should be at ascender 1800?)
	* Aringacute: X=976.0,Y=1801.0 (should be at ascender 1800?)
	* Aringacute: X=747.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EBA: X=812.0,Y=1798.0 (should be at ascender 1800?) and 26 more. [code: found-misalignments]

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
	* B: B<<1299.5,887.0>-<1210.0,799.0>-<1056.0,775.0>>/B<<1056.0,775.0>-<1244.0,759.0>-<1351.0,668.0>> = 13.72247320138883
	* R: L<<971.0,723.0>--<877.0,723.0>>/B<<877.0,723.0>-<1016.0,701.0>-<1082.0,614.0>> = 8.993792398755563
	* Racute: L<<971.0,723.0>--<877.0,723.0>>/B<<877.0,723.0>-<1016.0,701.0>-<1082.0,614.0>> = 8.993792398755563
	* Rcaron: L<<971.0,723.0>--<877.0,723.0>>/B<<877.0,723.0>-<1016.0,701.0>-<1082.0,614.0>> = 8.993792398755563
	* a: L<<838.0,239.0>--<838.0,289.0>>/B<<838.0,289.0>-<799.0,127.0>-<693.5,53.0>> = 13.535856369134248
	* aacute: L<<838.0,239.0>--<838.0,289.0>>/B<<838.0,289.0>-<799.0,127.0>-<693.5,53.0>> = 13.535856369134248
	* abreve: L<<838.0,239.0>--<838.0,289.0>>/B<<838.0,289.0>-<799.0,127.0>-<693.5,53.0>> = 13.535856369134248
	* acircumflex: L<<838.0,239.0>--<838.0,289.0>>/B<<838.0,289.0>-<799.0,127.0>-<693.5,53.0>> = 13.535856369134248
	* adieresis: L<<838.0,239.0>--<838.0,289.0>>/B<<838.0,289.0>-<799.0,127.0>-<693.5,53.0>> = 13.535856369134248
	* agrave: L<<838.0,239.0>--<838.0,289.0>>/B<<838.0,289.0>-<799.0,127.0>-<693.5,53.0>> = 13.535856369134248 and 79 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[9] MontaguSlab144pt-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
Glyph name: c	Contours detected: 2	Expected: 1
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
Glyph name: germandbls	Contours detected: 0	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: uni018F	Contours detected: 0	Expected: 2
Glyph name: uni1E9E	Contours detected: 0	Expected: 1
Glyph name: dagger	Contours detected: 0	Expected: 1 or 2
Glyph name: daggerdbl	Contours detected: 0	Expected: 1 or 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 0	Expected: 1
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
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
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
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
Glyph name: uni20A6	Contours detected: 4	Expected: 1, 3 or 5
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* uni01C8: X=1998.0,Y=1.0 (should be at baseline 0?)
	* uni01CB: X=2247.0,Y=1.0 (should be at baseline 0?)
	* Q: X=1177.0,Y=2.0 (should be at baseline 0?)
	* atilde: X=349.0,Y=1501.0 (should be at cap-height 1500?)
	* eogonek: X=827.0,Y=2.0 (should be at baseline 0?)
	* uni1EBD: X=328.0,Y=1501.0 (should be at cap-height 1500?)
	* itilde: X=76.0,Y=1501.0 (should be at cap-height 1500?)
	* j: X=565.0,Y=1.0 (should be at baseline 0?)
	* uni0237: X=565.0,Y=1.0 (should be at baseline 0?)
	* jcircumflex: X=565.0,Y=1.0 (should be at baseline 0?) and 14 more. [code: found-misalignments]

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
	* Aogonek contains a short segment B<<1503.0,-300.0>-<1527.0,-300.0>-<1544.0,-294.5>>
	* Aogonek contains a short segment B<<1544.0,-294.5>-<1561.0,-289.0>-<1579.0,-278.0>>
	* AE contains a short segment L<<1403.0,857.0>--<1480.0,857.0>>
	* AEacute contains a short segment L<<1403.0,857.0>--<1480.0,857.0>>
	* Ccedilla contains a short segment B<<894.0,-255.0>-<894.0,-229.0>-<876.0,-216.5>>
	* Ccedilla contains a short segment B<<876.0,-216.5>-<858.0,-204.0>-<831.0,-204.0>>
	* Ccedilla contains a short segment L<<867.0,-95.0>--<881.0,-95.0>>
	* Eogonek contains a short segment B<<1243.0,-276.0>-<1270.0,-300.0>-<1311.0,-300.0>>
	* Eogonek contains a short segment B<<1311.0,-300.0>-<1335.0,-300.0>-<1352.0,-294.5>>
	* Eogonek contains a short segment B<<1352.0,-294.5>-<1369.0,-289.0>-<1388.0,-278.0>> and 68 more. [code: found-short-segments]

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
	* B: B<<1360.5,893.0>-<1268.0,806.0>-<1110.0,782.0>>/B<<1110.0,782.0>-<1307.0,765.0>-<1419.5,676.5>> = 13.569218843335623
	* R: L<<1011.0,721.0>--<894.0,721.0>>/B<<894.0,721.0>-<1055.0,708.0>-<1133.5,624.5>> = 4.616352093550998
	* Racute: L<<1011.0,721.0>--<894.0,721.0>>/B<<894.0,721.0>-<1055.0,708.0>-<1133.5,624.5>> = 4.616352093550998
	* Rcaron: L<<1011.0,721.0>--<894.0,721.0>>/B<<894.0,721.0>-<1055.0,708.0>-<1133.5,624.5>> = 4.616352093550998
	* braceleft.case: B<<505.5,834.5>-<440.0,756.0>-<286.0,750.0>>/B<<286.0,750.0>-<440.0,744.0>-<505.5,665.5>> = 4.462349216062345
	* braceleft: B<<535.0,706.0>-<457.0,607.0>-<245.0,600.0>>/B<<245.0,600.0>-<457.0,593.0>-<535.0,494.0>> = 3.782309403370746
	* braceright.case: B<<357.5,665.5>-<423.0,744.0>-<577.0,750.0>>/B<<577.0,750.0>-<423.0,756.0>-<357.5,834.5>> = 4.462349216062345
	* braceright: B<<403.0,494.0>-<481.0,593.0>-<693.0,600.0>>/B<<693.0,600.0>-<481.0,607.0>-<403.0,706.0>> = 3.782309403370746
	* c: B<<986.0,836.0>-<979.0,859.0>-<968.0,880.0>>/L<<968.0,880.0>--<986.0,836.0>> = 5.396951706526194
	* c: L<<968.0,880.0>--<986.0,836.0>>/B<<986.0,836.0>-<979.0,859.0>-<968.0,880.0>> = 5.321510593065264 and 50 more. [code: found-jaggy-segments]

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
	* k: L<<213.0,161.0>--<214.0,1339.0>>
	* k: L<<31.0,0.0>--<32.0,161.0>>
	* uni0137: L<<213.0,161.0>--<214.0,1339.0>> and uni0137: L<<31.0,0.0>--<32.0,161.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Thin.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But values of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Additionally, values above 2048 would likely result in unreasonable filesize
increases.


</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

</details>
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
<summary>⚠ <b>WARN:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

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
	* agrave: L<<876.0,166.0>--<876.0,318.0>>/B<<876.0,318.0>-<833.0,141.0>-<718.0,62.5>> = 13.654785858284322 and 71 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 111 | 1261 | 85 | 1078 | 0 |
| 0% | 0% | 4% | 50% | 3% | 43% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
