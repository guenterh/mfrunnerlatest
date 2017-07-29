
default in = FLUX_DIR + "/wiki-persons.foma.gz";
default out = "stdout";


in
| open-file
| as-lines
| decode-formeta
| encode-formeta(style="multiline")
| write(out);