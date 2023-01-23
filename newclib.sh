#!/bin/bash
lib_name="${1// /_}"
header_name="$lib_name.h"
code_file="$lib_name.c"


touch $header_name
echo "#ifndef ${lib_name^^}_H" > $header_name
echo "#define ${lib_name^^}_H" >> $header_name
echo "#endif" >> $header_name

touch $code_file
echo "#include \"$header_name\"" > $code_file
