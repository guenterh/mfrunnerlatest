default in = FLUX_DIR + "../files/10.pica";

in |
open-file |
as-lines |
decode-pica |
morph(FLUX_DIR + "/morph1.xml") |
encode-literals |
write ("stdout");