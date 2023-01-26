#!/bin/bash
lib_name="${1// /_}"
header_name="$lib_name.h"
code_file="$lib_name.c"


touch $header_name
cat > $header_name << EOM
#ifndef ${lib_name^^}_H
#define ${lib_name^^}_H

#endif
EOM

touch $code_file
cat > $code_file << EOM
#include "${header_name}"
EOM
