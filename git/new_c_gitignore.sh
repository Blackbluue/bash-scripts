#!/bin/bash

file_name=".gitignore"
if [[ -e ${file_name} ]]; then
	exit
fi

prog_name="${1// /_}"

touch ${file_name}

cat > ${file_name} << EOM
# [ignore binaries/object files]
*.[cao]
${prog_name}
test/test-all

# [ignore profiling symbols]
profile.*

EOM
