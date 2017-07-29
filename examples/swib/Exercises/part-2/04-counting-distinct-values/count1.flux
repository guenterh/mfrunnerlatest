default in = FLUX_DIR + "/bib-data.pica.gz";
default out = "stdout";

in |
open-file |
as-lines |
decode-pica |
morph(FLUX_DIR + "/edition.xml") |
stream-to-triples |
count-triples(countBy="object") |
template("'${s}' 'soviele hat's'            ${o}") |
//template("'${s}' '${p}'            ${o}") |
//encode-formeta (style="multiline") |
//encode-marc21 |
write(out);