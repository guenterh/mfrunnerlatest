
default in FLUX_DIR + "/authority-data.pica.gz";

in
| open-file
| as-lines
| decode-pica
| morph("patterncount.xml")
| stream-to-triples
| count-triples(countBy="object")
| template("'${s}' 'soviele hat's'            ${o}") |
write(out);