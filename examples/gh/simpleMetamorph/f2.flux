default in = FLUX_DIR + "../files/10.pica";

in |
open-file |
as-lines |
decode-pica |
morph(FLUX_DIR + "/morph2.xml") |
encode-json |
write ("stdout");