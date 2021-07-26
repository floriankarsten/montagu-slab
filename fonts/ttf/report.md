## Fontbakery report

Fontbakery version: 0.8.0

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
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7 [code: contour-count]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EA8: X=508.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=468.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=605.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED4: X=525.0,Y=984.0 (should be at ascender 982?)
	* uni1E9E: X=554.5,Y=680.0 (should be at cap-height 682?)
	* uni1EB3: X=330.0,Y=981.0 (should be at ascender 982?)
	* uni1EA3: X=326.0,Y=680.0 (should be at cap-height 682?)
	* eth: X=278.0,Y=684.0 (should be at cap-height 682?)
	* uni1EBB: X=309.0,Y=680.0 (should be at cap-height 682?)
	* uni1EC9: X=193.0,Y=680.0 (should be at cap-height 682?) and 35 more. [code: found-misalignments]

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
	* braceleft.case: B<<263.5,375.0>-<221.0,342.0>-<135.0,341.0>>/B<<135.0,341.0>-<221.0,340.0>-<263.5,307.0>> = 1.3323999403663624
	* braceleft: B<<252.0,314.5>-<216.0,293.0>-<149.0,291.0>>/B<<149.0,291.0>-<216.0,289.0>-<252.0,267.5>> = 3.419628088282934
	* braceright.case: B<<197.0,307.0>-<239.0,340.0>-<325.0,341.0>>/B<<325.0,341.0>-<239.0,342.0>-<197.0,375.0>> = 1.3323999403663624
	* braceright: B<<228.5,267.5>-<265.0,289.0>-<331.0,291.0>>/B<<331.0,291.0>-<265.0,293.0>-<228.5,314.5>> = 3.4714091778567253
	* eng: L<<268.0,528.0>--<268.0,410.0>>/B<<268.0,410.0>-<281.0,469.0>-<322.5,502.5>> = 12.425942865427485
	* eth: B<<368.0,480.0>-<410.0,457.0>-<433.0,402.0>>/B<<433.0,402.0>-<425.0,454.0>-<409.0,497.5>> = 13.94763268253713
	* lira: B<<365.5,193.5>-<345.0,161.0>-<291.0,150.0>>/L<<291.0,150.0>--<699.0,150.0>> = 11.513831184487014 and 41 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-ExtraLight.ttf</b></summary>
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
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ellipsis	Contours detected: 2	Expected: 3
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
 FONT_FAMILY_NAME = 'Montagu Slab 16pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EC4: X=481.5,Y=981.0 (should be at ascender 982?)
	* Eng: X=652.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED6: X=527.5,Y=981.0 (should be at ascender 982?)
	* Q: X=530.0,Y=-1.0 (should be at baseline 0?)
	* uni1EA3: X=209.5,Y=681.0 (should be at cap-height 682?)
	* atilde: X=267.5,Y=681.5 (should be at cap-height 682?)
	* b: X=115.0,Y=681.0 (should be at cap-height 682?)
	* b: X=31.0,Y=681.0 (should be at cap-height 682?) and 80 more. [code: found-misalignments]

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
	* uhorn: L<<384.0,504.0>--<508.0,504.0>> -> L<<508.0,504.0>--<508.0,504.0>>
	* uni1EE9: L<<384.0,504.0>--<508.0,504.0>> -> L<<508.0,504.0>--<508.0,504.0>>
	* uni1EEB: L<<384.0,504.0>--<508.0,504.0>> -> L<<508.0,504.0>--<508.0,504.0>>
	* uni1EED: L<<384.0,504.0>--<508.0,504.0>> -> L<<508.0,504.0>--<508.0,504.0>>
	* uni1EEF: L<<384.0,504.0>--<508.0,504.0>> -> L<<508.0,504.0>--<508.0,504.0>> and uni1EF1: L<<384.0,504.0>--<508.0,504.0>> -> L<<508.0,504.0>--<508.0,504.0>> [code: found-colinear-vectors]

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
	* braceleft.case: B<<182.5,373.0>-<153.0,344.0>-<100.0,341.0>>/B<<100.0,341.0>-<153.0,338.0>-<182.5,309.0>> = 6.479400592204234
	* braceleft: B<<199.0,324.0>-<168.0,290.0>-<110.0,287.0>>/B<<110.0,287.0>-<168.0,284.0>-<199.0,249.5>> = 5.921872268327562
	* braceright.case: B<<207.5,309.0>-<237.0,338.0>-<289.0,341.0>>/B<<289.0,341.0>-<237.0,344.0>-<207.5,373.0>> = 6.603731348869935
	* braceright: B<<223.5,249.5>-<255.0,284.0>-<313.0,287.0>>/B<<313.0,287.0>-<255.0,290.0>-<223.5,324.0>> = 5.921872268327562
	* eth: B<<408.0,478.5>-<458.0,451.0>-<485.0,393.0>>/B<<485.0,393.0>-<470.0,456.0>-<442.0,507.0>> = 11.570292077055889
	* nine.dnom: B<<249.5,60.5>-<285.0,103.0>-<281.0,194.0>>/B<<281.0,194.0>-<275.0,164.0>-<246.5,142.5>> = 13.826808130959718
	* nine.lf: B<<512.0,197.5>-<542.0,288.0>-<532.0,437.0>>/B<<532.0,437.0>-<524.0,355.0>-<466.5,304.0>> = 9.41179414191719
	* nine.numr: B<<249.5,408.5>-<285.0,451.0>-<281.0,542.0>>/B<<281.0,542.0>-<275.0,512.0>-<246.5,490.5>> = 13.826808130959718
	* nine: B<<512.0,197.5>-<542.0,288.0>-<532.0,437.0>>/B<<532.0,437.0>-<524.0,355.0>-<466.5,304.0>> = 9.41179414191719
	* six.dnom: B<<111.0,272.5>-<75.0,230.0>-<80.0,139.0>>/B<<80.0,139.0>-<85.0,169.0>-<114.0,190.5>> = 12.607279672723635 and 7 more. [code: found-jaggy-segments]

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
<summary><b>[7] MontaguSlab16pt-Light.ttf</b></summary>
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
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ellipsis	Contours detected: 2	Expected: 3
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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EA8: X=463.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=434.0,Y=984.0 (should be at ascender 982?)
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
	* braceleft.case: B<<195.5,373.5>-<164.0,344.0>-<106.0,341.0>>/B<<106.0,341.0>-<164.0,338.0>-<195.5,308.5>> = 5.921872268327562
	* braceleft: B<<212.0,326.5>-<180.0,290.0>-<116.0,287.0>>/B<<116.0,287.0>-<180.0,284.0>-<212.0,248.0>> = 5.36755031893786
	* braceright.case: B<<205.5,308.5>-<237.0,338.0>-<295.0,341.0>>/B<<295.0,341.0>-<237.0,344.0>-<205.5,373.5>> = 5.921872268327562
	* braceright: B<<220.0,248.0>-<252.0,284.0>-<316.0,287.0>>/B<<316.0,287.0>-<252.0,290.0>-<220.0,326.5>> = 5.36755031893786
	* eth: B<<402.0,478.5>-<451.0,451.0>-<477.0,394.0>>/B<<477.0,394.0>-<463.0,455.0>-<437.5,505.5>> = 11.593643563484813
	* nine.lf: B<<504.0,200.5>-<531.0,286.0>-<523.0,421.0>>/B<<523.0,421.0>-<513.0,346.0>-<457.0,299.0>> = 10.985982788387767
	* nine: B<<504.0,200.5>-<531.0,286.0>-<523.0,421.0>>/B<<523.0,421.0>-<513.0,346.0>-<457.0,299.0>> = 10.985982788387767 and 7 more. [code: found-jaggy-segments]

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
<summary><b>[6] MontaguSlab16pt-Medium.ttf</b></summary>
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
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7 [code: contour-count]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EB4: X=389.0,Y=984.0 (should be at ascender 982?)
	* uni1EA8: X=487.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=389.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=452.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=355.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=624.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED4: X=504.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=407.0,Y=984.0 (should be at ascender 982?)
	* R: X=34.0,Y=684.0 (should be at cap-height 682?)
	* R: X=481.0,Y=684.0 (should be at cap-height 682?) and 62 more. [code: found-misalignments]

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
	* braceleft.case: B<<231.0,374.5>-<194.0,343.0>-<121.0,341.0>>/B<<121.0,341.0>-<194.0,339.0>-<231.0,307.5>> = 3.138709609497799
	* braceleft: B<<249.0,334.0>-<216.0,292.0>-<133.0,289.0>>/B<<133.0,289.0>-<216.0,286.0>-<249.0,244.5>> = 4.14006130608207
	* braceright.case: B<<201.0,307.5>-<238.0,339.0>-<311.0,341.0>>/B<<311.0,341.0>-<238.0,343.0>-<201.0,374.5>> = 3.138709609497799
	* braceright: B<<208.0,244.5>-<241.0,286.0>-<324.0,289.0>>/B<<324.0,289.0>-<241.0,292.0>-<208.0,334.0>> = 4.14006130608207
	* eth: B<<384.0,479.0>-<429.0,454.0>-<454.0,398.0>>/B<<454.0,398.0>-<443.0,455.0>-<423.0,501.5>> = 13.134544730142482
	* m: L<<231.0,518.0>--<231.0,406.0>>/B<<231.0,406.0>-<245.0,464.0>-<284.0,494.5>> = 13.570434385161475
	* u: L<<461.0,0.0>--<461.0,124.0>>/B<<461.0,124.0>-<445.0,58.0>-<399.5,24.0>> = 13.62699485989153 and 28 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab16pt-Regular.ttf</b></summary>
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
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 6	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ellipsis	Contours detected: 2	Expected: 3
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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EB4: X=400.0,Y=984.0 (should be at ascender 982?)
	* uni1EA8: X=475.0,Y=984.0 (should be at ascender 982?)
	* uni1EAA: X=400.0,Y=984.0 (should be at ascender 982?)
	* uni1EC2: X=443.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=368.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=634.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED4: X=493.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=418.0,Y=984.0 (should be at ascender 982?)
	* Q: X=541.0,Y=-2.0 (should be at baseline 0?)
	* R: X=33.0,Y=683.0 (should be at cap-height 682?) and 78 more. [code: found-misalignments]

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
	* braceleft.case: B<<213.5,373.5>-<179.0,343.0>-<114.0,341.0>>/B<<114.0,341.0>-<179.0,339.0>-<213.5,308.5>> = 3.5247820473210187
	* braceleft: B<<231.0,330.0>-<199.0,291.0>-<125.0,288.0>>/B<<125.0,288.0>-<199.0,285.0>-<231.0,246.0>> = 4.643061179665369
	* braceright.case: B<<203.5,308.5>-<238.0,339.0>-<303.0,341.0>>/B<<303.0,341.0>-<238.0,343.0>-<203.5,373.5>> = 3.5247820473210187
	* braceright: B<<214.5,246.0>-<247.0,285.0>-<320.0,288.0>>/B<<320.0,288.0>-<247.0,291.0>-<214.5,330.0>> = 4.706593732216495
	* eth: B<<393.0,479.0>-<440.0,453.0>-<465.0,396.0>>/B<<465.0,396.0>-<453.0,455.0>-<430.0,503.5>> = 12.18552470695263
	* uni0156: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924
	* uni0210: L<<472.0,318.0>--<440.0,318.0>>/B<<440.0,318.0>-<495.0,306.0>-<519.5,265.5>> = 12.308015817427924 and 4 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab16pt-SemiBold.ttf</b></summary>
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
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: uni2082	Contours detected: 2	Expected: 1
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: ellipsis	Contours detected: 2	Expected: 3
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7 [code: contour-count]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* braceleft.case: B<<246.0,374.5>-<207.0,342.0>-<128.0,341.0>>/B<<128.0,341.0>-<207.0,340.0>-<246.0,307.5>> = 1.4504485981183235
	* braceleft: B<<264.5,337.0>-<231.0,293.0>-<141.0,290.0>>/B<<141.0,290.0>-<231.0,287.0>-<264.5,243.0>> = 3.8183048659927747
	* braceright.case: B<<199.0,307.5>-<238.0,340.0>-<317.0,341.0>>/B<<317.0,341.0>-<238.0,342.0>-<199.0,374.5>> = 1.4504485981183235
	* braceright: B<<203.5,243.0>-<237.0,287.0>-<327.0,290.0>>/B<<327.0,290.0>-<237.0,293.0>-<203.5,337.0>> = 3.8183048659927747
	* eng: L<<249.0,523.0>--<249.0,400.0>>/B<<249.0,400.0>-<264.0,463.0>-<307.5,497.0>> = 13.392497753751098
	* eth: B<<376.5,479.5>-<420.0,455.0>-<444.0,400.0>>/B<<444.0,400.0>-<434.0,455.0>-<416.5,500.0>> = 13.269859733146578
	* m: L<<247.0,522.0>--<247.0,408.0>>/B<<247.0,408.0>-<260.0,466.0>-<298.5,498.0>> = 12.633361935275003 and 39 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab16pt-Thin.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* Aringacute: X=366.0,Y=980.0 (should be at ascender 982?)
	* Aringacute: X=394.0,Y=980.0 (should be at ascender 982?)
	* uni1EC4: X=393.0,Y=981.0 (should be at ascender 982?)
	* Eng: X=659.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED6: X=437.0,Y=981.0 (should be at ascender 982?)
	* Uogonek: X=509.0,Y=-1.0 (should be at baseline 0?)
	* atilde: X=383.0,Y=684.0 (should be at cap-height 682?)
	* atilde: X=405.0,Y=684.0 (should be at cap-height 682?) and 38 more. [code: found-misalignments]

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
	* braceleft.case: B<<170.0,372.5>-<142.0,344.0>-<95.0,341.0>>/B<<95.0,341.0>-<142.0,338.0>-<170.0,310.0>> = 7.304445560612643
	* braceleft: B<<186.0,321.5>-<155.0,289.0>-<104.0,286.0>>/B<<104.0,286.0>-<155.0,283.0>-<186.0,250.5>> = 6.732921326859609
	* braceright.case: B<<209.0,310.0>-<237.0,338.0>-<284.0,341.0>>/B<<284.0,341.0>-<237.0,344.0>-<209.0,372.5>> = 7.304445560612643
	* braceright: B<<228.0,250.5>-<259.0,283.0>-<310.0,286.0>>/B<<310.0,286.0>-<259.0,289.0>-<228.0,321.5>> = 6.732921326859609
	* eth: B<<414.5,478.5>-<466.0,450.0>-<493.0,391.0>>/B<<493.0,391.0>-<477.0,456.0>-<447.0,508.5>> = 10.761466193915874
	* nine.dnom: B<<249.5,56.5>-<287.0,100.0>-<282.0,197.0>>/B<<282.0,197.0>-<278.0,166.0>-<248.5,142.5>> = 10.303158468898733
	* nine.lf: B<<533.0,247.5>-<550.0,331.0>-<541.0,452.0>>/B<<541.0,452.0>-<536.0,364.0>-<476.0,309.0>> = 7.505782036483042
	* nine.numr: B<<249.5,409.5>-<287.0,453.0>-<282.0,550.0>>/B<<282.0,550.0>-<278.0,519.0>-<248.5,495.5>> = 10.303158468898733
	* nine: B<<533.0,247.5>-<550.0,331.0>-<541.0,452.0>>/B<<541.0,452.0>-<536.0,364.0>-<476.0,309.0>> = 7.505782036483042
	* six.dnom: B<<100.5,271.5>-<63.0,228.0>-<67.0,131.0>>/B<<67.0,131.0>-<72.0,163.0>-<101.5,186.0>> = 11.24203380869584 and 8 more. [code: found-jaggy-segments]

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
<summary><b>[5] MontaguSlab144pt-Bold.ttf</b></summary>
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
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7 [code: contour-count]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EC2: X=596.5,Y=981.0 (should be at ascender 982?)
	* uni1EC2: X=540.0,Y=984.0 (should be at ascender 982?)
	* uni1ED4: X=648.5,Y=981.0 (should be at ascender 982?)
	* uni1ED4: X=592.0,Y=984.0 (should be at ascender 982?)
	* uni1EA3: X=275.5,Y=681.5 (should be at cap-height 682?)
	* atilde: X=311.0,Y=680.0 (should be at cap-height 682?)
	* uni1EBB: X=268.5,Y=681.5 (should be at cap-height 682?) and 34 more. [code: found-misalignments]

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
	* braceleft.case: B<<267.5,377.0>-<233.0,342.0>-<150.0,341.0>>/B<<150.0,341.0>-<233.0,340.0>-<267.5,305.0>> = 1.380554395730035
	* braceleft: B<<241.0,294.5>-<204.0,274.0>-<137.0,273.0>>/B<<137.0,273.0>-<204.0,273.0>-<241.0,252.0>> = 0.8550973962666929
	* braceright.case: B<<166.0,305.0>-<200.0,340.0>-<283.0,341.0>>/B<<283.0,341.0>-<200.0,342.0>-<166.0,377.0>> = 1.380554395730035
	* braceright: B<<202.0,252.0>-<239.0,273.0>-<306.0,273.0>>/B<<306.0,273.0>-<239.0,274.0>-<202.0,294.5>> = 0.8550973962666929
	* eng: L<<255.0,518.0>--<255.0,397.0>>/B<<255.0,397.0>-<264.0,458.0>-<300.0,492.5>> = 8.392925187392485 and 43 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab144pt-ExtraLight.ttf</b></summary>
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
 FONT_FAMILY_NAME = 'Montagu Slab 144pt ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EC4: X=257.0,Y=984.0 (should be at ascender 982?)
	* Eng: X=623.0,Y=-1.0 (should be at baseline 0?)
	* uni1ED6: X=289.0,Y=984.0 (should be at ascender 982?)
	* uni01EA: X=481.0,Y=-2.0 (should be at baseline 0?)
	* Q: X=626.0,Y=-2.0 (should be at baseline 0?)
	* Q: X=652.0,Y=-2.0 (should be at baseline 0?)
	* Uhorn: X=752.5,Y=682.5 (should be at cap-height 682?)
	* uni1EE8: X=752.5,Y=682.5 (should be at cap-height 682?) and 83 more. [code: found-misalignments]

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
	* R: L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<430.0,317.0>-<455.5,276.5>> = 13.535856369134248
	* Racute: L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<430.0,317.0>-<455.5,276.5>> = 13.535856369134248
	* Rcaron: L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<430.0,317.0>-<455.5,276.5>> = 13.535856369134248
	* a: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* aacute: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* abreve: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* acircumflex: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* adieresis: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* agrave: L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461 and 77 more. [code: found-jaggy-segments]

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
<summary><b>[6] MontaguSlab144pt-Light.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EC4: X=227.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=421.0,Y=980.0 (should be at ascender 982?)
	* uni1EC4: X=352.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=263.0,Y=984.0 (should be at ascender 982?) and 49 more. [code: found-misalignments]

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
	* agrave: L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811 and 89 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-Medium.ttf</b></summary>
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
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7 [code: contour-count]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni01EA: X=511.0,Y=-2.0 (should be at baseline 0?)
	* Q: X=526.0,Y=1.0 (should be at baseline 0?)
	* Uogonek: X=493.0,Y=2.0 (should be at baseline 0?)
	* W: X=297.0,Y=-2.0 (should be at baseline 0?)
	* W: X=775.0,Y=-2.0 (should be at baseline 0?)
	* W: X=673.0,Y=-2.0 (should be at baseline 0?)
	* W: X=397.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=297.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=775.0,Y=-2.0 (should be at baseline 0?)
	* Wacute: X=673.0,Y=-2.0 (should be at baseline 0?) and 74 more. [code: found-misalignments]

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
	* R: L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<470.0,319.0>-<500.5,279.5>> = 8.13010235415596
	* Racute: L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<470.0,319.0>-<500.5,279.5>> = 8.13010235415596
	* Rcaron: L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<470.0,319.0>-<500.5,279.5>> = 8.13010235415596
	* a: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* aacute: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* abreve: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* acircumflex: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* adieresis: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* agrave: B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457 and 66 more. [code: found-jaggy-segments]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EC4: X=423.0,Y=984.0 (should be at ascender 982?)
	* uni1EC4: X=339.0,Y=983.0 (should be at ascender 982?)
	* uni1ED6: X=463.0,Y=984.0 (should be at ascender 982?)
	* uni1ED6: X=379.0,Y=983.0 (should be at ascender 982?)
	* uni01EA: X=501.0,Y=-2.0 (should be at baseline 0?)
	* uni022C: X=250.0,Y=984.0 (should be at ascender 982?) and 68 more. [code: found-misalignments]

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
	* R: L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<455.0,318.0>-<484.0,278.5>> = 10.388857815469619
	* Racute: L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<455.0,318.0>-<484.0,278.5>> = 10.388857815469619
	* Rcaron: L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<455.0,318.0>-<484.0,278.5>> = 10.388857815469619
	* a: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* aacute: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* abreve: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* acircumflex: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* adieresis: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* agrave: L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187 and 69 more. [code: found-jaggy-segments]

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
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: Q	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: onehalf	Contours detected: 4	Expected: 3
Glyph name: two	Contours detected: 2	Expected: 1
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7 [code: contour-count]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* uni1EC2: X=585.5,Y=984.0 (should be at ascender 982?)
	* uni1ED4: X=633.5,Y=984.0 (should be at ascender 982?)
	* uni01EA: X=520.0,Y=-2.0 (should be at baseline 0?)
	* Q: X=534.0,Y=1.0 (should be at baseline 0?)
	* uni1E9E: X=512.5,Y=683.5 (should be at cap-height 682?)
	* W: X=292.0,Y=-1.0 (should be at baseline 0?)
	* W: X=792.0,Y=-1.0 (should be at baseline 0?)
	* W: X=670.0,Y=-1.0 (should be at baseline 0?)
	* W: X=412.0,Y=-1.0 (should be at baseline 0?) and 68 more. [code: found-misalignments]

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
	* braceleft.case: B<<246.5,376.0>-<213.0,342.0>-<135.0,341.0>>/B<<135.0,341.0>-<213.0,340.0>-<246.5,306.0>> = 1.4690420685093497
	* braceleft: B<<253.5,317.5>-<219.0,274.0>-<126.0,273.0>>/B<<126.0,273.0>-<219.0,272.0>-<253.5,228.5>> = 1.232119816798608
	* braceright.case: B<<175.5,306.0>-<209.0,340.0>-<287.0,341.0>>/B<<287.0,341.0>-<209.0,342.0>-<175.5,376.0>> = 1.4690420685093497
	* braceright: B<<179.5,228.5>-<214.0,272.0>-<307.0,273.0>>/B<<307.0,273.0>-<214.0,274.0>-<179.5,317.5>> = 1.232119816798608
	* eng: L<<234.0,513.0>--<234.0,389.0>>/B<<234.0,389.0>-<245.0,453.0>-<283.5,487.0>> = 9.752424941653764 and 41 more. [code: found-jaggy-segments]

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
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

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
	* Euro: B<<665.0,641.0>-<734.0,588.0>-<756.0,500.0>>/L<<756.0,500.0>--<756.0,682.0>> = 14.036243467926484
	* G: L<<640.0,0.0>--<640.0,190.0>>/B<<640.0,190.0>-<617.0,99.0>-<551.5,43.0>> = 14.184294248270799
	* Gbreve: L<<640.0,0.0>--<640.0,190.0>>/B<<640.0,190.0>-<617.0,99.0>-<551.5,43.0>> = 14.184294248270799 and 116 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 86 | 1373 | 85 | 1230 | 0 |
| 0% | 0% | 3% | 49% | 3% | 44% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
