#!/bin/sh
python_version="#!/usr/bin/env python3\n\n"
file_name="$1.py"
touch $file_name
echo $python_version >> $file_name
echo "def main():" >> $file_name
echo "    return\n\n" >> $file_name
echo "if __name__ == \"__main__\":" >> $file_name
echo "    main()" >> $file_name
chmod a+x $file_name
