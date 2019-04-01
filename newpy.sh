#!/bin/sh
python_version="#!/usr/bin/env python3"
python_syntax="\n
def main():\n
    return\n
\n
\n
if __name__ == \"__main__\":\n
    main()"
file_name="$1.py"
touch $file_name
echo $python_version >> $file_name
echo $python_syntax >> $file_name
chmod a+x $file_name
