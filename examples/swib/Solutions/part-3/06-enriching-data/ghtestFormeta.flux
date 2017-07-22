
file = FLUX_DIR + "gnd-plus-wiki.foma";

file |
open-file |
as-formeta-records |
decode-formeta |
encode-formeta(style="multiline") |
write("stdout");

