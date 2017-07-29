
default in = FLUX_DIR + "/authority-data.pica.gz";

in
| open-file
| as-lines
| decode-pica
| stream-to-triples
| write-triples(FLUX_DIR + "/triples.txt");