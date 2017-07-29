//default file = FLUX_DIR + "data/correctMarcXML.xml";
default file = FLUX_DIR + "data/institutionen.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "morphInstitutionen.xml")|
//encode-formeta |
encode-json |
write("stdout");
