#!/bin/bash
echo "Number of args: $#"
for arg in "$@"; do
    echo "Arg: $arg"
done
