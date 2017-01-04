
default base = "";
default gndsimple = FLUX_DIR + "gnd-simplified.txt";

gndsimple|
open-file|
as-lines|
decode-pica|
morph(FLUX_DIR + "format-gnd.xml")|
encode-formeta(style="concise")|
write(gndsimple);




