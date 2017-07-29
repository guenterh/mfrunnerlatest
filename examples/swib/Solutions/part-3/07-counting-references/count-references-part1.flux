//-------------------------------------
// Solution for Exercise 7a
//-------------------------------------

default authoritydata = FLUX_DIR + "authority-persons.pica.gz";
default bibdata = FLUX_DIR + "bib-data.pica.gz";
default out = "stdout";

// Read the authority data and create a short
// summaries (consisting only of the persons'
// names:

authoritydata
|open-file
|as-lines
|decode-pica
|morph(FLUX_DIR + "summarize-authority-persons.xml")
|encode-formeta (style="multiline")
| write("stdout");