#!/bin/bash
shebang="#!/usr/bin/env python3"
file_name="${1// /_}.py"
touch $file_name

cat > $file_name << EOM
${shebang}
import sys

def main():
    return


if __name__ == "__main__":
    try:
        main()
    except (Exception, GeneratorExit, KeyboardInterrupt, SystemExit) as e:
        print("Error executing program with error "
            f"{type(e).__name__}:", e, file=sys.stderr)

EOM
chmod a+x $file_name
