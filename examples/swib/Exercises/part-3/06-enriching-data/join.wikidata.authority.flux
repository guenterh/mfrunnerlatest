
default inwiki = FLUX_DIR + "/wiki-persons.foma.gz";
default inauth = FLUX_DIR + "/authority-persons.pica.gz";
default out = "stdout";


inwiki
| open-file
| as-lines
| decode-formeta
| morph(FLUX_DIR + "/wiki.xml")
| stream-to-triples (redirect="true")
| @x;

inauth
| open-file
| as-lines
| decode-pica
| stream-to-triples
| @x;

@x
| wait-for-inputs("2")
| sort-triples
| collect-triples
| encode-formeta(style="multiline")
| write (out);



