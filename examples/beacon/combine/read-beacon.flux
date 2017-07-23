default fileName = FLUX_DIR + "austriaforum.beacon";

fileName|
open-file(encoding="UTF-8")|
read-beacon(metadatafilter="name|isil")|
log-stream |
encode-formeta(style="multiline")|
log-object |
write("stdout");