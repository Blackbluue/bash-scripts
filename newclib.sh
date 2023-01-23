#!/bin/bash
lib_name="${1// /_}"
header_name="$lib_name.h"


touch $header_name

echo "#ifndef ${lib_name^^}_H" > $header_name
echo "#define ${lib_name^^}_H" >> $header_name
echo "#endif" >> $header_name
