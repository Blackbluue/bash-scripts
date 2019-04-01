#!/bin/sh
python_version="#!/usr/bin/env python3"
file_name="$1.py"
touch $file_name
echo $python_version >> $file_name
chmod a+x $file_name
