//default file = FLUX_DIR + "correctMarcXML.xml";
default file = FLUX_DIR + "data/transFormVariantNameTest.xml";
//default file = FLUX_DIR + "data/classif_912.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "transformVariantNames.xml")|
encode-formeta(style="multiline") |
//encode-json |
write("stdout");
