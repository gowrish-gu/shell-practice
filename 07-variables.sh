#!/bin/bash

### Special Variables ###

echo "All args passed to script: $@"                    #treats args seperately
echo "Number of vars passed to script: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running the script: $USER"
echo "Home directory of the user: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"                    #treats as single args 