## Fontbakery report

Fontbakery version: 0.7.36

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
<summary><b>[5] MontaguSlab[opsz,wght].ttf</b></summary>
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
increases.</pre>

* ⚠ **WARN** Font em size (unitsPerEm) is 2200 which may be too large (causing filesize bloat), unless you are sure that the detail level in this font requires that much precision. [code: large-value]

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
In fonts that have TrueType outlines, a power of 2 is recommended as this allows
performance optimizations in some rasterizers.
But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.</pre>

* ⚠ **WARN** In order to optimize performance on some legacy renderers, the value of unitsPerEm at the head table should idealy be a power of between 16 to 16384. And values of 1000 and 2000 are also common and may be just fine as well. But we got 2200 instead. [code: suboptimal]

</details>
<details>
<summary>⚠ <b>WARN:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 9 and 13 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---
According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz
If a variable font has a &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 9 to 13.</pre>

* ⚠ **WARN** The "opsz" (Optical Size) coordinate on the "Regular" instance is recommended to be a value in the range 9 to 13. Got 144.0 instead. [code: out-of-range]

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
	* uni1EA8: X=1284.5,Y=2161.0 (should be at ascender 2160?)
	* uni1EC2: X=1171.5,Y=2161.0 (should be at ascender 2160?)
	* uni1ED4: X=1301.5,Y=2161.0 (should be at ascender 2160?)
	* uni1EA9: X=1219.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EA3: X=608.0,Y=1499.5 (should be at cap-height 1500?)
	* uni1EC3: X=1190.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1EBB: X=579.0,Y=1499.5 (should be at cap-height 1500?)
	* uni1EC9: X=341.0,Y=1499.5 (should be at cap-height 1500?)
	* uni1ED5: X=1249.0,Y=1501.0 (should be at cap-height 1500?)
	* uni1ECF: X=638.0,Y=1499.5 (should be at cap-height 1500?) and 12 more. [code: found-misalignments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 6 | 94 | 8 | 96 | 0 |
| 0% | 0% | 3% | 46% | 4% | 47% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
