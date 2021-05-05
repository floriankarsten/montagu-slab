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
<summary><b>[4] MontaguSlab14pt-Bold.otf</b></summary>
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
	* Cdotaccent: X=1113.0,Y=1798.0 (should be at ascender 1800?)
	* Cdotaccent: X=625.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=1071.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=583.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=1093.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=605.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=692.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=204.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=1172.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=684.0,Y=1798.0 (should be at ascender 1800?) and 18 more. [code: found-misalignments]

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
	* braceleft: B<<664.0,243.0>-<664.0,525.0>-<534.0,609.0>-<298.0,630.0>>/B<<298.0,630.0>-<534.0,651.0>-<664.0,735.0>-<664.0,1017.0>> = 10.169921209443624
	* braceright: B<<302.0,1017.0>-<302.0,735.0>-<432.0,651.0>-<668.0,630.0>>/B<<668.0,630.0>-<432.0,609.0>-<302.0,525.0>-<302.0,243.0>> = 10.169921209443624
	* eng: B<<968.0,1187.0>-<729.0,1187.0>-<624.0,1083.0>-<587.0,911.0>>/L<<587.0,911.0>--<587.0,1160.0>> = 12.14024796027822
	* m: B<<946.0,1186.0>-<711.0,1186.0>-<613.0,1078.0>-<581.0,900.0>>/L<<581.0,900.0>--<581.0,1160.0>> = 10.191501850027656
	* n: B<<968.0,1187.0>-<729.0,1187.0>-<624.0,1083.0>-<587.0,911.0>>/L<<587.0,911.0>--<587.0,1160.0>> = 12.14024796027822
	* nacute: B<<968.0,1187.0>-<729.0,1187.0>-<624.0,1083.0>-<587.0,911.0>>/L<<587.0,911.0>--<587.0,1160.0>> = 12.14024796027822
	* ncaron: B<<968.0,1187.0>-<729.0,1187.0>-<624.0,1083.0>-<587.0,911.0>>/L<<587.0,911.0>--<587.0,1160.0>> = 12.14024796027822
	* ntilde: B<<968.0,1187.0>-<729.0,1187.0>-<624.0,1083.0>-<587.0,911.0>>/L<<587.0,911.0>--<587.0,1160.0>> = 12.14024796027822
	* u: B<<581.0,-26.0>-<820.0,-26.0>-<925.0,78.0>-<962.0,250.0>>/L<<962.0,250.0>--<962.0,0.0>> = 12.14024796027822
	* uacute: B<<581.0,-26.0>-<820.0,-26.0>-<925.0,78.0>-<962.0,250.0>>/L<<962.0,250.0>--<962.0,0.0>> = 12.14024796027822 and 25 more. [code: found-jaggy-segments]

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
	* k: L<<223.0,1370.0>--<222.0,210.0>>
	* k: L<<622.0,644.0>--<623.0,1580.0>>
	* uni0137: L<<223.0,1370.0>--<222.0,210.0>> and uni0137: L<<622.0,644.0>--<623.0,1580.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab14pt-ExtraLight.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '200' when it should be '275'. [code: bad-value]

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
	* Atilde: X=864.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EBC: X=818.0,Y=1802.0 (should be at ascender 1800?)
	* Itilde: X=374.0,Y=1802.0 (should be at ascender 1800?)
	* Ntilde: X=924.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EE0: X=921.0,Y=1802.0 (should be at ascender 1800?)
	* uni01EA: X=1130.0,Y=-1.0 (should be at baseline 0?)
	* Otilde: X=921.0,Y=1802.0 (should be at ascender 1800?)
	* uni022C: X=921.0,Y=1802.0 (should be at ascender 1800?)
	* R: X=986.0,Y=1501.0 (should be at cap-height 1500?)
	* R: X=75.0,Y=1501.0 (should be at cap-height 1500?) and 78 more. [code: found-misalignments]

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
	* braceleft: B<<520.0,265.0>-<532.0,483.0>-<417.0,567.0>-<248.0,578.0>>/B<<248.0,578.0>-<417.0,589.0>-<532.0,673.0>-<520.0,891.0>> = 7.448115945496511
	* braceright: B<<409.0,891.0>-<396.0,673.0>-<512.0,589.0>-<681.0,578.0>>/B<<681.0,578.0>-<512.0,567.0>-<396.0,483.0>-<409.0,265.0>> = 7.448115945496511
	* eth: B<<834.0,1316.0>-<940.0,1197.0>-<1021.0,1054.0>-<1067.0,882.0>>/B<<1067.0,882.0>-<983.0,1038.0>-<832.0,1112.0>-<642.0,1112.0>> = 13.327879999219425
	* nine.dnom: B<<357.0,265.0>-<505.0,265.0>-<589.0,344.0>-<606.0,432.0>>/B<<606.0,432.0>-<622.0,158.0>-<497.0,39.0>-<339.0,39.0>> = 14.275760643016918
	* nine.lf: B<<640.0,562.0>-<936.0,562.0>-<1107.0,732.0>-<1129.0,987.0>>/B<<1129.0,987.0>-<1180.0,299.0>-<908.0,43.0>-<598.0,43.0>> = 9.170417655344817
	* nine.numr: B<<357.0,1033.0>-<505.0,1033.0>-<589.0,1112.0>-<606.0,1200.0>>/B<<606.0,1200.0>-<622.0,926.0>-<497.0,807.0>-<339.0,807.0>> = 14.275760643016918
	* nine: B<<640.0,562.0>-<936.0,562.0>-<1107.0,732.0>-<1129.0,987.0>>/B<<1129.0,987.0>-<1180.0,299.0>-<908.0,43.0>-<598.0,43.0>> = 9.170417655344817
	* six.dnom: B<<410.0,467.0>-<262.0,467.0>-<178.0,388.0>-<162.0,300.0>>/B<<162.0,300.0>-<146.0,574.0>-<270.0,693.0>-<429.0,693.0>> = 13.646790326027142
	* six.lf: B<<725.0,938.0>-<429.0,938.0>-<258.0,768.0>-<237.0,513.0>>/B<<237.0,513.0>-<186.0,1201.0>-<458.0,1457.0>-<768.0,1457.0>> = 8.94731459774408
	* six.numr: B<<410.0,1235.0>-<262.0,1235.0>-<178.0,1156.0>-<162.0,1068.0>>/B<<162.0,1068.0>-<146.0,1342.0>-<270.0,1461.0>-<429.0,1461.0>> = 13.646790326027142 and 5 more. [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* i.loclTRK.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* i.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* iacute.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* icircumflex.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* idieresis.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* igrave.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* imacron.ss01: L<<266.0,1044.0>--<263.0,217.0>>
	* l.ss01: L<<263.0,1498.0>--<260.0,225.0>>
	* lacute.ss01: L<<263.0,1498.0>--<260.0,225.0>> and 12 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab14pt-Light.otf</b></summary>
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
	* uni1EBA: X=860.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EC8: X=425.0,Y=1798.0 (should be at ascender 1800?)
	* uni1ECE: X=965.0,Y=1798.0 (should be at ascender 1800?)
	* uni1EDE: X=965.0,Y=1798.0 (should be at ascender 1800?)
	* uni01EA: X=1144.0,Y=-1.0 (should be at baseline 0?)
	* R: X=1002.0,Y=1502.0 (should be at cap-height 1500?)
	* R: X=74.0,Y=1502.0 (should be at cap-height 1500?)
	* Racute: X=1002.0,Y=1502.0 (should be at cap-height 1500?)
	* Racute: X=74.0,Y=1502.0 (should be at cap-height 1500?) and 29 more. [code: found-misalignments]

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
	* AE contains a short segment L<<568.0,0.0>--<568.0,88.0>>
	* AE contains a short segment L<<973.0,88.0>--<973.0,0.0>>
	* AE contains a short segment L<<871.0,1500.0>--<871.0,1412.0>>
	* AE contains a short segment L<<30.0,88.0>--<30.0,0.0>>
	* AEacute contains a short segment L<<568.0,0.0>--<568.0,88.0>>
	* AEacute contains a short segment L<<973.0,88.0>--<973.0,0.0>>
	* AEacute contains a short segment L<<871.0,1500.0>--<871.0,1412.0>>
	* AEacute contains a short segment L<<30.0,88.0>--<30.0,0.0>>
	* M contains a short segment L<<627.0,0.0>--<627.0,88.0>>
	* M contains a short segment L<<1531.0,88.0>--<1531.0,0.0>> and 68 more. [code: found-short-segments]

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
	* braceleft: B<<542.0,261.0>-<553.0,490.0>-<435.0,574.0>-<255.0,586.0>>/B<<255.0,586.0>-<435.0,598.0>-<553.0,682.0>-<542.0,911.0>> = 7.628149668580618
	* braceright: B<<392.0,911.0>-<382.0,682.0>-<499.0,598.0>-<679.0,586.0>>/B<<679.0,586.0>-<499.0,574.0>-<382.0,490.0>-<392.0,261.0>> = 7.628149668580618
	* eth: B<<838.0,1300.0>-<933.0,1185.0>-<1006.0,1050.0>-<1049.0,890.0>>/B<<1049.0,890.0>-<966.0,1039.0>-<819.0,1108.0>-<635.0,1108.0>> = 14.077060476870855
	* nine.lf: B<<635.0,559.0>-<916.0,559.0>-<1078.0,717.0>-<1106.0,952.0>>/B<<1106.0,952.0>-<1152.0,314.0>-<897.0,64.0>-<602.0,64.0>> = 10.918605988832546
	* nine: B<<635.0,559.0>-<916.0,559.0>-<1078.0,717.0>-<1106.0,952.0>>/B<<1106.0,952.0>-<1152.0,314.0>-<897.0,64.0>-<602.0,64.0>> = 10.918605988832546
	* six.lf: B<<751.0,941.0>-<469.0,941.0>-<307.0,783.0>-<279.0,548.0>>/B<<279.0,548.0>-<233.0,1186.0>-<488.0,1436.0>-<783.0,1436.0>> = 10.918605988832546 and six: B<<751.0,941.0>-<469.0,941.0>-<307.0,783.0>-<279.0,548.0>>/B<<279.0,548.0>-<233.0,1186.0>-<488.0,1436.0>-<783.0,1436.0>> = 10.918605988832546 [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* i.loclTRK.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* i.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* iacute.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* icircumflex.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* idieresis.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* igrave.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* imacron.ss01: L<<266.0,1029.0>--<260.0,237.0>>
	* k: L<<274.0,1479.0>--<273.0,87.0>>
	* l.ss01: L<<257.0,1479.0>--<249.0,253.0>> and 6 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab14pt-Medium.otf</b></summary>
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
	* Scedilla contains a short segment B<<880.0,-29.0>-<890.0,-29.0>-<900.0,-29.0>-<910.0,-29.0>>
	* Uhorn contains a short segment L<<1584.0,1341.0>--<1596.0,1341.0>>
	* uni1EE8 contains a short segment L<<1584.0,1341.0>--<1596.0,1341.0>>
	* uni1EF0 contains a short segment L<<1584.0,1341.0>--<1596.0,1341.0>>
	* uni1EEA contains a short segment L<<1584.0,1341.0>--<1596.0,1341.0>>
	* uni1EEC contains a short segment L<<1584.0,1341.0>--<1596.0,1341.0>>
	* uni1EEE contains a short segment L<<1584.0,1341.0>--<1596.0,1341.0>>
	* Uogonek contains a short segment B<<912.0,-23.0>-<932.0,-23.0>-<951.0,-22.0>-<970.0,-21.0>>
	* eogonek contains a short segment B<<681.0,-23.0>-<684.0,-23.0>-<686.0,-23.0>-<689.0,-22.0>>
	* uni01EB contains a short segment B<<731.0,-23.0>-<739.0,-23.0>-<746.0,-22.0>-<753.0,-22.0>> and 23 more. [code: found-short-segments]

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
	* braceleft: B<<606.0,252.0>-<611.0,508.0>-<487.0,592.0>-<278.0,609.0>>/B<<278.0,609.0>-<487.0,626.0>-<611.0,710.0>-<606.0,967.0>> = 9.300369699772505
	* braceright: B<<345.0,967.0>-<340.0,710.0>-<464.0,626.0>-<673.0,609.0>>/B<<673.0,609.0>-<464.0,592.0>-<340.0,508.0>-<345.0,252.0>> = 9.300369699772505
	* eng: B<<907.0,1162.0>-<685.0,1162.0>-<557.0,1060.0>-<508.0,868.0>>/L<<508.0,868.0>--<508.0,1139.0>> = 14.316759118933225
	* m: B<<858.0,1162.0>-<657.0,1162.0>-<546.0,1068.0>-<504.0,897.0>>/L<<504.0,897.0>--<504.0,1139.0>> = 13.799485396019362
	* n: B<<907.0,1162.0>-<685.0,1162.0>-<557.0,1060.0>-<508.0,868.0>>/L<<508.0,868.0>--<508.0,1139.0>> = 14.316759118933225
	* nacute: B<<907.0,1162.0>-<685.0,1162.0>-<557.0,1060.0>-<508.0,868.0>>/L<<508.0,868.0>--<508.0,1139.0>> = 14.316759118933225
	* ncaron: B<<907.0,1162.0>-<685.0,1162.0>-<557.0,1060.0>-<508.0,868.0>>/L<<508.0,868.0>--<508.0,1139.0>> = 14.316759118933225
	* ntilde: B<<907.0,1162.0>-<685.0,1162.0>-<557.0,1060.0>-<508.0,868.0>>/L<<508.0,868.0>--<508.0,1139.0>> = 14.316759118933225
	* u: B<<594.0,-23.0>-<819.0,-23.0>-<948.0,82.0>-<995.0,279.0>>/L<<995.0,279.0>--<995.0,0.0>> = 13.418708081068738
	* uacute: B<<594.0,-23.0>-<819.0,-23.0>-<948.0,82.0>-<995.0,279.0>>/L<<995.0,279.0>--<995.0,0.0>> = 13.418708081068738 and 25 more. [code: found-jaggy-segments]

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
	* k: L<<247.0,1421.0>--<246.0,152.0>>
	* k: L<<524.0,578.0>--<525.0,1573.0>>
	* uni0137: L<<247.0,1421.0>--<246.0,152.0>> and uni0137: L<<524.0,578.0>--<525.0,1573.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab14pt-Regular.otf</b></summary>
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
	* Atilde: X=738.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EBC: X=678.0,Y=1801.0 (should be at ascender 1800?)
	* Itilde: X=258.0,Y=1801.0 (should be at ascender 1800?)
	* Ntilde: X=781.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EE0: X=787.0,Y=1801.0 (should be at ascender 1800?)
	* uni01EA: X=1164.0,Y=-2.0 (should be at baseline 0?)
	* Otilde: X=787.0,Y=1801.0 (should be at ascender 1800?)
	* uni022C: X=787.0,Y=1801.0 (should be at ascender 1800?)
	* uni1EEE: X=808.0,Y=1801.0 (should be at ascender 1800?)
	* Utilde: X=803.0,Y=1801.0 (should be at ascender 1800?) and 9 more. [code: found-misalignments]

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
	* Scedilla contains a short segment B<<865.0,-27.0>-<876.0,-28.0>-<887.0,-28.0>-<898.0,-28.0>>
	* Uhorn contains a short segment L<<1564.0,1374.0>--<1577.0,1374.0>>
	* uni1EE8 contains a short segment L<<1564.0,1374.0>--<1577.0,1374.0>>
	* uni1EF0 contains a short segment L<<1564.0,1374.0>--<1577.0,1374.0>>
	* uni1EEA contains a short segment L<<1564.0,1374.0>--<1577.0,1374.0>>
	* uni1EEC contains a short segment L<<1564.0,1374.0>--<1577.0,1374.0>>
	* uni1EEE contains a short segment L<<1564.0,1374.0>--<1577.0,1374.0>>
	* ae contains a short segment L<<1905.0,577.0>--<1905.0,624.0>>
	* aeacute contains a short segment L<<1905.0,577.0>--<1905.0,624.0>>
	* ccedilla contains a short segment L<<687.0,-21.0>--<688.0,-21.0>> and 13 more. [code: found-short-segments]

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
	* braceleft: B<<575.0,256.0>-<582.0,499.0>-<462.0,583.0>-<267.0,598.0>>/B<<267.0,598.0>-<462.0,612.0>-<582.0,696.0>-<575.0,939.0>> = 8.505202520165941
	* braceright: B<<368.0,939.0>-<360.0,696.0>-<481.0,612.0>-<676.0,598.0>>/B<<676.0,598.0>-<481.0,583.0>-<360.0,499.0>-<368.0,256.0>> = 8.505202520165941
	* nine.lf: B<<626.0,556.0>-<886.0,556.0>-<1036.0,695.0>-<1073.0,899.0>>/B<<1073.0,899.0>-<1112.0,335.0>-<881.0,94.0>-<609.0,94.0>> = 14.235774185578746
	* nine: B<<626.0,556.0>-<886.0,556.0>-<1036.0,695.0>-<1073.0,899.0>>/B<<1073.0,899.0>-<1112.0,335.0>-<881.0,94.0>-<609.0,94.0>> = 14.235774185578746
	* percent: B<<1091.0,1025.0>-<1071.0,1031.0>-<1050.0,1036.0>-<1027.0,1039.0>>/B<<1027.0,1039.0>-<1051.0,1038.0>-<1073.0,1034.0>-<1093.0,1027.0>> = 5.045463940783612
	* percent: B<<865.0,476.0>-<885.0,469.0>-<907.0,464.0>-<930.0,461.0>>/B<<930.0,461.0>-<906.0,462.0>-<884.0,467.0>-<864.0,474.0>> = 5.045463940783612
	* perthousand: B<<1091.0,1025.0>-<1071.0,1031.0>-<1049.0,1036.0>-<1027.0,1039.0>>/B<<1027.0,1039.0>-<1051.0,1038.0>-<1073.0,1034.0>-<1093.0,1027.0>> = 5.379221988036438
	* perthousand: B<<864.0,474.0>-<881.0,469.0>-<899.0,465.0>-<918.0,462.0>>/B<<918.0,462.0>-<899.0,464.0>-<880.0,468.0>-<864.0,474.0>> = 2.9636206574017616
	* perthousand: B<<918.0,462.0>-<899.0,464.0>-<880.0,468.0>-<864.0,474.0>>/B<<864.0,474.0>-<881.0,469.0>-<899.0,465.0>-<918.0,462.0>> = 4.166504885548603
	* six.lf: B<<788.0,944.0>-<528.0,944.0>-<378.0,805.0>-<341.0,601.0>>/B<<341.0,601.0>-<303.0,1165.0>-<533.0,1406.0>-<805.0,1406.0>> = 14.134657130912794 and 22 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab14pt-SemiBold.otf</b></summary>
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
	* AE contains a short segment L<<1488.0,682.0>--<1568.0,682.0>>
	* AE contains a short segment L<<1730.0,1138.0>--<1730.0,1079.0>>
	* AEacute contains a short segment L<<1488.0,682.0>--<1568.0,682.0>>
	* AEacute contains a short segment L<<1730.0,1138.0>--<1730.0,1079.0>>
	* E contains a short segment L<<871.0,1138.0>--<871.0,1079.0>>
	* Eacute contains a short segment L<<871.0,1138.0>--<871.0,1079.0>>
	* Ebreve contains a short segment L<<871.0,1138.0>--<871.0,1079.0>>
	* Ecaron contains a short segment L<<871.0,1138.0>--<871.0,1079.0>>
	* Ecircumflex contains a short segment L<<871.0,1138.0>--<871.0,1079.0>>
	* uni1EBE contains a short segment L<<871.0,1138.0>--<871.0,1079.0>> and 86 more. [code: found-short-segments]

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
	* braceleft: B<<633.0,248.0>-<636.0,516.0>-<509.0,600.0>-<287.0,619.0>>/B<<287.0,619.0>-<509.0,638.0>-<636.0,722.0>-<633.0,990.0>> = 9.783544360954512
	* braceright: B<<325.0,990.0>-<322.0,722.0>-<449.0,638.0>-<671.0,619.0>>/B<<671.0,619.0>-<449.0,600.0>-<322.0,516.0>-<325.0,248.0>> = 9.783544360954512
	* eng: B<<935.0,1174.0>-<705.0,1174.0>-<588.0,1071.0>-<545.0,888.0>>/L<<545.0,888.0>--<545.0,1149.0>> = 13.223067652701344
	* m: B<<899.0,1173.0>-<683.0,1173.0>-<577.0,1073.0>-<540.0,899.0>>/L<<540.0,899.0>--<540.0,1149.0>> = 12.004775557721103
	* n: B<<935.0,1174.0>-<705.0,1174.0>-<588.0,1071.0>-<545.0,888.0>>/L<<545.0,888.0>--<545.0,1149.0>> = 13.223067652701344
	* nacute: B<<935.0,1174.0>-<705.0,1174.0>-<588.0,1071.0>-<545.0,888.0>>/L<<545.0,888.0>--<545.0,1149.0>> = 13.223067652701344
	* ncaron: B<<935.0,1174.0>-<705.0,1174.0>-<588.0,1071.0>-<545.0,888.0>>/L<<545.0,888.0>--<545.0,1149.0>> = 13.223067652701344
	* ntilde: B<<935.0,1174.0>-<705.0,1174.0>-<588.0,1071.0>-<545.0,888.0>>/L<<545.0,888.0>--<545.0,1149.0>> = 13.223067652701344
	* u: B<<588.0,-24.0>-<820.0,-24.0>-<937.0,80.0>-<980.0,266.0>>/L<<980.0,266.0>--<980.0,0.0>> = 13.01711218907748
	* uacute: B<<588.0,-24.0>-<820.0,-24.0>-<937.0,80.0>-<980.0,266.0>>/L<<980.0,266.0>--<980.0,0.0>> = 13.01711218907748 and 25 more. [code: found-jaggy-segments]

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
	* k: L<<236.0,1398.0>--<235.0,179.0>> and uni0137: L<<236.0,1398.0>--<235.0,179.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab14pt-Thin.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '100' when it should be '250'. [code: bad-value]

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
	* u: X=306.0,Y=1102.0 (should be at x-height 1100?)
	* u: X=72.0,Y=1102.0 (should be at x-height 1100?) and uni2086: X=381.0,Y=1.0 (should be at baseline 0?) [code: found-misalignments]

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
	* braceleft: B<<498.0,268.0>-<512.0,477.0>-<399.0,561.0>-<240.0,570.0>>/B<<240.0,570.0>-<399.0,579.0>-<512.0,663.0>-<498.0,872.0>> = 6.479400592204234
	* braceright: B<<425.0,872.0>-<411.0,663.0>-<524.0,579.0>-<683.0,570.0>>/B<<683.0,570.0>-<524.0,561.0>-<411.0,477.0>-<425.0,268.0>> = 6.479400592204234
	* eth: B<<828.0,1332.0>-<946.0,1209.0>-<1036.0,1058.0>-<1085.0,873.0>>/B<<1085.0,873.0>-<1001.0,1036.0>-<846.0,1116.0>-<650.0,1116.0>> = 12.428753365802743
	* nine.dnom: B<<356.0,261.0>-<511.0,261.0>-<598.0,347.0>-<611.0,442.0>>/B<<611.0,442.0>-<628.0,149.0>-<496.0,26.0>-<332.0,26.0>> = 11.112683785841709
	* nine.lf: B<<646.0,564.0>-<957.0,564.0>-<1136.0,747.0>-<1151.0,1023.0>>/B<<1151.0,1023.0>-<1207.0,285.0>-<919.0,22.0>-<593.0,22.0>> = 7.450172164958889
	* nine.numr: B<<356.0,1041.0>-<511.0,1041.0>-<598.0,1127.0>-<611.0,1222.0>>/B<<611.0,1222.0>-<628.0,929.0>-<496.0,806.0>-<332.0,806.0>> = 11.112683785841709
	* nine: B<<646.0,564.0>-<957.0,564.0>-<1136.0,747.0>-<1151.0,1023.0>>/B<<1151.0,1023.0>-<1207.0,285.0>-<919.0,22.0>-<593.0,22.0>> = 7.450172164958889
	* six.dnom: B<<387.0,459.0>-<232.0,459.0>-<145.0,373.0>-<132.0,278.0>>/B<<132.0,278.0>-<115.0,571.0>-<247.0,694.0>-<411.0,694.0>> = 11.112683785841709
	* six.lf: B<<700.0,936.0>-<389.0,936.0>-<210.0,753.0>-<195.0,477.0>>/B<<195.0,477.0>-<139.0,1215.0>-<427.0,1478.0>-<753.0,1478.0>> = 7.450172164958889
	* six.numr: B<<387.0,1239.0>-<232.0,1239.0>-<145.0,1153.0>-<132.0,1058.0>>/B<<132.0,1058.0>-<115.0,1351.0>-<247.0,1474.0>-<411.0,1474.0>> = 11.112683785841709 and 5 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab144pt-Bold.otf</b></summary>
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
	* Cdotaccent: X=1051.0,Y=1798.0 (should be at ascender 1800?)
	* Cdotaccent: X=619.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=1004.0,Y=1798.0 (should be at ascender 1800?)
	* Edotaccent: X=572.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=1063.0,Y=1798.0 (should be at ascender 1800?)
	* Gdotaccent: X=631.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=670.0,Y=1798.0 (should be at ascender 1800?)
	* Idotaccent: X=238.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=1101.0,Y=1798.0 (should be at ascender 1800?)
	* uni1E44: X=669.0,Y=1798.0 (should be at ascender 1800?) and 15 more. [code: found-misalignments]

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
	* B: B<<1531.0,420.0>-<1531.0,653.0>-<1366.0,764.0>-<1095.0,786.0>>/B<<1095.0,786.0>-<1309.0,819.0>-<1447.0,932.0>-<1447.0,1138.0>> = 13.407420372583838
	* R: B<<1252.0,367.0>-<1252.0,598.0>-<1151.0,694.0>-<947.0,708.0>>/L<<947.0,708.0>--<1042.0,708.0>> = 3.92590770368392
	* Racute: B<<1252.0,367.0>-<1252.0,598.0>-<1151.0,694.0>-<947.0,708.0>>/L<<947.0,708.0>--<1042.0,708.0>> = 3.92590770368392
	* Rcaron: B<<1252.0,367.0>-<1252.0,598.0>-<1151.0,694.0>-<947.0,708.0>>/L<<947.0,708.0>--<1042.0,708.0>> = 3.92590770368392
	* braceleft: B<<646.0,163.0>-<646.0,474.0>-<502.0,567.0>-<240.0,590.0>>/B<<240.0,590.0>-<502.0,613.0>-<646.0,706.0>-<646.0,1017.0>> = 10.033842073089573
	* braceright: B<<276.0,1017.0>-<276.0,706.0>-<420.0,613.0>-<682.0,590.0>>/B<<682.0,590.0>-<420.0,567.0>-<276.0,474.0>-<276.0,163.0>> = 10.033842073089573
	* eng: B<<914.0,1166.0>-<688.0,1166.0>-<590.0,1066.0>-<558.0,901.0>>/L<<558.0,901.0>--<558.0,1140.0>> = 10.975655172812548
	* m: B<<895.0,1166.0>-<672.0,1166.0>-<577.0,1066.0>-<546.0,902.0>>/L<<546.0,902.0>--<546.0,1140.0>> = 10.704006749277978
	* n: B<<914.0,1166.0>-<688.0,1166.0>-<590.0,1066.0>-<558.0,901.0>>/L<<558.0,901.0>--<558.0,1140.0>> = 10.975655172812548
	* nacute: B<<914.0,1166.0>-<688.0,1166.0>-<590.0,1066.0>-<558.0,901.0>>/L<<558.0,901.0>--<558.0,1140.0>> = 10.975655172812548 and 35 more. [code: found-jaggy-segments]

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
	* k: L<<205.0,1308.0>--<204.0,192.0>>
	* k: L<<35.0,192.0>--<34.0,0.0>>
	* k: L<<604.0,650.0>--<605.0,1500.0>>
	* uni0137: L<<205.0,1308.0>--<204.0,192.0>>
	* uni0137: L<<35.0,192.0>--<34.0,0.0>> and uni0137: L<<604.0,650.0>--<605.0,1500.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-ExtraLight.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '200' when it should be '275'. [code: bad-value]

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
	* A: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* A: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* Aacute: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* Aacute: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* Abreve: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* Abreve: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EAE: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EAE: X=798.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EB6: X=876.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EB6: X=798.0,Y=1501.0 (should be at cap-height 1500?) and 63 more. [code: found-misalignments]

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
	* B: B<<1384.0,395.0>-<1384.0,625.0>-<1238.0,748.0>-<995.0,769.0>>/B<<995.0,769.0>-<1201.0,800.0>-<1324.0,919.0>-<1324.0,1123.0>> = 13.497180665584374
	* R: B<<1088.0,371.0>-<1088.0,567.0>-<1016.0,686.0>-<849.0,724.0>>/L<<849.0,724.0>--<935.0,724.0>> = 12.81909416524376
	* Racute: B<<1088.0,371.0>-<1088.0,567.0>-<1016.0,686.0>-<849.0,724.0>>/L<<849.0,724.0>--<935.0,724.0>> = 12.81909416524376
	* Rcaron: B<<1088.0,371.0>-<1088.0,567.0>-<1016.0,686.0>-<849.0,724.0>>/L<<849.0,724.0>--<935.0,724.0>> = 12.81909416524376
	* a: B<<443.0,-17.0>-<649.0,-17.0>-<806.0,79.0>-<862.0,308.0>>/L<<862.0,308.0>--<862.0,187.0>> = 13.741514691425412
	* aacute: B<<443.0,-17.0>-<649.0,-17.0>-<806.0,79.0>-<862.0,308.0>>/L<<862.0,308.0>--<862.0,187.0>> = 13.741514691425412
	* abreve: B<<443.0,-17.0>-<649.0,-17.0>-<806.0,79.0>-<862.0,308.0>>/L<<862.0,308.0>--<862.0,187.0>> = 13.741514691425412
	* acircumflex: B<<443.0,-17.0>-<649.0,-17.0>-<806.0,79.0>-<862.0,308.0>>/L<<862.0,308.0>--<862.0,187.0>> = 13.741514691425412
	* adieresis: B<<443.0,-17.0>-<649.0,-17.0>-<806.0,79.0>-<862.0,308.0>>/L<<862.0,308.0>--<862.0,187.0>> = 13.741514691425412
	* agrave: B<<443.0,-17.0>-<649.0,-17.0>-<806.0,79.0>-<862.0,308.0>>/L<<862.0,308.0>--<862.0,187.0>> = 13.741514691425412 and 71 more. [code: found-jaggy-segments]

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
	* R: L<<996.0,392.0>--<997.0,214.0>>
	* Racute: L<<996.0,392.0>--<997.0,214.0>>
	* Rcaron: L<<996.0,392.0>--<997.0,214.0>>
	* dotlessi.ss01: L<<239.0,1031.0>--<236.0,215.0>>
	* i.loclTRK.ss01: L<<239.0,1031.0>--<236.0,215.0>>
	* i.ss01: L<<239.0,1031.0>--<236.0,215.0>>
	* iacute.ss01: L<<239.0,1031.0>--<236.0,215.0>>
	* icircumflex.ss01: L<<239.0,1031.0>--<236.0,215.0>>
	* idieresis.ss01: L<<239.0,1031.0>--<236.0,215.0>>
	* igrave.ss01: L<<239.0,1031.0>--<236.0,215.0>> and 20 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab144pt-Light.otf</b></summary>
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
	* B: B<<1406.0,399.0>-<1406.0,630.0>-<1258.0,751.0>-<1010.0,771.0>>/B<<1010.0,771.0>-<1218.0,803.0>-<1343.0,921.0>-<1343.0,1126.0>> = 13.35681158121582
	* R: B<<1113.0,371.0>-<1113.0,570.0>-<1038.0,686.0>-<869.0,721.0>>/L<<869.0,721.0>--<952.0,721.0>> = 11.700579462815819
	* Racute: B<<1113.0,371.0>-<1113.0,570.0>-<1038.0,686.0>-<869.0,721.0>>/L<<869.0,721.0>--<952.0,721.0>> = 11.700579462815819
	* Rcaron: B<<1113.0,371.0>-<1113.0,570.0>-<1038.0,686.0>-<869.0,721.0>>/L<<869.0,721.0>--<952.0,721.0>> = 11.700579462815819
	* a: B<<440.0,-19.0>-<643.0,-19.0>-<794.0,76.0>-<849.0,298.0>>/L<<849.0,298.0>--<849.0,208.0>> = 13.914725559963687
	* aacute: B<<440.0,-19.0>-<643.0,-19.0>-<794.0,76.0>-<849.0,298.0>>/L<<849.0,298.0>--<849.0,208.0>> = 13.914725559963687
	* abreve: B<<440.0,-19.0>-<643.0,-19.0>-<794.0,76.0>-<849.0,298.0>>/L<<849.0,298.0>--<849.0,208.0>> = 13.914725559963687
	* acircumflex: B<<440.0,-19.0>-<643.0,-19.0>-<794.0,76.0>-<849.0,298.0>>/L<<849.0,298.0>--<849.0,208.0>> = 13.914725559963687
	* adieresis: B<<440.0,-19.0>-<643.0,-19.0>-<794.0,76.0>-<849.0,298.0>>/L<<849.0,298.0>--<849.0,208.0>> = 13.914725559963687
	* agrave: B<<440.0,-19.0>-<643.0,-19.0>-<794.0,76.0>-<849.0,298.0>>/L<<849.0,298.0>--<849.0,208.0>> = 13.914725559963687 and 63 more. [code: found-jaggy-segments]

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
	* dotlessi.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* i.loclTRK.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* i.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* iacute.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* icircumflex.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* idieresis.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* igrave.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* imacron.ss01: L<<236.0,1018.0>--<231.0,232.0>>
	* l.ss01: L<<214.0,1422.0>--<206.0,248.0>>
	* lacute.ss01: L<<214.0,1422.0>--<206.0,248.0>> and 5 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] MontaguSlab144pt-Medium.otf</b></summary>
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
	* Amacron: X=1219.0,Y=1799.0 (should be at ascender 1800?)
	* Amacron: X=534.0,Y=1799.0 (should be at ascender 1800?)
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
	* Scedilla contains a short segment B<<855.0,-29.0>-<860.0,-29.0>-<865.0,-29.0>-<870.0,-29.0>>
	* Uhorn contains a short segment L<<1495.0,1357.0>--<1507.0,1357.0>>
	* uni1EE8 contains a short segment L<<1495.0,1357.0>--<1507.0,1357.0>>
	* uni1EF0 contains a short segment L<<1495.0,1357.0>--<1507.0,1357.0>>
	* uni1EEA contains a short segment L<<1495.0,1357.0>--<1507.0,1357.0>>
	* uni1EEC contains a short segment L<<1495.0,1357.0>--<1507.0,1357.0>>
	* uni1EEE contains a short segment L<<1495.0,1357.0>--<1507.0,1357.0>>
	* Uogonek contains a short segment B<<866.0,-23.0>-<882.0,-23.0>-<898.0,-22.0>-<914.0,-22.0>>
	* ae contains a short segment L<<1801.0,576.0>--<1801.0,620.0>>
	* aeacute contains a short segment L<<1801.0,576.0>--<1801.0,620.0>> and 28 more. [code: found-short-segments]

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
	* B: B<<1472.0,410.0>-<1472.0,642.0>-<1315.0,758.0>-<1054.0,779.0>>/B<<1054.0,779.0>-<1266.0,811.0>-<1398.0,926.0>-<1398.0,1132.0>> = 13.183717146377159
	* R: B<<1186.0,369.0>-<1186.0,581.0>-<1101.0,688.0>-<919.0,714.0>>/L<<919.0,714.0>--<999.0,714.0>> = 8.13010235415596
	* Racute: B<<1186.0,369.0>-<1186.0,581.0>-<1101.0,688.0>-<919.0,714.0>>/L<<919.0,714.0>--<999.0,714.0>> = 8.13010235415596
	* Rcaron: B<<1186.0,369.0>-<1186.0,581.0>-<1101.0,688.0>-<919.0,714.0>>/L<<919.0,714.0>--<999.0,714.0>> = 8.13010235415596
	* a: B<<430.0,-23.0>-<624.0,-23.0>-<760.0,67.0>-<809.0,270.0>>/L<<809.0,270.0>--<809.0,269.0>> = 13.570434385161475
	* aacute: B<<430.0,-23.0>-<624.0,-23.0>-<760.0,67.0>-<809.0,270.0>>/L<<809.0,270.0>--<809.0,269.0>> = 13.570434385161475
	* abreve: B<<430.0,-23.0>-<624.0,-23.0>-<760.0,67.0>-<809.0,270.0>>/L<<809.0,270.0>--<809.0,269.0>> = 13.570434385161475
	* acircumflex: B<<430.0,-23.0>-<624.0,-23.0>-<760.0,67.0>-<809.0,270.0>>/L<<809.0,270.0>--<809.0,269.0>> = 13.570434385161475
	* adieresis: B<<430.0,-23.0>-<624.0,-23.0>-<760.0,67.0>-<809.0,270.0>>/L<<809.0,270.0>--<809.0,269.0>> = 13.570434385161475
	* agrave: B<<430.0,-23.0>-<624.0,-23.0>-<760.0,67.0>-<809.0,270.0>>/L<<809.0,270.0>--<809.0,269.0>> = 13.570434385161475 and 60 more. [code: found-jaggy-segments]

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
	* k: L<<222.0,1362.0>--<221.0,138.0>> and uni0137: L<<222.0,1362.0>--<221.0,138.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[4] MontaguSlab144pt-Regular.otf</b></summary>
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
	* Aring: X=1093.0,Y=1802.0 (should be at ascender 1800?)
	* Aring: X=631.0,Y=1802.0 (should be at ascender 1800?)
	* Aring: X=748.0,Y=1802.0 (should be at ascender 1800?)
	* Aring: X=977.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=1093.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=631.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=748.0,Y=1802.0 (should be at ascender 1800?)
	* Aringacute: X=977.0,Y=1802.0 (should be at ascender 1800?)
	* uni1EBA: X=812.0,Y=1798.0 (should be at ascender 1800?) and 17 more. [code: found-misalignments]

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
	* Scedilla contains a short segment B<<843.0,-27.0>-<850.0,-28.0>-<857.0,-28.0>-<865.0,-28.0>>
	* Uhorn contains a short segment L<<1476.0,1388.0>--<1489.0,1388.0>>
	* uni1EE8 contains a short segment L<<1476.0,1388.0>--<1489.0,1388.0>>
	* uni1EF0 contains a short segment L<<1476.0,1388.0>--<1489.0,1388.0>>
	* uni1EEA contains a short segment L<<1476.0,1388.0>--<1489.0,1388.0>>
	* uni1EEC contains a short segment L<<1476.0,1388.0>--<1489.0,1388.0>>
	* uni1EEE contains a short segment L<<1476.0,1388.0>--<1489.0,1388.0>>
	* ae contains a short segment L<<1792.0,579.0>--<1792.0,614.0>>
	* aeacute contains a short segment L<<1792.0,579.0>--<1792.0,614.0>>
	* eogonek contains a short segment B<<618.0,-21.0>-<624.0,-21.0>-<630.0,-21.0>-<637.0,-20.0>> and 26 more. [code: found-short-segments]

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
	* B: B<<1440.0,404.0>-<1440.0,636.0>-<1287.0,754.0>-<1033.0,775.0>>/B<<1033.0,775.0>-<1242.0,807.0>-<1371.0,923.0>-<1371.0,1129.0>> = 13.431260399339319
	* R: B<<1151.0,370.0>-<1151.0,575.0>-<1071.0,687.0>-<895.0,718.0>>/L<<895.0,718.0>--<976.0,718.0>> = 9.989407426236662
	* Racute: B<<1151.0,370.0>-<1151.0,575.0>-<1071.0,687.0>-<895.0,718.0>>/L<<895.0,718.0>--<976.0,718.0>> = 9.989407426236662
	* Rcaron: B<<1151.0,370.0>-<1151.0,575.0>-<1071.0,687.0>-<895.0,718.0>>/L<<895.0,718.0>--<976.0,718.0>> = 9.989407426236662
	* a: B<<435.0,-21.0>-<633.0,-21.0>-<777.0,71.0>-<828.0,284.0>>/L<<828.0,284.0>--<828.0,239.0>> = 13.465208094811695
	* aacute: B<<435.0,-21.0>-<633.0,-21.0>-<777.0,71.0>-<828.0,284.0>>/L<<828.0,284.0>--<828.0,239.0>> = 13.465208094811695
	* abreve: B<<435.0,-21.0>-<633.0,-21.0>-<777.0,71.0>-<828.0,284.0>>/L<<828.0,284.0>--<828.0,239.0>> = 13.465208094811695
	* acircumflex: B<<435.0,-21.0>-<633.0,-21.0>-<777.0,71.0>-<828.0,284.0>>/L<<828.0,284.0>--<828.0,239.0>> = 13.465208094811695
	* adieresis: B<<435.0,-21.0>-<633.0,-21.0>-<777.0,71.0>-<828.0,284.0>>/L<<828.0,284.0>--<828.0,239.0>> = 13.465208094811695
	* agrave: B<<435.0,-21.0>-<633.0,-21.0>-<777.0,71.0>-<828.0,284.0>>/L<<828.0,284.0>--<828.0,239.0>> = 13.465208094811695 and 64 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-SemiBold.otf</b></summary>
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
	* AE contains a short segment L<<1432.0,689.0>--<1508.0,689.0>>
	* AEacute contains a short segment L<<1432.0,689.0>--<1508.0,689.0>>
	* uni01EA contains a short segment B<<907.0,-31.0>-<917.0,-31.0>-<926.0,-30.0>-<936.0,-30.0>>
	* Scedilla contains a short segment L<<858.0,-96.0>--<865.0,-30.0>>
	* Scedilla contains a short segment B<<865.0,-30.0>-<868.0,-30.0>-<871.0,-31.0>-<874.0,-31.0>>
	* Uhorn contains a short segment L<<1511.0,1331.0>--<1522.0,1331.0>>
	* uni1EE8 contains a short segment L<<1511.0,1331.0>--<1522.0,1331.0>>
	* uni1EF0 contains a short segment L<<1511.0,1331.0>--<1522.0,1331.0>>
	* uni1EEA contains a short segment L<<1511.0,1331.0>--<1522.0,1331.0>>
	* uni1EEC contains a short segment L<<1511.0,1331.0>--<1522.0,1331.0>> and 34 more. [code: found-short-segments]

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
	* B: B<<1499.0,415.0>-<1499.0,647.0>-<1339.0,761.0>-<1073.0,782.0>>/B<<1073.0,782.0>-<1286.0,815.0>-<1420.0,929.0>-<1420.0,1135.0>> = 13.320781152436533
	* R: B<<1217.0,368.0>-<1217.0,588.0>-<1125.0,690.0>-<936.0,711.0>>/L<<936.0,711.0>--<1019.0,711.0>> = 6.340191745909908
	* Racute: B<<1217.0,368.0>-<1217.0,588.0>-<1125.0,690.0>-<936.0,711.0>>/L<<936.0,711.0>--<1019.0,711.0>> = 6.340191745909908
	* Rcaron: B<<1217.0,368.0>-<1217.0,588.0>-<1125.0,690.0>-<936.0,711.0>>/L<<936.0,711.0>--<1019.0,711.0>> = 6.340191745909908
	* braceleft: B<<612.0,183.0>-<615.0,475.0>-<476.0,566.0>-<232.0,586.0>>/B<<232.0,586.0>-<476.0,607.0>-<615.0,698.0>-<612.0,990.0>> = 9.60497222256764
	* braceright: B<<297.0,990.0>-<294.0,698.0>-<433.0,607.0>-<677.0,586.0>>/B<<677.0,586.0>-<433.0,566.0>-<294.0,475.0>-<297.0,183.0>> = 9.60497222256764
	* eng: B<<876.0,1153.0>-<657.0,1153.0>-<548.0,1054.0>-<511.0,878.0>>/L<<511.0,878.0>--<511.0,1129.0>> = 11.872250313984535
	* m: B<<840.0,1153.0>-<634.0,1153.0>-<536.0,1059.0>-<502.0,897.0>>/L<<502.0,897.0>--<502.0,1129.0>> = 11.853004167744011
	* n: B<<876.0,1153.0>-<657.0,1153.0>-<548.0,1054.0>-<511.0,878.0>>/L<<511.0,878.0>--<511.0,1129.0>> = 11.872250313984535
	* nacute: B<<876.0,1153.0>-<657.0,1153.0>-<548.0,1054.0>-<511.0,878.0>>/L<<511.0,878.0>--<511.0,1129.0>> = 11.872250313984535 and 35 more. [code: found-jaggy-segments]

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
	* k: L<<214.0,1337.0>--<213.0,163.0>>
	* k: L<<33.0,163.0>--<32.0,0.0>>
	* uni0137: L<<214.0,1337.0>--<213.0,163.0>> and uni0137: L<<33.0,163.0>--<32.0,0.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[5] MontaguSlab144pt-Thin.otf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '100' when it should be '250'. [code: bad-value]

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
	* uni1EC3: X=879.0,Y=1802.0 (should be at ascender 1800?)
	* eogonek: X=720.0,Y=-2.0 (should be at baseline 0?)
	* uni1ED5: X=906.0,Y=1802.0 (should be at ascender 1800?)
	* uni01EB: X=733.0,Y=-2.0 (should be at baseline 0?) and uni03020309: X=643.0,Y=1802.0 (should be at ascender 1800?) [code: found-misalignments]

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
	* B: B<<1361.0,391.0>-<1361.0,621.0>-<1218.0,746.0>-<980.0,766.0>>/B<<980.0,766.0>-<1185.0,797.0>-<1305.0,917.0>-<1305.0,1121.0>> = 13.402574469846538
	* C: L<<1410.0,1500.0>--<1410.0,1104.0>>/B<<1410.0,1104.0>-<1345.0,1359.0>-<1137.0,1524.0>-<824.0,1524.0>> = 14.300277449185575
	* Cacute: L<<1410.0,1500.0>--<1410.0,1104.0>>/B<<1410.0,1104.0>-<1345.0,1359.0>-<1137.0,1524.0>-<824.0,1524.0>> = 14.300277449185575
	* Ccaron: L<<1410.0,1500.0>--<1410.0,1104.0>>/B<<1410.0,1104.0>-<1345.0,1359.0>-<1137.0,1524.0>-<824.0,1524.0>> = 14.300277449185575
	* Ccedilla: L<<1410.0,1500.0>--<1410.0,1104.0>>/B<<1410.0,1104.0>-<1345.0,1359.0>-<1137.0,1524.0>-<824.0,1524.0>> = 14.300277449185575
	* Ccircumflex: L<<1410.0,1500.0>--<1410.0,1104.0>>/B<<1410.0,1104.0>-<1345.0,1359.0>-<1137.0,1524.0>-<824.0,1524.0>> = 14.300277449185575
	* Cdotaccent: L<<1410.0,1500.0>--<1410.0,1104.0>>/B<<1410.0,1104.0>-<1345.0,1359.0>-<1137.0,1524.0>-<824.0,1524.0>> = 14.300277449185575
	* Euro: L<<1604.0,1500.0>--<1604.0,1104.0>>/B<<1604.0,1104.0>-<1539.0,1359.0>-<1331.0,1524.0>-<1018.0,1524.0>> = 14.300277449185575
	* R: B<<1063.0,372.0>-<1063.0,564.0>-<993.0,686.0>-<829.0,726.0>>/L<<829.0,726.0>--<919.0,726.0>> = 13.70696100407981
	* Racute: B<<1063.0,372.0>-<1063.0,564.0>-<993.0,686.0>-<829.0,726.0>>/L<<829.0,726.0>--<919.0,726.0>> = 13.70696100407981 and 76 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 4 | 67 | 1430 | 57 | 977 | 0 |
| 0% | 0% | 3% | 56% | 2% | 39% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
