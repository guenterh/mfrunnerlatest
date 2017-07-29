
//default in = FLUX_DIR + "/authority-data.pica.gz";
default out = "stdout";
default in = FLUX_DIR + "/triples.txt";

in
| read-triples
| triples-to-stream
| encode-formeta(style="multiline")
| write(out);