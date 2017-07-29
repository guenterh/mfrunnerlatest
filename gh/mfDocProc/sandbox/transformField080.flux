//default file = FLUX_DIR + "correctMarcXML.xml";
default file = FLUX_DIR + "data/classif_udc.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "transformField080.xml")|
//encode-formeta |
encode-json |
write("stdout");
