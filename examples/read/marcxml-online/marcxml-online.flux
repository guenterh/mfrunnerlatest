default idn = "1021191485";

idn|
template("http://d-nb.info/${o}/about/marcxml")|
open-http|
decode-xml|
handle-marcxml|
encode-formeta(style="multiline")|
write("stdout");