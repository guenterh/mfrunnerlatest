default file = FLUX_DIR + "data/classif_ddc.xml";

file|
open-file|
decode-xml|
handle-marcxml|
//morph(FLUX_DIR + "transformClassif_ddc.xml")|
morph(FLUX_DIR + "transformClassif_ddc_1.xml")|

encode-json |
write("stdout");
