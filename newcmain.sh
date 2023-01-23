#!/bin/sh
file_name="$1.c"

touch $file_name

echo "int main(int argc, char *argv[])" >> $file_name
echo "{" >> $file_name
echo "\t// Place code here" >> $file_name
echo "}" >> $file_name
