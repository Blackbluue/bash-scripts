#!/bin/bash
file_name="${1// /_}.c"

touch $file_name

cat > $file_name << EOM
int main(int argc, char *argv[])
{
	// Place code here
}
EOM
