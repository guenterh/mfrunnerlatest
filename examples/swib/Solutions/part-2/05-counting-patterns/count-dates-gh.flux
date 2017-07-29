//-------------------------------------
// Solution for Exercise 5a
//-------------------------------------

default in = FLUX_DIR + "authority-data.pica.gz";
default out = "stdout";

in
|open-file
|as-lines
|decode-pica
|morph(FLUX_DIR + "extract-dates.xml")
|stream-to-triples
|write(out);
