//-------------------------------------
// Solution for Exercise 7a
//-------------------------------------

default authoritydata = FLUX_DIR + "authority-persons.pica.gz";
default bibdata = FLUX_DIR + "bib-data.pica.gz";
default out = "stdout";


bibdata
|open-file
|as-lines
|decode-pica
|morph(FLUX_DIR + "extract-authors.xml")
|stream-to-triples(redirect="true")
|sort-triples(by="subject")
|collect-triples
//|count-triples(countBy="subject")
|encode-formeta(style="multiline")
|write(out);

