## Fontbakery report

Fontbakery version: 0.8.1

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
<summary><b>[6] MontaguSlab16pt-Bold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* comma (U+002C): X=193.0,Y=1.0 (should be at baseline 0?)
	* semicolon (U+003B): X=193.0,Y=1.0 (should be at baseline 0?)
	* at (U+0040): X=325.0,Y=-0.5 (should be at baseline 0?)
	* j (U+006A): X=38.0,Y=527.0 (should be at x-height 528?)
	* j (U+006A): X=285.0,Y=527.0 (should be at x-height 528?)
	* m (U+006D): X=43.0,Y=527.0 (should be at x-height 528?)
	* m (U+006D): X=266.0,Y=527.0 (should be at x-height 528?)
	* r (U+0072): X=43.0,Y=527.0 (should be at x-height 528?)
	* r (U+0072): X=268.0,Y=527.0 (should be at x-height 528?)
	* s (U+0073): X=412.0,Y=529.0 (should be at x-height 528?) and 33 more. [code: found-misalignments]

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
	* R (U+0052): L<<506.0,316.0>--<490.0,316.0>>/B<<490.0,316.0>-<546.0,306.0>-<569.5,267.5>> = 10.124671655397806
	* Racute (U+0154): L<<506.0,316.0>--<490.0,316.0>>/B<<490.0,316.0>-<546.0,306.0>-<569.5,267.5>> = 10.124671655397806
	* Rcaron (U+0158): L<<506.0,316.0>--<490.0,316.0>>/B<<490.0,316.0>-<546.0,306.0>-<569.5,267.5>> = 10.124671655397806
	* braceleft (U+007B): B<<252.0,314.5>-<216.0,293.0>-<149.0,291.0>>/B<<149.0,291.0>-<216.0,289.0>-<252.0,267.5>> = 3.419628088282934
	* braceright (U+007D): B<<228.5,267.5>-<265.0,289.0>-<331.0,291.0>>/B<<331.0,291.0>-<265.0,293.0>-<228.5,314.5>> = 3.4714091778567253
	* eng (U+014B): L<<268.0,528.0>--<268.0,410.0>>/B<<268.0,410.0>-<281.0,469.0>-<322.5,502.5>> = 12.425942865427485
	* eth (U+00F0): B<<368.0,480.0>-<410.0,457.0>-<433.0,402.0>>/B<<433.0,402.0>-<425.0,454.0>-<409.0,497.5>> = 13.94763268253713
	* lira (U+20A4): B<<365.5,193.5>-<345.0,161.0>-<291.0,150.0>>/L<<291.0,150.0>--<699.0,150.0>> = 11.513831184487014
	* m (U+006D): L<<266.0,527.0>--<266.0,411.0>>/B<<266.0,411.0>-<278.0,469.0>-<316.0,502.0>> = 11.689369175439202
	* n (U+006E): L<<268.0,528.0>--<268.0,411.0>>/B<<268.0,411.0>-<281.0,469.0>-<322.5,502.5>> = 12.633361935275003 and 39 more. [code: found-jaggy-segments]

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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* comma (U+002C): X=135.0,Y=-1.0 (should be at baseline 0?)
	* semicolon (U+003B): X=135.0,Y=-1.0 (should be at baseline 0?)
	* Q (U+0051): X=530.0,Y=-1.0 (should be at baseline 0?)
	* b (U+0062): X=115.0,Y=681.0 (should be at cap-height 682?)
	* b (U+0062): X=31.0,Y=681.0 (should be at cap-height 682?)
	* d (U+0064): X=500.0,Y=680.0 (should be at cap-height 682?)
	* d (U+0064): X=415.0,Y=680.0 (should be at cap-height 682?)
	* h (U+0068): X=127.0,Y=680.0 (should be at cap-height 682?)
	* h (U+0068): X=43.0,Y=680.0 (should be at cap-height 682?)
	* k (U+006B): X=366.0,Y=505.0 (should be at x-height 504?) and 81 more. [code: found-misalignments]

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
	* braceleft (U+007B): B<<199.0,324.0>-<168.0,290.0>-<110.0,287.0>>/B<<110.0,287.0>-<168.0,284.0>-<199.0,249.5>> = 5.921872268327562
	* braceright (U+007D): B<<223.5,249.5>-<255.0,284.0>-<313.0,287.0>>/B<<313.0,287.0>-<255.0,290.0>-<223.5,324.0>> = 5.921872268327562
	* eth (U+00F0): B<<411.5,478.5>-<462.0,451.0>-<489.0,393.0>>/B<<489.0,393.0>-<474.0,456.0>-<446.0,507.0>> = 11.570292077055889
	* nine (U+0039): B<<512.0,197.5>-<542.0,288.0>-<532.0,437.0>>/B<<532.0,437.0>-<524.0,355.0>-<466.5,304.0>> = 9.41179414191719
	* six (U+0036): B<<137.5,484.5>-<107.0,394.0>-<118.0,245.0>>/B<<118.0,245.0>-<125.0,327.0>-<183.0,378.0>> = 9.101503989149393
	* uni2076 (U+2076): B<<111.0,620.5>-<75.0,578.0>-<80.0,487.0>>/B<<80.0,487.0>-<85.0,517.0>-<114.0,538.5>> = 12.607279672723635
	* uni2079 (U+2079): B<<249.5,408.5>-<285.0,451.0>-<281.0,542.0>>/B<<281.0,542.0>-<275.0,512.0>-<246.5,490.5>> = 13.826808130959718
	* uni2086 (U+2086): B<<111.0,81.5>-<75.0,39.0>-<80.0,-52.0>>/B<<80.0,-52.0>-<85.0,-22.0>-<114.0,-0.5>> = 12.607279672723635 and uni2089 (U+2089): B<<249.5,-130.5>-<285.0,-88.0>-<281.0,3.0>>/B<<281.0,3.0>-<275.0,-27.0>-<246.5,-48.5>> = 13.826808130959718 [code: found-jaggy-segments]

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
 * tbar (U+0167): L<<178.0,163.0>--<179.0,300.0>> and tbar (U+0167): L<<180.0,330.0>--<181.0,470.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[9] MontaguSlab16pt-Light.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* Q (U+0051): X=534.0,Y=-1.0 (should be at baseline 0?)
	* R (U+0052): X=34.0,Y=683.0 (should be at cap-height 682?)
	* R (U+0052): X=459.0,Y=683.0 (should be at cap-height 682?)
	* k (U+006B): X=364.0,Y=508.0 (should be at x-height 507?)
	* k (U+006B): X=589.0,Y=508.0 (should be at x-height 507?)
	* t (U+0074): X=14.0,Y=505.0 (should be at x-height 507?)
	* t (U+0074): X=69.0,Y=505.0 (should be at x-height 507?)
	* questiondown (U+00BF): X=397.0,Y=-1.0 (should be at baseline 0?)
	* germandbls (U+00DF): X=340.0,Y=684.0 (should be at cap-height 682?)
	* eogonek (U+0119): X=377.0,Y=1.0 (should be at baseline 0?) and 39 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment L<<346.0,317.0>--<325.0,320.0>>
	* dollar (U+0024) contains a short segment B<<321.0,693.0>-<333.0,693.0>-<346.0,692.0>>
	* dollar (U+0024) contains a short segment L<<390.0,379.0>--<412.0,376.0>>
	* two (U+0032) contains a short segment L<<81.0,0.0>--<81.0,12.0>>
	* at (U+0040) contains a short segment B<<370.0,438.0>-<391.0,437.0>-<403.5,427.5>>
	* at (U+0040) contains a short segment B<<403.5,427.5>-<416.0,418.0>-<416.0,400.0>>
	* at (U+0040) contains a short segment B<<416.0,400.0>-<416.0,385.0>-<406.0,375.5>>
	* at (U+0040) contains a short segment B<<406.0,375.5>-<396.0,366.0>-<377.0,366.0>>
	* at (U+0040) contains a short segment B<<377.0,366.0>-<357.0,366.0>-<342.0,379.5>>
	* M (U+004D) contains a short segment L<<32.0,0.0>--<32.0,40.0>> and 85 more. [code: found-short-segments]

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
	* R (U+0052): L<<459.0,320.0>--<423.0,320.0>>/B<<423.0,320.0>-<477.0,307.0>-<501.5,266.0>> = 13.535856369134248
	* Racute (U+0154): L<<459.0,320.0>--<423.0,320.0>>/B<<423.0,320.0>-<477.0,307.0>-<501.5,266.0>> = 13.535856369134248
	* Rcaron (U+0158): L<<459.0,320.0>--<423.0,320.0>>/B<<423.0,320.0>-<477.0,307.0>-<501.5,266.0>> = 13.535856369134248
	* braceleft (U+007B): B<<212.0,326.5>-<180.0,290.0>-<116.0,287.0>>/B<<116.0,287.0>-<180.0,284.0>-<212.0,248.0>> = 5.36755031893786
	* braceright (U+007D): B<<220.0,248.0>-<252.0,284.0>-<316.0,287.0>>/B<<316.0,287.0>-<252.0,290.0>-<220.0,326.5>> = 5.36755031893786
	* eth (U+00F0): B<<405.0,478.5>-<454.0,451.0>-<480.0,394.0>>/B<<480.0,394.0>-<466.0,455.0>-<440.5,505.5>> = 11.593643563484813
	* nine (U+0039): B<<504.0,200.5>-<531.0,286.0>-<523.0,421.0>>/B<<523.0,421.0>-<513.0,346.0>-<457.0,299.0>> = 10.985982788387767
	* six (U+0036): B<<156.5,481.5>-<129.0,396.0>-<138.0,261.0>>/B<<138.0,261.0>-<147.0,336.0>-<203.0,383.0>> = 10.656848246921276
	* uni0156 (U+0156): L<<459.0,320.0>--<423.0,320.0>>/B<<423.0,320.0>-<477.0,307.0>-<501.5,266.0>> = 13.535856369134248
	* uni0210 (U+0210): L<<459.0,320.0>--<423.0,320.0>>/B<<423.0,320.0>-<477.0,307.0>-<501.5,266.0>> = 13.535856369134248 and 3 more. [code: found-jaggy-segments]

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
 * tbar (U+0167): L<<175.0,167.0>--<176.0,296.0>> and tbar (U+0167): L<<177.0,333.0>--<178.0,463.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-Medium.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* dollar (U+0024): X=408.0,Y=683.0 (should be at cap-height 682?)
	* R (U+0052): X=34.0,Y=684.0 (should be at cap-height 682?)
	* R (U+0052): X=481.0,Y=684.0 (should be at cap-height 682?)
	* k (U+006B): X=363.0,Y=519.0 (should be at x-height 518?)
	* k (U+006B): X=623.0,Y=519.0 (should be at x-height 518?)
	* s (U+0073): X=420.0,Y=519.0 (should be at x-height 518?)
	* s (U+0073): X=501.0,Y=519.0 (should be at x-height 518?)
	* v (U+0076): X=259.0,Y=-2.0 (should be at baseline 0?)
	* v (U+0076): X=367.0,Y=-2.0 (should be at baseline 0?)
	* w (U+0077): X=235.0,Y=-2.0 (should be at baseline 0?) and 67 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment B<<319.0,693.0>-<327.0,693.0>-<335.0,693.0>>
	* dollar (U+0024) contains a short segment L<<408.0,405.0>--<408.0,405.0>>
	* dollar (U+0024) contains a short segment B<<433.0,-11.0>-<420.0,-11.0>-<408.0,-11.0>>
	* two (U+0032) contains a short segment L<<77.0,0.0>--<77.0,23.0>>
	* five (U+0035) contains a short segment L<<482.0,500.0>--<482.0,523.0>>
	* at (U+0040) contains a short segment B<<432.0,404.0>-<432.0,383.0>-<417.5,369.5>>
	* y (U+0079) contains a short segment B<<130.0,-142.0>-<140.0,-143.0>-<151.0,-143.0>>
	* yen (U+00A5) contains a short segment L<<332.0,238.0>--<332.0,259.0>>
	* yen (U+00A5) contains a short segment L<<466.0,258.0>--<466.0,238.0>>
	* Ccedilla (U+00C7) contains a short segment B<<435.5,-139.0>-<445.0,-131.0>-<445.0,-118.0>> and 60 more. [code: found-short-segments]

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
	* R (U+0052): L<<484.0,318.0>--<458.0,318.0>>/B<<458.0,318.0>-<513.0,307.0>-<537.0,267.0>> = 11.309932474020195
	* Racute (U+0154): L<<484.0,318.0>--<458.0,318.0>>/B<<458.0,318.0>-<513.0,307.0>-<537.0,267.0>> = 11.309932474020195
	* Rcaron (U+0158): L<<484.0,318.0>--<458.0,318.0>>/B<<458.0,318.0>-<513.0,307.0>-<537.0,267.0>> = 11.309932474020195
	* braceleft (U+007B): B<<249.0,334.0>-<216.0,292.0>-<133.0,289.0>>/B<<133.0,289.0>-<216.0,286.0>-<249.0,244.5>> = 4.14006130608207
	* braceright (U+007D): B<<208.0,244.5>-<241.0,286.0>-<324.0,289.0>>/B<<324.0,289.0>-<241.0,292.0>-<208.0,334.0>> = 4.14006130608207
	* eth (U+00F0): B<<385.5,479.0>-<431.0,454.0>-<455.0,398.0>>/B<<455.0,398.0>-<444.0,455.0>-<424.0,501.5>> = 12.27578579377894
	* m (U+006D): L<<231.0,518.0>--<231.0,406.0>>/B<<231.0,406.0>-<245.0,464.0>-<284.0,494.5>> = 13.570434385161475
	* u (U+0075): L<<461.0,0.0>--<461.0,124.0>>/B<<461.0,124.0>-<445.0,58.0>-<399.5,24.0>> = 13.62699485989153
	* uacute (U+00FA): L<<461.0,0.0>--<461.0,124.0>>/B<<461.0,124.0>-<445.0,58.0>-<399.5,24.0>> = 13.62699485989153
	* ubreve (U+016D): L<<461.0,0.0>--<461.0,124.0>>/B<<461.0,124.0>-<445.0,58.0>-<399.5,24.0>> = 13.62699485989153 and 26 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab16pt-Regular.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* dollar (U+0024): X=340.0,Y=-2.0 (should be at baseline 0?)
	* Q (U+0051): X=541.0,Y=-2.0 (should be at baseline 0?)
	* R (U+0052): X=33.0,Y=683.0 (should be at cap-height 682?)
	* R (U+0052): X=470.0,Y=683.0 (should be at cap-height 682?)
	* f (U+0066): X=364.0,Y=683.0 (should be at cap-height 682?)
	* k (U+006B): X=361.0,Y=514.0 (should be at x-height 513?)
	* k (U+006B): X=606.0,Y=514.0 (should be at x-height 513?)
	* eogonek (U+0119): X=387.0,Y=1.0 (should be at baseline 0?)
	* Eng (U+014A): X=634.0,Y=-2.0 (should be at baseline 0?)
	* Racute (U+0154): X=33.0,Y=683.0 (should be at cap-height 682?) and 51 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment L<<340.0,301.0>--<332.0,302.0>>
	* dollar (U+0024) contains a short segment B<<320.0,693.0>-<330.0,693.0>-<340.0,693.0>>
	* dollar (U+0024) contains a short segment L<<399.0,393.0>--<410.0,391.0>>
	* ampersand (U+0026) contains a short segment L<<341.0,383.0>--<341.0,383.0>>
	* two (U+0032) contains a short segment L<<79.0,0.0>--<79.0,18.0>>
	* at (U+0040) contains a short segment B<<424.0,402.0>-<424.0,384.0>-<412.0,372.5>>
	* at (U+0040) contains a short segment B<<412.0,372.5>-<400.0,361.0>-<377.0,361.0>>
	* yen (U+00A5) contains a short segment L<<447.0,262.0>--<447.0,231.0>>
	* uni00B2 (U+00B2) contains a short segment L<<35.0,335.0>--<35.0,346.0>>
	* onehalf (U+00BD) contains a short segment L<<597.0,0.0>--<597.0,11.0>> and 36 more. [code: found-short-segments]

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
	* R (U+0052): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* Racute (U+0154): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* Rcaron (U+0158): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* braceleft (U+007B): B<<231.0,330.0>-<199.0,291.0>-<125.0,288.0>>/B<<125.0,288.0>-<199.0,285.0>-<231.0,246.0>> = 4.643061179665369
	* braceright (U+007D): B<<214.5,246.0>-<247.0,285.0>-<320.0,288.0>>/B<<320.0,288.0>-<247.0,291.0>-<214.5,330.0>> = 4.706593732216495
	* eth (U+00F0): B<<395.0,479.0>-<442.0,453.0>-<467.0,396.0>>/B<<467.0,396.0>-<455.0,455.0>-<432.0,503.5>> = 12.18552470695263
	* uni0156 (U+0156): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* uni0210 (U+0210): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* uni0212 (U+0212): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* uni1E5A (U+1E5A): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924
	* uni1E5E (U+1E5E): L<<472.0,319.0>--<440.0,319.0>>/B<<440.0,319.0>-<495.0,307.0>-<519.5,266.5>> = 12.308015817427924 and uni20B9 (U+20B9): L<<386.0,312.0>--<357.0,312.0>>/B<<357.0,312.0>-<411.0,299.0>-<434.5,259.0>> = 13.535856369134248 [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab16pt-SemiBold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment B<<318.0,694.0>-<325.0,694.0>-<331.0,693.0>>
	* dollar (U+0024) contains a short segment B<<438.0,-12.0>-<426.0,-12.0>-<415.0,-11.0>>
	* dollar (U+0024) contains a short segment L<<415.0,79.0>--<417.0,79.0>>
	* five (U+0035) contains a short segment L<<476.0,490.0>--<476.0,505.0>>
	* at (U+0040) contains a short segment B<<474.0,464.0>-<455.0,464.0>-<437.0,461.0>>
	* at (U+0040) contains a short segment B<<437.0,461.0>-<419.0,458.0>-<404.0,450.0>>
	* Q (U+0051) contains a short segment B<<452.0,-15.0>-<444.0,-16.0>-<435.0,-16.0>>
	* r (U+0072) contains a short segment B<<404.0,470.0>-<398.0,471.0>-<391.0,471.0>>
	* yen (U+00A5) contains a short segment L<<322.0,245.0>--<322.0,255.0>>
	* yen (U+00A5) contains a short segment L<<482.0,254.0>--<482.0,245.0>> and 57 more. [code: found-short-segments]

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
	* R (U+0052): L<<494.0,317.0>--<473.0,317.0>>/B<<473.0,317.0>-<529.0,306.0>-<552.5,267.0>> = 11.113040535948294
	* Racute (U+0154): L<<494.0,317.0>--<473.0,317.0>>/B<<473.0,317.0>-<529.0,306.0>-<552.5,267.0>> = 11.113040535948294
	* Rcaron (U+0158): L<<494.0,317.0>--<473.0,317.0>>/B<<473.0,317.0>-<529.0,306.0>-<552.5,267.0>> = 11.113040535948294
	* braceleft (U+007B): B<<264.5,337.0>-<231.0,293.0>-<141.0,290.0>>/B<<141.0,290.0>-<231.0,287.0>-<264.5,243.0>> = 3.8183048659927747
	* braceright (U+007D): B<<203.5,243.0>-<237.0,287.0>-<327.0,290.0>>/B<<327.0,290.0>-<237.0,293.0>-<203.5,337.0>> = 3.8183048659927747
	* eng (U+014B): L<<249.0,523.0>--<249.0,400.0>>/B<<249.0,400.0>-<264.0,463.0>-<307.5,497.0>> = 13.392497753751098
	* eth (U+00F0): B<<377.5,479.5>-<421.0,455.0>-<445.0,400.0>>/B<<445.0,400.0>-<435.0,455.0>-<417.0,500.0>> = 13.269859733146578
	* m (U+006D): L<<247.0,522.0>--<247.0,408.0>>/B<<247.0,408.0>-<260.0,466.0>-<298.5,498.0>> = 12.633361935275003
	* n (U+006E): L<<249.0,523.0>--<249.0,400.0>>/B<<249.0,400.0>-<264.0,463.0>-<307.5,496.5>> = 13.392497753751098
	* nacute (U+0144): L<<249.0,523.0>--<249.0,400.0>>/B<<249.0,400.0>-<264.0,463.0>-<307.5,496.5>> = 13.392497753751098 and 37 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab16pt-Thin.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* comma (U+002C): X=126.0,Y=-1.0 (should be at baseline 0?)
	* semicolon (U+003B): X=126.0,Y=-1.0 (should be at baseline 0?)
	* k (U+006B): X=368.0,Y=501.0 (should be at x-height 500?)
	* k (U+006B): X=567.0,Y=501.0 (should be at x-height 500?)
	* t (U+0074): X=12.0,Y=499.0 (should be at x-height 500?)
	* t (U+0074): X=85.0,Y=499.0 (should be at x-height 500?)
	* germandbls (U+00DF): X=456.0,Y=683.0 (should be at cap-height 682?)
	* atilde (U+00E3): X=383.0,Y=684.0 (should be at cap-height 682?)
	* atilde (U+00E3): X=405.0,Y=684.0 (should be at cap-height 682?)
	* ntilde (U+00F1): X=424.0,Y=684.0 (should be at cap-height 682?) and 39 more. [code: found-misalignments]

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
	* braceleft (U+007B): B<<186.0,321.5>-<155.0,289.0>-<104.0,286.0>>/B<<104.0,286.0>-<155.0,283.0>-<186.0,250.5>> = 6.732921326859609
	* braceright (U+007D): B<<228.0,250.5>-<259.0,283.0>-<310.0,286.0>>/B<<310.0,286.0>-<259.0,289.0>-<228.0,321.5>> = 6.732921326859609
	* eth (U+00F0): B<<418.5,478.5>-<470.0,450.0>-<497.0,391.0>>/B<<497.0,391.0>-<481.0,456.0>-<451.0,508.5>> = 10.761466193915874
	* nine (U+0039): B<<533.0,247.5>-<550.0,331.0>-<541.0,452.0>>/B<<541.0,452.0>-<536.0,364.0>-<476.0,309.0>> = 7.505782036483042
	* six (U+0036): B<<106.0,434.5>-<89.0,351.0>-<98.0,230.0>>/B<<98.0,230.0>-<103.0,319.0>-<163.0,373.5>> = 7.46932042786736
	* uni01EB (U+01EB): B<<505.0,83.0>-<456.0,19.0>-<375.0,0.0>>/L<<375.0,0.0>--<375.0,0.0>> = 13.201087175705565
	* uni2076 (U+2076): B<<100.5,624.5>-<63.0,581.0>-<67.0,484.0>>/B<<67.0,484.0>-<72.0,516.0>-<101.5,539.0>> = 11.24203380869584
	* uni2079 (U+2079): B<<249.5,409.5>-<287.0,453.0>-<282.0,550.0>>/B<<282.0,550.0>-<278.0,519.0>-<248.5,495.5>> = 10.303158468898733
	* uni2086 (U+2086): B<<100.5,80.5>-<63.0,37.0>-<67.0,-60.0>>/B<<67.0,-60.0>-<72.0,-28.0>-<101.5,-5.0>> = 11.24203380869584 and uni2089 (U+2089): B<<249.5,-134.5>-<287.0,-91.0>-<282.0,6.0>>/B<<282.0,6.0>-<278.0,-25.0>-<248.5,-48.5>> = 10.303158468898733 [code: found-jaggy-segments]

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
 * t (U+0074): L<<156.0,158.0>--<157.0,477.0>>
 * tcaron (U+0165): L<<156.0,158.0>--<157.0,477.0>>
 * uni0163 (U+0163): L<<156.0,158.0>--<157.0,477.0>>
 * uni021B (U+021B): L<<156.0,158.0>--<157.0,477.0>>
 * uni1E6D (U+1E6D): L<<156.0,158.0>--<157.0,477.0>> and uni1E6F (U+1E6F): L<<156.0,158.0>--<157.0,477.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Bold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* ampersand (U+0026): X=403.0,Y=-1.5 (should be at baseline 0?)
	* six (U+0036): X=453.0,Y=682.5 (should be at cap-height 682?)
	* nine (U+0039): X=217.5,Y=-0.5 (should be at baseline 0?)
	* f (U+0066): X=497.5,Y=681.5 (should be at cap-height 682?)
	* uni00B5 (U+00B5): X=215.5,Y=1.5 (should be at baseline 0?)
	* atilde (U+00E3): X=311.0,Y=680.0 (should be at cap-height 682?)
	* ntilde (U+00F1): X=341.0,Y=680.0 (should be at cap-height 682?)
	* otilde (U+00F5): X=325.0,Y=680.0 (should be at cap-height 682?)
	* itilde (U+0129): X=190.0,Y=680.0 (should be at cap-height 682?)
	* scedilla (U+015F): X=246.0,Y=1.0 (should be at baseline 0?) and 31 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment B<<410.0,-15.0>-<406.0,-15.0>-<403.0,-15.0>>
	* ampersand (U+0026) contains a short segment B<<597.5,119.0>-<607.0,113.0>-<618.0,113.0>>
	* five (U+0035) contains a short segment L<<456.0,480.0>--<456.0,482.0>>
	* at (U+0040) contains a short segment B<<417.5,430.5>-<432.0,417.0>-<432.0,393.0>>
	* at (U+0040) contains a short segment B<<665.0,164.0>-<665.0,145.0>-<675.5,134.0>>
	* at (U+0040) contains a short segment B<<675.5,134.0>-<686.0,123.0>-<705.0,123.0>>
	* E (U+0045) contains a short segment L<<294.0,396.0>--<309.0,396.0>>
	* F (U+0046) contains a short segment L<<287.0,390.0>--<299.0,390.0>>
	* Q (U+0051) contains a short segment L<<419.0,-15.0>--<416.0,-15.0>>
	* Q (U+0051) contains a short segment B<<416.0,71.0>-<416.0,71.0>-<416.5,71.0>> and 72 more. [code: found-short-segments]

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
	* B (U+0042): B<<633.5,407.0>-<590.0,368.0>-<517.0,357.0>>/B<<517.0,357.0>-<609.0,349.0>-<661.0,309.5>> = 13.538882607947905
	* R (U+0052): L<<468.0,327.0>--<427.0,327.0>>/B<<427.0,327.0>-<496.0,320.0>-<530.5,282.0>> = 5.79279649503215
	* Racute (U+0154): L<<468.0,327.0>--<427.0,327.0>>/B<<427.0,327.0>-<496.0,320.0>-<530.5,282.0>> = 5.79279649503215
	* Rcaron (U+0158): L<<468.0,327.0>--<427.0,327.0>>/B<<427.0,327.0>-<496.0,320.0>-<530.5,282.0>> = 5.79279649503215
	* at (U+0040): L<<555.0,166.0>--<555.0,168.0>>/B<<555.0,168.0>-<542.0,100.0>-<499.0,67.5>> = 10.823011226207075
	* braceleft (U+007B): B<<241.0,294.5>-<204.0,274.0>-<137.0,273.0>>/B<<137.0,273.0>-<204.0,273.0>-<241.0,252.0>> = 0.8550973962666929
	* braceright (U+007D): B<<202.0,252.0>-<239.0,273.0>-<306.0,273.0>>/B<<306.0,273.0>-<239.0,274.0>-<202.0,294.5>> = 0.8550973962666929
	* eng (U+014B): L<<255.0,518.0>--<255.0,397.0>>/B<<255.0,397.0>-<264.0,458.0>-<300.0,492.5>> = 8.392925187392485
	* eth (U+00F0): B<<331.0,488.5>-<368.0,470.0>-<387.0,424.0>>/B<<387.0,424.0>-<369.0,508.0>-<323.0,578.0>> = 10.347996288282216
	* lira (U+20A4): B<<335.0,194.5>-<308.0,158.0>-<233.0,140.0>>/L<<233.0,140.0>--<636.0,140.0>> = 13.495733280795811 and 41 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[9] MontaguSlab144pt-ExtraLight.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* Q (U+0051): X=626.0,Y=-2.0 (should be at baseline 0?)
	* Q (U+0051): X=652.0,Y=-2.0 (should be at baseline 0?)
	* f (U+0066): X=398.5,Y=681.5 (should be at cap-height 682?)
	* g (U+0067): X=126.5,Y=-2.0 (should be at baseline 0?)
	* t (U+0074): X=8.0,Y=492.0 (should be at x-height 494?)
	* t (U+0074): X=63.0,Y=492.0 (should be at x-height 494?)
	* atilde (U+00E3): X=203.0,Y=683.0 (should be at cap-height 682?)
	* aring (U+00E5): X=309.0,Y=682.5 (should be at cap-height 682?)
	* aring (U+00E5): X=225.0,Y=682.5 (should be at cap-height 682?)
	* ntilde (U+00F1): X=229.0,Y=683.0 (should be at cap-height 682?) and 63 more. [code: found-misalignments]

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
	* ampersand (U+0026): L<<261.0,382.0>--<262.0,381.0>> -> L<<262.0,381.0>--<498.0,116.0>> [code: found-colinear-vectors]

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
	* B (U+0042): B<<565.5,400.0>-<526.0,360.0>-<455.0,350.0>>/B<<455.0,350.0>-<538.0,343.0>-<585.0,300.5>> = 12.83785915174798
	* R (U+0052): L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<430.0,317.0>-<455.5,276.5>> = 13.535856369134248
	* Racute (U+0154): L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<430.0,317.0>-<455.5,276.5>> = 13.535856369134248
	* Rcaron (U+0158): L<<426.0,330.0>--<376.0,330.0>>/B<<376.0,330.0>-<430.0,317.0>-<455.5,276.5>> = 13.535856369134248
	* a (U+0061): L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* aacute (U+00E1): L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* abreve (U+0103): L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* acircumflex (U+00E2): L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* adieresis (U+00E4): L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461
	* agrave (U+00E0): L<<396.0,86.0>--<396.0,144.0>>/B<<396.0,144.0>-<377.0,64.0>-<326.5,28.0>> = 13.360218444764461 and 68 more. [code: found-jaggy-segments]

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
 * t (U+0074): L<<133.0,138.0>--<135.0,467.0>>
 * tbar (U+0167): L<<153.0,311.0>--<154.0,467.0>>
 * tcaron (U+0165): L<<133.0,138.0>--<135.0,467.0>>
 * uni0163 (U+0163): L<<133.0,138.0>--<135.0,467.0>>
 * uni021B (U+021B): L<<133.0,138.0>--<135.0,467.0>>
 * uni1E6D (U+1E6D): L<<133.0,138.0>--<135.0,467.0>> and uni1E6F (U+1E6F): L<<133.0,138.0>--<135.0,467.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Light.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* Q (U+0051): X=508.0,Y=2.0 (should be at baseline 0?)
	* t (U+0074): X=7.0,Y=495.0 (should be at x-height 497?)
	* t (U+0074): X=57.0,Y=495.0 (should be at x-height 497?)
	* eogonek (U+0119): X=352.0,Y=1.0 (should be at baseline 0?)
	* uni01EA (U+01EA): X=489.0,Y=-2.0 (should be at baseline 0?)
	* ogonek (U+02DB): X=134.0,Y=1.0 (should be at baseline 0?)
	* hookabovecomb (U+0309): X=105.0,Y=681.0 (should be at cap-height 682?)
	* uni0328 (U+0328): X=134.0,Y=1.0 (should be at baseline 0?)
	* uni1EA3 (U+1EA3): X=245.0,Y=681.0 (should be at cap-height 682?)
	* uni1EA9 (U+1EA9): X=442.5,Y=680.5 (should be at cap-height 682?) and 28 more. [code: found-misalignments]

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
	* B (U+0042): B<<575.5,401.0>-<535.0,361.0>-<464.0,351.0>>/B<<464.0,351.0>-<549.0,344.0>-<597.0,302.0>> = 12.724945318027565
	* R (U+0052): L<<432.0,329.0>--<384.0,329.0>>/B<<384.0,329.0>-<441.0,317.0>-<467.5,277.0>> = 11.888658039627968
	* Racute (U+0154): L<<432.0,329.0>--<384.0,329.0>>/B<<384.0,329.0>-<441.0,317.0>-<467.5,277.0>> = 11.888658039627968
	* Rcaron (U+0158): L<<432.0,329.0>--<384.0,329.0>>/B<<384.0,329.0>-<441.0,317.0>-<467.5,277.0>> = 11.888658039627968
	* a (U+0061): L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* aacute (U+00E1): L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* abreve (U+0103): L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* acircumflex (U+00E2): L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* adieresis (U+00E4): L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811
	* agrave (U+00E0): L<<390.0,95.0>--<390.0,138.0>>/B<<390.0,138.0>-<372.0,61.0>-<322.5,26.5>> = 13.157542740014811 and 73 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab144pt-Medium.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* dollar (U+0024): X=389.0,Y=681.0 (should be at cap-height 682?)
	* ampersand (U+0026): X=402.0,Y=2.0 (should be at baseline 0?)
	* comma (U+002C): X=157.0,Y=2.0 (should be at baseline 0?)
	* semicolon (U+003B): X=157.0,Y=2.0 (should be at baseline 0?)
	* Q (U+0051): X=526.0,Y=1.0 (should be at baseline 0?)
	* W (U+0057): X=297.0,Y=-2.0 (should be at baseline 0?)
	* W (U+0057): X=775.0,Y=-2.0 (should be at baseline 0?)
	* W (U+0057): X=673.0,Y=-2.0 (should be at baseline 0?)
	* W (U+0057): X=397.0,Y=-2.0 (should be at baseline 0?)
	* g (U+0067): X=134.0,Y=2.0 (should be at baseline 0?) and 74 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment L<<323.0,283.0>--<313.0,285.0>>
	* dollar (U+0024) contains a short segment B<<404.0,-14.0>-<396.0,-14.0>-<389.0,-13.0>>
	* ampersand (U+0026) contains a short segment L<<215.0,342.0>--<214.0,342.0>>
	* five (U+0035) contains a short segment L<<462.0,501.0>--<462.0,523.0>>
	* at (U+0040) contains a short segment B<<390.0,425.5>-<406.0,414.0>-<406.0,391.0>>
	* at (U+0040) contains a short segment B<<406.0,391.0>-<406.0,369.0>-<391.5,356.0>>
	* at (U+0040) contains a short segment B<<662.0,117.0>-<675.0,102.0>-<699.0,102.0>>
	* f (U+0066) contains a short segment L<<122.0,508.0>--<122.0,527.0>>
	* yen (U+00A5) contains a short segment L<<317.0,250.0>--<317.0,265.0>>
	* yen (U+00A5) contains a short segment L<<449.0,267.0>--<449.0,250.0>> and 51 more. [code: found-short-segments]

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
	* B (U+0042): B<<606.0,403.5>-<564.0,364.0>-<491.0,354.0>>/B<<491.0,354.0>-<580.0,347.0>-<630.5,306.0>> = 12.297339498849466
	* R (U+0052): L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<470.0,319.0>-<500.5,279.5>> = 8.13010235415596
	* Racute (U+0154): L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<470.0,319.0>-<500.5,279.5>> = 8.13010235415596
	* Rcaron (U+0158): L<<451.0,328.0>--<407.0,328.0>>/B<<407.0,328.0>-<470.0,319.0>-<500.5,279.5>> = 8.13010235415596
	* a (U+0061): B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* aacute (U+00E1): B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* abreve (U+0103): B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* acircumflex (U+00E2): B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* adieresis (U+00E4): B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457
	* agrave (U+00E0): B<<404.5,24.5>-<375.0,59.0>-<375.0,122.0>>/B<<375.0,122.0>-<358.0,54.0>-<312.0,22.0>> = 14.036243467926457 and 64 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Regular.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* dollar (U+0024): X=382.0,Y=683.0 (should be at cap-height 682?)
	* comma (U+002C): X=140.0,Y=1.0 (should be at baseline 0?)
	* semicolon (U+003B): X=140.0,Y=1.0 (should be at baseline 0?)
	* Q (U+0051): X=517.0,Y=2.0 (should be at baseline 0?)
	* v (U+0076): X=247.0,Y=-2.0 (should be at baseline 0?)
	* v (U+0076): X=315.0,Y=-2.0 (should be at baseline 0?)
	* w (U+0077): X=217.0,Y=-2.0 (should be at baseline 0?)
	* w (U+0077): X=564.0,Y=-2.0 (should be at baseline 0?)
	* w (U+0077): X=499.0,Y=-2.0 (should be at baseline 0?)
	* w (U+0077): X=286.0,Y=-2.0 (should be at baseline 0?) and 61 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* dollar (U+0024) contains a short segment L<<329.0,300.0>--<308.0,304.0>>
	* dollar (U+0024) contains a short segment L<<382.0,390.0>--<385.0,389.0>>
	* dollar (U+0024) contains a short segment B<<400.0,-13.0>-<391.0,-13.0>-<382.0,-13.0>>
	* ampersand (U+0026) contains a short segment B<<222.0,347.0>-<221.0,348.0>-<219.5,349.5>>
	* ampersand (U+0026) contains a short segment B<<219.5,349.5>-<218.0,351.0>-<217.0,353.0>>
	* two (U+0032) contains a short segment L<<66.0,0.0>--<66.0,18.0>>
	* at (U+0040) contains a short segment B<<336.0,432.0>-<362.0,431.0>-<377.0,421.0>>
	* at (U+0040) contains a short segment B<<377.0,421.0>-<392.0,411.0>-<392.0,390.0>>
	* at (U+0040) contains a short segment B<<392.0,390.0>-<392.0,371.0>-<380.0,360.0>>
	* at (U+0040) contains a short segment B<<380.0,360.0>-<368.0,349.0>-<346.0,349.0>> and 70 more. [code: found-short-segments]

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
	* B (U+0042): B<<590.5,402.5>-<549.0,363.0>-<477.0,353.0>>/B<<477.0,353.0>-<564.0,346.0>-<613.5,304.5>> = 12.507258369221715
	* R (U+0052): L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<455.0,318.0>-<484.0,278.5>> = 10.388857815469619
	* Racute (U+0154): L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<455.0,318.0>-<484.0,278.5>> = 10.388857815469619
	* Rcaron (U+0158): L<<442.0,329.0>--<395.0,329.0>>/B<<395.0,329.0>-<455.0,318.0>-<484.0,278.5>> = 10.388857815469619
	* a (U+0061): L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* aacute (U+00E1): L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* abreve (U+0103): L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* acircumflex (U+00E2): L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* adieresis (U+00E4): L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187
	* agrave (U+00E0): L<<382.0,109.0>--<382.0,129.0>>/B<<382.0,129.0>-<365.0,57.0>-<317.0,24.0>> = 13.284866484902187 and 65 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[8] MontaguSlab144pt-SemiBold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* Q (U+0051): X=534.0,Y=1.0 (should be at baseline 0?)
	* W (U+0057): X=292.0,Y=-1.0 (should be at baseline 0?)
	* W (U+0057): X=792.0,Y=-1.0 (should be at baseline 0?)
	* W (U+0057): X=670.0,Y=-1.0 (should be at baseline 0?)
	* W (U+0057): X=412.0,Y=-1.0 (should be at baseline 0?)
	* v (U+0076): X=240.0,Y=-1.0 (should be at baseline 0?)
	* v (U+0076): X=345.0,Y=-1.0 (should be at baseline 0?)
	* w (U+0077): X=215.0,Y=-1.0 (should be at baseline 0?)
	* w (U+0077): X=618.0,Y=-1.0 (should be at baseline 0?)
	* w (U+0077): X=518.0,Y=-1.0 (should be at baseline 0?) and 67 more. [code: found-misalignments]

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
	* uhorn (U+01B0): L<<319.0,513.0>--<526.0,513.0>> -> L<<526.0,513.0>--<526.0,513.0>>
	* uni1EE9 (U+1EE9): L<<319.0,513.0>--<526.0,513.0>> -> L<<526.0,513.0>--<526.0,513.0>>
	* uni1EEB (U+1EEB): L<<319.0,513.0>--<526.0,513.0>> -> L<<526.0,513.0>--<526.0,513.0>>
	* uni1EED (U+1EED): L<<319.0,513.0>--<526.0,513.0>> -> L<<526.0,513.0>--<526.0,513.0>>
	* uni1EEF (U+1EEF): L<<319.0,513.0>--<526.0,513.0>> -> L<<526.0,513.0>--<526.0,513.0>> and uni1EF1 (U+1EF1): L<<319.0,513.0>--<526.0,513.0>> -> L<<526.0,513.0>--<526.0,513.0>> [code: found-colinear-vectors]

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
	* B (U+0042): B<<618.5,405.5>-<576.0,366.0>-<503.0,355.0>>/B<<503.0,355.0>-<593.0,348.0>-<644.5,307.5>> = 13.016526729928092
	* R (U+0052): L<<459.0,328.0>--<417.0,328.0>>/B<<417.0,328.0>-<483.0,319.0>-<515.0,280.5>> = 7.765166018425308
	* Racute (U+0154): L<<459.0,328.0>--<417.0,328.0>>/B<<417.0,328.0>-<483.0,319.0>-<515.0,280.5>> = 7.765166018425308
	* Rcaron (U+0158): L<<459.0,328.0>--<417.0,328.0>>/B<<417.0,328.0>-<483.0,319.0>-<515.0,280.5>> = 7.765166018425308
	* at (U+0040): L<<563.0,162.0>--<563.0,170.0>>/B<<563.0,170.0>-<549.0,101.0>-<505.0,68.5>> = 11.469530332866904
	* braceleft (U+007B): B<<253.5,317.5>-<219.0,274.0>-<126.0,273.0>>/B<<126.0,273.0>-<219.0,272.0>-<253.5,228.5>> = 1.232119816798608
	* braceright (U+007D): B<<179.5,228.5>-<214.0,272.0>-<307.0,273.0>>/B<<307.0,273.0>-<214.0,274.0>-<179.5,317.5>> = 1.232119816798608
	* eng (U+014B): L<<234.0,513.0>--<234.0,389.0>>/B<<234.0,389.0>-<245.0,453.0>-<283.5,487.0>> = 9.752424941653764
	* eth (U+00F0): B<<344.0,484.5>-<383.0,464.0>-<404.0,414.0>>/B<<404.0,414.0>-<383.0,507.0>-<331.0,582.0>> = 10.058050045059323
	* m (U+006D): L<<229.0,513.0>--<229.0,397.0>>/B<<229.0,397.0>-<239.0,456.0>-<273.5,488.5>> = 9.61972779969886 and 39 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] MontaguSlab144pt-Thin.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---
Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.
As we approach the EOL date, it is now considered better to completely remove
the table.
But if you still want your font to support OpenType features on Office 2013,
then you may find it handy to add a fake signature on a dummy DSIG table by
running one of the helper scripts provided at
https://github.com/googlefonts/gftools
Reference: https://github.com/googlefonts/fontbakery/issues/1845</pre>

* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a dummy placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]

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
	* exclam (U+0021): X=89.5,Y=2.0 (should be at baseline 0?)
	* exclam (U+0021): X=128.5,Y=2.0 (should be at baseline 0?)
	* quotedbl (U+0022): X=108.5,Y=680.0 (should be at cap-height 682?)
	* quotedbl (U+0022): X=217.5,Y=680.0 (should be at cap-height 682?)
	* quotesingle (U+0027): X=108.5,Y=680.0 (should be at cap-height 682?)
	* asterisk (U+002A): X=223.0,Y=680.0 (should be at cap-height 682?)
	* asterisk (U+002A): X=243.0,Y=680.0 (should be at cap-height 682?)
	* comma (U+002C): X=100.0,Y=-1.0 (should be at baseline 0?)
	* period (U+002E): X=69.5,Y=2.0 (should be at baseline 0?)
	* period (U+002E): X=108.5,Y=2.0 (should be at baseline 0?) and 76 more. [code: found-misalignments]

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
	* B (U+0042): B<<555.0,399.5>-<516.0,359.0>-<446.0,349.0>>/B<<446.0,349.0>-<528.0,342.0>-<574.0,299.0>> = 13.009376137162674
	* C (U+0043): B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Cacute (U+0106): B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Ccaron (U+010C): B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Ccedilla (U+00C7): B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Ccircumflex (U+0108): B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Cdotaccent (U+010A): B<<544.0,641.0>-<613.0,588.0>-<635.0,500.0>>/L<<635.0,500.0>--<635.0,682.0>> = 14.036243467926484
	* Euro (U+20AC): B<<665.0,641.0>-<734.0,588.0>-<756.0,500.0>>/L<<756.0,500.0>--<756.0,682.0>> = 14.036243467926484
	* G (U+0047): L<<640.0,0.0>--<640.0,190.0>>/B<<640.0,190.0>-<617.0,99.0>-<551.5,43.0>> = 14.184294248270799
	* Gbreve (U+011E): L<<640.0,0.0>--<640.0,190.0>>/B<<640.0,190.0>-<617.0,99.0>-<551.5,43.0>> = 14.184294248270799 and 102 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 107 | 1373 | 85 | 1209 | 0 |
| 0% | 0% | 4% | 49% | 3% | 44% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
