default in = FLUX_DIR + "../../../files/bib-data.pica.gz";

in |
open-file |
as-lines |
decode-pica |
encode-formeta(style="multiline") |
//write("stdout");
write(FLUX_DIR + "formeta.txt");