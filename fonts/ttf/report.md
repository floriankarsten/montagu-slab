## Fontbakery report

Fontbakery version: 0.7.38

<details>
<summary><b>[1] Family checks</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
<pre>--- Rationale ---
There&#x27;s no reasonable (and legal) way to run the command `ftxvalidator` of the
Apple Font Tool Suite on a non-macOS machine. I.e. on GNU+Linux or Windows etc.
If Font Bakery is not running on an OSX machine, the machine running Font Bakery
could access `ftxvalidator` on OSX, e.g. via ssh or a remote procedure call
(rpc).
There&#x27;s an ssh example implementation at:
https://github.com/googlefonts/fontbakery/blob/main/prebuilt/workarounds
/ftxvalidator/ssh-implementation/ftxvalidator</pre>

* ⚠ **WARN** Could not find ftxvalidator. [code: ftxvalidator-available]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab16pt-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EA8: X=510.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=466.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=605.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED4: X=525.0,Y=984.0 (should be at ascender 982?)
	* uni1E9E: X=554.5,Y=680.0 (should be at cap-height 682?)
	* uni1EB3: X=330.0,Y=981.0 (should be at ascender 982?)
	* uni1EA3: X=326.0,Y=680.0 (should be at cap-height 682?)
	* eth: X=278.0,Y=684.0 (should be at cap-height 682?)
	* uni1EBB: X=307.0,Y=680.0 (should be at cap-height 682?)
	* i: X=44.0,Y=527.0 (should be at x-height 528?) and 49 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* R: L<<506.0,316.0>--<490.0,316.0>>/B<<490.0,316.0>-<546.0,306.0>-<569.5,267.5>> = 10.124671655397806
	* Racute: L<<506.0,316.0>--<490.0,316.0>>/B<<490.0,316.0>-<546.0,306.0>-<569.5,267.5>> = 10.124671655397806
	* Rcaron: L<<506.0,316.0>--<490.0,316.0>>/B<<490.0,316.0>-<546.0,306.0>-<569.5,267.5>> = 10.124671655397806
	* braceleft.case: B<<262.5,375.5>-<233.0,343.0>-<165.0,341.0>>/B<<165.0,341.0>-<233.0,339.0>-<262.5,306.5>> = 3.3693686357926036
	* braceleft: B<<286.5,341.0>-<257.0,294.0>-<169.0,291.0>>/B<<169.0,291.0>-<257.0,287.0>-<286.5,241.0>> = 4.555071251899331
	* braceright.case: B<<184.5,306.5>-<214.0,339.0>-<281.0,341.0>>/B<<281.0,341.0>-<214.0,343.0>-<184.5,375.5>> = 3.419628088282934
	* braceright: B<<193.5,241.0>-<223.0,287.0>-<311.0,291.0>>/B<<311.0,291.0>-<223.0,294.0>-<193.5,341.0>> = 4.555071251899331
	* eng: L<<269.0,528.0>--<269.0,410.0>>/B<<269.0,410.0>-<282.0,469.0>-<323.5,502.5>> = 12.425942865427485
	* eth: B<<368.0,480.0>-<410.0,457.0>-<433.0,402.0>>/B<<433.0,402.0>-<425.0,454.0>-<409.0,497.5>> = 13.94763268253713
	* m: L<<267.0,527.0>--<267.0,411.0>>/B<<267.0,411.0>-<279.0,469.0>-<317.0,502.0>> = 11.689369175439202 and 38 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * n: L<<336.0,0.0>--<37.0,1.0>>
 * n: L<<44.0,529.0>--<269.0,528.0>>
 * nacute: L<<336.0,0.0>--<37.0,1.0>>
 * nacute: L<<44.0,529.0>--<269.0,528.0>>
 * ncaron: L<<336.0,0.0>--<37.0,1.0>>
 * ncaron: L<<44.0,529.0>--<269.0,528.0>>
 * ntilde: L<<336.0,0.0>--<37.0,1.0>>
 * ntilde: L<<44.0,529.0>--<269.0,528.0>>
 * uni0146: L<<336.0,0.0>--<37.0,1.0>>
 * uni0146: L<<44.0,529.0>--<269.0,528.0>> and 8 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab16pt-ExtraLight.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 16pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=508.5,Y=981.0 (should be at ascender 982?)
	* uni1EAA: X=508.5,Y=981.0 (should be at ascender 982?)
	* uni1EC4: X=479.5,Y=981.0 (should be at ascender 982?)
	* Eng: X=652.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED6: X=527.5,Y=981.0 (should be at ascender 982?)
	* Q: X=530.0,Y=-1.0 (should be at baseline 0?)
	* uni1EA3: X=209.5,Y=681.0 (should be at cap-height 682?)
	* atilde: X=267.5,Y=681.5 (should be at cap-height 682?)
	* b: X=115.0,Y=681.0 (should be at cap-height 682?)
	* b: X=31.0,Y=681.0 (should be at cap-height 682?) and 75 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* uhorn: L<<385.0,504.0>--<509.0,504.0>> -> L<<509.0,504.0>--<509.0,504.0>>
	* uni1EE9: L<<385.0,504.0>--<509.0,504.0>> -> L<<509.0,504.0>--<509.0,504.0>>
	* uni1EEB: L<<385.0,504.0>--<509.0,504.0>> -> L<<509.0,504.0>--<509.0,504.0>>
	* uni1EED: L<<385.0,504.0>--<509.0,504.0>> -> L<<509.0,504.0>--<509.0,504.0>>
	* uni1EEF: L<<385.0,504.0>--<509.0,504.0>> -> L<<509.0,504.0>--<509.0,504.0>> and uni1EF1: L<<385.0,504.0>--<509.0,504.0>> -> L<<509.0,504.0>--<509.0,504.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft.case: B<<182.5,373.0>-<154.0,344.0>-<104.0,341.0>>/B<<104.0,341.0>-<154.0,338.0>-<182.5,309.0>> = 6.86726072490102
	* braceleft: B<<199.5,324.0>-<169.0,290.0>-<113.0,287.0>>/B<<113.0,287.0>-<169.0,284.0>-<199.5,250.0>> = 6.13297100225171
	* braceright.case: B<<205.5,309.0>-<234.0,338.0>-<284.0,341.0>>/B<<284.0,341.0>-<234.0,344.0>-<205.5,373.0>> = 6.86726072490102
	* braceright: B<<223.0,250.0>-<254.0,284.0>-<310.0,287.0>>/B<<310.0,287.0>-<254.0,290.0>-<223.0,324.0>> = 6.13297100225171
	* eth: B<<408.0,478.5>-<458.0,451.0>-<485.0,393.0>>/B<<485.0,393.0>-<470.0,456.0>-<442.0,507.0>> = 11.570292077055889
	* nine.lf: B<<502.5,249.0>-<519.0,330.0>-<510.0,445.0>>/B<<510.0,445.0>-<503.0,360.0>-<446.5,307.5>> = 9.182748750618295
	* nine: B<<502.5,249.0>-<519.0,330.0>-<510.0,445.0>>/B<<510.0,445.0>-<503.0,360.0>-<446.5,307.5>> = 9.182748750618295
	* six.lf: B<<120.0,433.0>-<104.0,352.0>-<112.0,237.0>>/B<<112.0,237.0>-<120.0,322.0>-<176.5,374.5>> = 9.356087880728927
	* six: B<<120.0,433.0>-<104.0,352.0>-<112.0,237.0>>/B<<112.0,237.0>-<120.0,322.0>-<176.5,374.5>> = 9.356087880728927 and yen: L<<365.0,270.0>--<300.0,359.0>>/L<<300.0,359.0>--<309.0,346.0>> = 1.4468877051371514 [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * tbar: L<<178.0,163.0>--<179.0,300.0>> and tbar: L<<180.0,330.0>--<181.0,470.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab16pt-Light.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 16pt Light' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EA8: X=464.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=432.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=645.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED4: X=482.0,Y=984.0 (should be at ascender 982?)
	* Ohorn: X=749.5,Y=680.5 (should be at cap-height 682?)
	* uni1EDA: X=749.5,Y=680.5 (should be at cap-height 682?)
	* uni1EE2: X=749.5,Y=680.5 (should be at cap-height 682?)
	* uni1EDC: X=749.5,Y=680.5 (should be at cap-height 682?)
	* uni1EDE: X=749.5,Y=680.5 (should be at cap-height 682?)
	* uni1EE0: X=749.5,Y=680.5 (should be at cap-height 682?) and 54 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* R: L<<459.0,318.0>--<423.0,318.0>>/B<<423.0,318.0>-<477.0,305.0>-<501.5,264.5>> = 13.535856369134248
	* Racute: L<<459.0,318.0>--<423.0,318.0>>/B<<423.0,318.0>-<477.0,305.0>-<501.5,264.5>> = 13.535856369134248
	* Rcaron: L<<459.0,318.0>--<423.0,318.0>>/B<<423.0,318.0>-<477.0,305.0>-<501.5,264.5>> = 13.535856369134248
	* braceleft.case: B<<194.5,373.5>-<166.0,344.0>-<113.0,341.0>>/B<<113.0,341.0>-<166.0,338.0>-<194.5,308.5>> = 6.479400592204234
	* braceleft: B<<213.0,326.5>-<182.0,290.0>-<121.0,287.0>>/B<<121.0,287.0>-<182.0,284.0>-<213.0,248.5>> = 5.631113368422407
	* braceright.case: B<<202.5,308.5>-<231.0,338.0>-<283.0,341.0>>/B<<283.0,341.0>-<231.0,344.0>-<202.5,373.5>> = 6.603731348869935
	* braceright: B<<219.0,248.5>-<250.0,284.0>-<311.0,287.0>>/B<<311.0,287.0>-<250.0,290.0>-<219.0,326.5>> = 5.631113368422407
	* eth: B<<402.0,478.5>-<451.0,451.0>-<477.0,394.0>>/B<<477.0,394.0>-<463.0,455.0>-<437.5,505.5>> = 11.593643563484813
	* nine.lf: B<<492.5,247.0>-<508.0,323.0>-<500.0,429.0>>/B<<500.0,429.0>-<491.0,351.0>-<437.0,302.5>> = 10.89797217504365
	* nine: B<<492.5,247.0>-<508.0,323.0>-<500.0,429.0>>/B<<500.0,429.0>-<491.0,351.0>-<437.0,302.5>> = 10.89797217504365 and 7 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * tbar: L<<175.0,167.0>--<176.0,296.0>> and tbar: L<<177.0,333.0>--<178.0,463.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab16pt-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 16pt Medium' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=391.0,Y=984.0 (should be at ascender 982?)
	* uni1EA8: X=488.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=391.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=450.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=353.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=624.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED4: X=504.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=407.0,Y=984.0 (should be at ascender 982?)
	* R: X=34.0,Y=684.0 (should be at cap-height 682?)
	* R: X=481.0,Y=684.0 (should be at cap-height 682?) and 63 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* Aogonek contains a short segment B<<700.0,-135.0>-<712.0,-135.0>-<720.5,-132.0>>
	* Aogonek contains a short segment B<<720.5,-132.0>-<729.0,-129.0>-<739.0,-123.0>>
	* Ccedilla contains a short segment B<<420.5,-139.0>-<430.0,-131.0>-<430.0,-118.0>>
	* Ccedilla contains a short segment B<<430.0,-118.0>-<430.0,-105.0>-<421.0,-99.0>>
	* Ccedilla contains a short segment B<<421.0,-99.0>-<412.0,-93.0>-<398.0,-93.0>>
	* Ccedilla contains a short segment L<<410.0,-47.0>--<417.0,-47.0>>
	* Eogonek contains a short segment B<<582.0,-93.0>-<582.0,-113.0>-<594.5,-124.0>>
	* Eogonek contains a short segment B<<594.5,-124.0>-<607.0,-135.0>-<626.0,-135.0>>
	* Eogonek contains a short segment B<<626.0,-135.0>-<638.0,-135.0>-<646.5,-132.0>>
	* Eogonek contains a short segment B<<646.5,-132.0>-<655.0,-129.0>-<665.0,-123.0>> and 89 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* R: L<<484.0,317.0>--<458.0,317.0>>/B<<458.0,317.0>-<513.0,306.0>-<537.0,266.0>> = 11.309932474020195
	* Racute: L<<484.0,317.0>--<458.0,317.0>>/B<<458.0,317.0>-<513.0,306.0>-<537.0,266.0>> = 11.309932474020195
	* Rcaron: L<<484.0,317.0>--<458.0,317.0>>/B<<458.0,317.0>-<513.0,306.0>-<537.0,266.0>> = 11.309932474020195
	* braceleft.case: B<<230.0,375.0>-<201.0,344.0>-<140.0,341.0>>/B<<140.0,341.0>-<201.0,338.0>-<230.0,307.0>> = 5.631113368422407
	* braceleft: B<<252.0,334.0>-<222.0,292.0>-<146.0,289.0>>/B<<146.0,289.0>-<222.0,286.0>-<252.0,244.5>> = 4.521003822282459
	* braceright.case: B<<193.0,307.0>-<222.0,338.0>-<282.0,341.0>>/B<<282.0,341.0>-<222.0,344.0>-<193.0,375.0>> = 5.72481045222338
	* braceright: B<<205.5,244.5>-<236.0,286.0>-<311.0,289.0>>/B<<311.0,289.0>-<236.0,292.0>-<205.5,334.0>> = 4.58122008527693
	* eth: B<<384.0,479.0>-<429.0,454.0>-<454.0,398.0>>/B<<454.0,398.0>-<443.0,455.0>-<423.0,501.5>> = 13.134544730142482
	* u: L<<462.0,0.0>--<462.0,124.0>>/B<<462.0,124.0>-<446.0,58.0>-<400.0,24.0>> = 13.62699485989153
	* uacute: L<<462.0,0.0>--<462.0,124.0>>/B<<462.0,124.0>-<446.0,58.0>-<400.0,24.0>> = 13.62699485989153 and 25 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * n: L<<45.0,519.0>--<233.0,518.0>>
 * nacute: L<<45.0,519.0>--<233.0,518.0>>
 * ncaron: L<<45.0,519.0>--<233.0,518.0>>
 * ntilde: L<<45.0,519.0>--<233.0,518.0>>
 * uni0146: L<<45.0,519.0>--<233.0,518.0>>
 * uni01CC: L<<45.0,519.0>--<233.0,518.0>>
 * uni1E45: L<<45.0,519.0>--<233.0,518.0>>
 * uni1E47: L<<45.0,519.0>--<233.0,518.0>> and uni1E49: L<<45.0,519.0>--<233.0,518.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab16pt-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=401.0,Y=984.0 (should be at ascender 982?)
	* uni1EA8: X=476.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=401.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=441.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=366.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=634.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED4: X=493.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=418.0,Y=984.0 (should be at ascender 982?)
	* Q: X=541.0,Y=-2.0 (should be at baseline 0?)
	* R: X=33.0,Y=683.0 (should be at cap-height 682?) and 80 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* R: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924
	* Racute: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924
	* Rcaron: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924
	* braceleft.case: B<<213.0,374.0>-<184.0,344.0>-<127.0,341.0>>/B<<127.0,341.0>-<184.0,338.0>-<213.0,308.0>> = 6.025575008366673
	* braceleft: B<<232.5,330.0>-<202.0,291.0>-<134.0,288.0>>/B<<134.0,288.0>-<202.0,285.0>-<232.5,246.5>> = 5.052233823239003
	* braceright.case: B<<197.5,308.0>-<226.0,338.0>-<283.0,341.0>>/B<<283.0,341.0>-<226.0,344.0>-<197.5,374.0>> = 6.025575008366673
	* braceright: B<<212.5,246.5>-<243.0,285.0>-<311.0,288.0>>/B<<311.0,288.0>-<243.0,291.0>-<212.5,330.0>> = 5.052233823239003
	* eth: B<<393.0,479.0>-<440.0,453.0>-<465.0,396.0>>/B<<465.0,396.0>-<453.0,455.0>-<430.0,503.5>> = 12.18552470695263
	* uni0156: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924
	* uni0210: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924 and 3 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab16pt-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 16pt SemiBold' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.006%% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* AE contains a short segment L<<681.0,395.0>--<716.0,395.0>>
	* AEacute contains a short segment L<<681.0,395.0>--<716.0,395.0>>
	* Ccedilla contains a short segment B<<424.0,-116.0>-<424.0,-106.0>-<416.5,-101.0>>
	* Ccedilla contains a short segment B<<416.5,-101.0>-<409.0,-96.0>-<397.0,-96.0>>
	* Ccedilla contains a short segment L<<415.0,-43.0>--<420.0,-43.0>>
	* Eogonek contains a short segment B<<592.0,-90.0>-<592.0,-109.0>-<604.5,-118.5>>
	* Eogonek contains a short segment B<<604.5,-118.5>-<617.0,-128.0>-<636.0,-128.0>>
	* Eng contains a short segment B<<527.0,-139.0>-<531.0,-139.0>-<535.0,-139.0>>
	* Q contains a short segment B<<452.0,-15.0>-<444.0,-16.0>-<435.0,-16.0>>
	* Scedilla contains a short segment B<<426.0,-12.0>-<421.0,-12.0>-<416.0,-12.0>> and 87 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* R: L<<494.0,317.0>--<473.0,317.0>>/B<<473.0,317.0>-<529.0,306.0>-<552.5,266.5>> = 11.113040535948294
	* Racute: L<<494.0,317.0>--<473.0,317.0>>/B<<473.0,317.0>-<529.0,306.0>-<552.5,266.5>> = 11.113040535948294
	* Rcaron: L<<494.0,317.0>--<473.0,317.0>>/B<<473.0,317.0>-<529.0,306.0>-<552.5,266.5>> = 11.113040535948294
	* braceleft.case: B<<245.0,375.5>-<216.0,344.0>-<152.0,341.0>>/B<<152.0,341.0>-<216.0,338.0>-<245.0,306.5>> = 5.36755031893786
	* braceleft: B<<268.0,337.0>-<238.0,293.0>-<157.0,290.0>>/B<<157.0,290.0>-<238.0,286.0>-<268.0,242.5>> = 4.948220974822635
	* braceright.case: B<<188.5,306.5>-<218.0,338.0>-<282.0,341.0>>/B<<282.0,341.0>-<218.0,344.0>-<188.5,375.5>> = 5.36755031893786
	* braceright: B<<200.0,242.5>-<230.0,286.0>-<311.0,290.0>>/B<<311.0,290.0>-<230.0,293.0>-<200.0,337.0>> = 4.948220974822635
	* dollar: B<<465.5,246.0>-<436.0,256.0>-<402.0,261.0>>/L<<402.0,261.0>--<402.0,261.0>> = 8.365886124032546
	* eng: L<<250.0,523.0>--<250.0,400.0>>/B<<250.0,400.0>-<265.0,463.0>-<308.5,497.0>> = 13.392497753751098
	* eth: B<<376.5,479.5>-<420.0,455.0>-<444.0,400.0>>/B<<444.0,400.0>-<434.0,455.0>-<416.5,500.0>> = 13.269859733146578 and 39 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * n: L<<323.0,0.0>--<37.0,1.0>>
 * nacute: L<<323.0,0.0>--<37.0,1.0>>
 * ncaron: L<<323.0,0.0>--<37.0,1.0>>
 * ntilde: L<<323.0,0.0>--<37.0,1.0>>
 * uni0146: L<<323.0,0.0>--<37.0,1.0>>
 * uni01CC: L<<323.0,0.0>--<37.0,1.0>>
 * uni1E45: L<<323.0,0.0>--<37.0,1.0>>
 * uni1E47: L<<323.0,0.0>--<37.0,1.0>> and uni1E49: L<<323.0,0.0>--<37.0,1.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab16pt-Thin.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 16pt Thin' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=418.0,Y=981.0 (should be at ascender 982?)
	* uni1EAA: X=418.0,Y=981.0 (should be at ascender 982?)
	* uni1EC4: X=391.0,Y=981.0 (should be at ascender 982?)
	* Eng: X=659.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED6: X=437.0,Y=981.0 (should be at ascender 982?)
	* Uogonek: X=509.0,Y=-1.0 (should be at baseline 0?)
	* atilde: X=383.0,Y=684.0 (should be at cap-height 682?)
	* atilde: X=405.0,Y=684.0 (should be at cap-height 682?)
	* uni1EBD: X=385.0,Y=684.0 (should be at cap-height 682?)
	* uni1EBD: X=407.0,Y=684.0 (should be at cap-height 682?) and 34 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft.case: B<<170.5,372.5>-<142.0,344.0>-<95.0,341.0>>/B<<95.0,341.0>-<142.0,338.0>-<170.5,310.0>> = 7.304445560612643
	* braceleft: B<<186.0,321.5>-<155.0,289.0>-<104.0,286.0>>/B<<104.0,286.0>-<155.0,283.0>-<186.0,251.0>> = 6.732921326859609
	* braceright.case: B<<209.0,310.0>-<237.0,338.0>-<284.0,341.0>>/B<<284.0,341.0>-<237.0,344.0>-<209.0,372.5>> = 7.304445560612643
	* braceright: B<<228.0,251.0>-<259.0,283.0>-<310.0,286.0>>/B<<310.0,286.0>-<259.0,289.0>-<228.0,321.5>> = 6.732921326859609
	* eogonek: B<<437.5,36.5>-<407.0,11.0>-<359.0,0.0>>/L<<359.0,0.0>--<359.0,0.0>> = 12.907408671265848
	* eth: B<<414.5,478.5>-<466.0,450.0>-<493.0,391.0>>/B<<493.0,391.0>-<477.0,456.0>-<447.0,508.5>> = 10.761466193915874
	* nine.dnom: B<<264.5,93.5>-<281.0,135.0>-<277.0,200.0>>/B<<277.0,200.0>-<273.0,168.0>-<244.0,143.5>> = 10.646469725824005
	* nine.lf: B<<512.0,252.0>-<529.0,338.0>-<520.0,461.0>>/B<<520.0,461.0>-<515.0,369.0>-<456.0,312.5>> = 7.29575677860915
	* nine.numr: B<<264.5,446.5>-<281.0,488.0>-<277.0,553.0>>/B<<277.0,553.0>-<273.0,521.0>-<244.0,496.5>> = 10.646469725824005
	* nine: B<<512.0,252.0>-<529.0,338.0>-<520.0,461.0>>/B<<520.0,461.0>-<515.0,369.0>-<456.0,312.5>> = 7.29575677860915 and 9 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * f_t.liga: L<<545.0,158.0>--<546.0,477.0>>
 * t: L<<156.0,158.0>--<157.0,477.0>>
 * t_t.liga: L<<156.0,155.0>--<157.0,477.0>>
 * t_t.liga: L<<571.0,158.0>--<572.0,477.0>>
 * tcaron: L<<156.0,158.0>--<157.0,477.0>>
 * uni0163: L<<156.0,158.0>--<157.0,477.0>>
 * uni021B: L<<156.0,158.0>--<157.0,477.0>>
 * uni1E6D: L<<156.0,158.0>--<157.0,477.0>> and uni1E6F: L<<156.0,158.0>--<157.0,477.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab144pt-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB2: X=535.0,Y=981.5 (should be at ascender 982?)
	* uni1EA8: X=643.5,Y=981.0 (should be at ascender 982?)
	* uni1EA8: X=587.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=590.5,Y=981.0 (should be at ascender 982?)
	* uni1EC2: X=534.0,Y=984.0 (should be at ascender 982?)
	* uni1ED4: X=648.5,Y=981.0 (should be at ascender 982?)
	* uni1ED4: X=592.0,Y=984.0 (should be at ascender 982?)
	* uni1EA3: X=275.5,Y=681.5 (should be at cap-height 682?)
	* atilde: X=311.0,Y=680.0 (should be at cap-height 682?)
	* uni1EBB: X=262.5,Y=681.5 (should be at cap-height 682?) and 33 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<633.5,407.0>-<590.0,368.0>-<517.0,357.0>>/B<<517.0,357.0>-<609.0,349.0>-<661.0,309.5>> = 13.538882607947905
	* R: L<<468.0,327.0>--<427.0,327.0>>/B<<427.0,327.0>-<496.0,320.0>-<530.5,282.0>> = 5.79279649503215
	* Racute: L<<468.0,327.0>--<427.0,327.0>>/B<<427.0,327.0>-<496.0,320.0>-<530.5,282.0>> = 5.79279649503215
	* Rcaron: L<<468.0,327.0>--<427.0,327.0>>/B<<427.0,327.0>-<496.0,320.0>-<530.5,282.0>> = 5.79279649503215
	* at: L<<535.0,166.0>--<535.0,168.0>>/B<<535.0,168.0>-<522.0,100.0>-<479.0,67.5>> = 10.823011226207075
	* braceleft.case: B<<256.0,380.5>-<226.0,343.0>-<150.0,341.0>>/B<<150.0,341.0>-<226.0,339.0>-<256.0,301.5>> = 3.014871517549838
	* braceleft: B<<236.5,297.5>-<198.0,275.0>-<127.0,273.0>>/B<<127.0,273.0>-<198.0,271.0>-<236.5,248.5>> = 3.2270778657622397
	* braceright.case: B<<162.0,301.5>-<192.0,339.0>-<268.0,341.0>>/B<<268.0,341.0>-<192.0,343.0>-<162.0,380.5>> = 3.014871517549838
	* braceright: B<<206.5,248.5>-<245.0,271.0>-<316.0,273.0>>/B<<316.0,273.0>-<245.0,275.0>-<206.5,297.5>> = 3.2270778657622397
	* eng: L<<254.0,518.0>--<254.0,397.0>>/B<<254.0,397.0>-<263.0,458.0>-<299.0,492.5>> = 8.392925187392485 and 41 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-ExtraLight.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=285.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=285.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=251.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=623.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED6: X=289.0,Y=984.0 (should be at ascender 982?)
	* Q: X=626.0,Y=-2.0 (should be at baseline 0?)
	* Q: X=652.0,Y=-2.0 (should be at baseline 0?)
	* Uhorn: X=752.5,Y=682.5 (should be at cap-height 682?)
	* uni1EE8: X=752.5,Y=682.5 (should be at cap-height 682?)
	* uni1EF0: X=752.5,Y=682.5 (should be at cap-height 682?) and 90 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* ampersand: L<<261.0,382.0>--<262.0,381.0>> -> L<<262.0,381.0>--<498.0,116.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<565.5,400.0>-<526.0,360.0>-<455.0,350.0>>/B<<455.0,350.0>-<538.0,343.0>-<585.0,300.5>> = 12.83785915174798
	* R: L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<431.0,317.0>-<456.5,276.5>> = 13.298570330494275
	* Racute: L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<431.0,317.0>-<456.5,276.5>> = 13.298570330494275
	* Rcaron: L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<431.0,317.0>-<456.5,276.5>> = 13.298570330494275
	* a: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* aacute: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* abreve: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* acircumflex: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* adieresis: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* agrave: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461 and 81 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * t: L<<133.0,138.0>--<135.0,467.0>>
 * t_t.liga: L<<133.0,136.0>--<135.0,467.0>>
 * t_t.liga: L<<497.0,138.0>--<499.0,467.0>>
 * tbar: L<<153.0,311.0>--<154.0,467.0>>
 * tcaron: L<<133.0,138.0>--<135.0,467.0>>
 * uni0163: L<<133.0,138.0>--<135.0,467.0>>
 * uni021B: L<<133.0,138.0>--<135.0,467.0>>
 * uni1E6D: L<<133.0,138.0>--<135.0,467.0>> and uni1E6F: L<<133.0,138.0>--<135.0,467.0>> [code: found-semi-vertical]

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
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Light' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=259.0,Y=984.0 (should be at ascender 982?)
	* uni1EB4: X=453.0,Y=980.0 (should be at ascender 982?)
	* uni1EB4: X=384.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=258.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=452.0,Y=980.0 (should be at ascender 982?)
	* uni1EAA: X=383.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=221.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=415.0,Y=980.0 (should be at ascender 982?)
	* uni1EC4: X=346.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=263.0,Y=984.0 (should be at ascender 982?) and 47 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<575.5,401.0>-<535.0,361.0>-<464.0,351.0>>/B<<464.0,351.0>-<549.0,344.0>-<597.0,302.0>> = 12.724945318027565
	* R: L<<432.0,329.0>--<384.0,329.0>>/B<<384.0,329.0>-<441.0,317.0>-<467.5,277.0>> = 11.888658039627968
	* Racute: L<<432.0,329.0>--<384.0,329.0>>/B<<384.0,329.0>-<441.0,317.0>-<467.5,277.0>> = 11.888658039627968
	* Rcaron: L<<432.0,329.0>--<384.0,329.0>>/B<<384.0,329.0>-<441.0,317.0>-<467.5,277.0>> = 11.888658039627968
	* a: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* aacute: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* abreve: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* acircumflex: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* adieresis: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* agrave: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811 and 85 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Medium' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Q: X=526.0,Y=1.0 (should be at baseline 0?)
	* Uogonek: X=493.0,Y=2.0 (should be at baseline 0?)
	* W: X=297.0,Y=-2.0 (should be at baseline 0?)
	* W: X=775.0,Y=-2.0 (should be at baseline 0?)
	* W: X=673.0,Y=-2.0 (should be at baseline 0?)
	* W: X=397.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=297.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=775.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=673.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=397.0,Y=-2.0 (should be at baseline 0?) and 69 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<606.0,403.5>-<564.0,364.0>-<491.0,354.0>>/B<<491.0,354.0>-<580.0,347.0>-<630.5,306.0>> = 12.297339498849466
	* R: L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<471.0,319.0>-<501.5,279.5>> = 8.004728857292836
	* Racute: L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<471.0,319.0>-<501.5,279.5>> = 8.004728857292836
	* Rcaron: L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<471.0,319.0>-<501.5,279.5>> = 8.004728857292836
	* a: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* aacute: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* abreve: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* acircumflex: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* adieresis: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* agrave: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457 and 78 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab144pt-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB4: X=459.0,Y=984.0 (should be at ascender 982?)
	* uni1EB4: X=375.0,Y=983.0 (should be at ascender 982?)
	* uni1EAA: X=458.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=374.0,Y=983.0 (should be at ascender 982?)
	* uni1EC4: X=417.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=333.0,Y=983.0 (should be at ascender 982?)
	* uni1ED6: X=463.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=379.0,Y=983.0 (should be at ascender 982?)
	* uni022C: X=250.0,Y=984.0 (should be at ascender 982?)
	* uni022C: X=547.0,Y=984.0 (should be at ascender 982?) and 57 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<590.5,402.5>-<549.0,363.0>-<477.0,353.0>>/B<<477.0,353.0>-<564.0,346.0>-<613.5,304.5>> = 12.507258369221715
	* R: L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<456.0,318.0>-<484.5,278.5>> = 10.222168633636109
	* Racute: L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<456.0,318.0>-<484.5,278.5>> = 10.222168633636109
	* Rcaron: L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<456.0,318.0>-<484.5,278.5>> = 10.222168633636109
	* a: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* aacute: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* abreve: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* acircumflex: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* adieresis: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* agrave: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187 and 81 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: c	Contours detected: 2	Expected: 1
Glyph name: cacute	Contours detected: 3	Expected: 2
Glyph name: ccaron	Contours detected: 3	Expected: 2
Glyph name: ccircumflex	Contours detected: 3	Expected: 2
Glyph name: cdotaccent	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt SemiBold' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EA8: X=628.5,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=579.5,Y=984.0 (should be at ascender 982?)
	* uni1ED4: X=633.5,Y=984.0 (should be at ascender 982?)
	* Q: X=534.0,Y=1.0 (should be at baseline 0?)
	* uni1E9E: X=512.5,Y=683.5 (should be at cap-height 682?)
	* W: X=292.0,Y=-1.0 (should be at baseline 0?)
	* W: X=792.0,Y=-1.0 (should be at baseline 0?)
	* W: X=670.0,Y=-1.0 (should be at baseline 0?)
	* W: X=412.0,Y=-1.0 (should be at baseline 0?)
	* Wacute: X=292.0,Y=-1.0 (should be at baseline 0?) and 72 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* uhorn: L<<319.0,513.0>--<525.0,513.0>> -> L<<525.0,513.0>--<525.0,513.0>>
	* uni1EE9: L<<319.0,513.0>--<525.0,513.0>> -> L<<525.0,513.0>--<525.0,513.0>>
	* uni1EEB: L<<319.0,513.0>--<525.0,513.0>> -> L<<525.0,513.0>--<525.0,513.0>>
	* uni1EED: L<<319.0,513.0>--<525.0,513.0>> -> L<<525.0,513.0>--<525.0,513.0>>
	* uni1EEF: L<<319.0,513.0>--<525.0,513.0>> -> L<<525.0,513.0>--<525.0,513.0>> and uni1EF1: L<<319.0,513.0>--<525.0,513.0>> -> L<<525.0,513.0>--<525.0,513.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<618.5,405.5>-<576.0,366.0>-<503.0,355.0>>/B<<503.0,355.0>-<593.0,348.0>-<644.5,307.5>> = 13.016526729928092
	* R: L<<459.0,328.0>--<417.0,328.0>>/B<<417.0,328.0>-<483.0,319.0>-<515.0,280.5>> = 7.765166018425308
	* Racute: L<<459.0,328.0>--<417.0,328.0>>/B<<417.0,328.0>-<483.0,319.0>-<515.0,280.5>> = 7.765166018425308
	* Rcaron: L<<459.0,328.0>--<417.0,328.0>>/B<<417.0,328.0>-<483.0,319.0>-<515.0,280.5>> = 7.765166018425308
	* at: L<<542.0,162.0>--<542.0,170.0>>/B<<542.0,170.0>-<528.0,101.0>-<483.5,68.5>> = 11.469530332866904
	* braceleft.case: B<<237.5,379.0>-<208.0,344.0>-<138.0,341.0>>/B<<138.0,341.0>-<208.0,338.0>-<237.5,302.5>> = 4.908063349054138
	* braceleft: B<<251.5,321.0>-<216.0,276.0>-<119.0,273.0>>/B<<119.0,273.0>-<216.0,270.0>-<251.5,225.0>> = 3.542939480068082
	* braceright.case: B<<172.5,302.5>-<202.0,338.0>-<272.0,341.0>>/B<<272.0,341.0>-<202.0,344.0>-<172.5,379.0>> = 4.908063349054138
	* braceright: B<<181.5,225.0>-<217.0,270.0>-<314.0,273.0>>/B<<314.0,273.0>-<217.0,276.0>-<181.5,321.0>> = 3.542939480068082
	* c: B<<450.0,380.0>-<447.0,389.0>-<442.0,398.0>>/L<<442.0,398.0>--<450.0,380.0>> = 5.0921151244989575 and 53 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-Thin.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: uni00B2	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + b
	- b + f
	- f + h
	- h + f
	- f + i
	- i + f
	- f + k
	- k + f
	- f + l
	- l + b
	- h + i
	- i + k
	- k + l
	- l + t
	- t + t

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
[1] https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Montagu Slab 144pt Thin' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* uni1EB2: X=421.0,Y=980.0 (should be at ascender 982?)
	* Eng: X=630.0,Y=-1.0 (should be at baseline 0?)
	* Q: X=475.0,Y=-2.0 (should be at baseline 0?)
	* uni1E9E: X=487.5,Y=681.0 (should be at cap-height 682?)
	* uni1E9E: X=366.0,Y=680.0 (should be at cap-height 682?)
	* Uogonek: X=471.0,Y=-1.0 (should be at baseline 0?)
	* acircumflex: X=262.0,Y=681.0 (should be at cap-height 682?)
	* uni1EA5: X=262.0,Y=681.0 (should be at cap-height 682?)
	* uni1EAD: X=262.0,Y=681.0 (should be at cap-height 682?)
	* uni1EA7: X=262.0,Y=681.0 (should be at cap-height 682?) and 89 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---
This check looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.
This check is not run for variable fonts, as they may legitimately have colinear
vectors.</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* Ccedilla: L<<350.0,5.0>--<350.0,5.0>> -> L<<350.0,5.0>--<370.0,5.0>> [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B: B<<555.0,399.5>-<516.0,359.0>-<446.0,349.0>>/B<<446.0,349.0>-<528.0,342.0>-<574.0,299.0>> = 13.009376137162674
	* C: B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Cacute: B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Ccaron: B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Ccedilla: B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Ccircumflex: B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Cdotaccent: B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Euro: B<<632.0,641.0>-<701.0,588.0>-<723.0,500.0>>/L<<723.0,500.0>--<723.0,682.0>> = 14.036243467926484
	* G: L<<640.0,0.0>--<640.0,190.0>>/B<<640.0,190.0>-<617.0,99.0>-<551.5,43.0>> = 14.184294248270799
	* Gbreve: L<<640.0,0.0>--<640.0,190.0>>/B<<640.0,190.0>-<617.0,99.0>-<551.5,43.0>> = 14.184294248270799 and 117 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 79 | 1373 | 85 | 1166 | 0 |
| 0% | 0% | 3% | 51% | 3% | 43% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
