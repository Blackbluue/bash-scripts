#!/bin/bash
file_name="${1// /_}.c"

touch $file_name

echo "int main(int argc, char *argv[])" > $file_name
echo "{" >> $file_name
echo -e "\t// Place code here" >> $file_name
echo "}" >> $file_name
