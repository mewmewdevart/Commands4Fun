#!/bin/bash
_PRINT()
{
    local logo="$1"

    [[ ! -e "${logo}" ]] && return 1
    while IFS= read -r line;
    do
        echo "$line"
    done < "$logo"
    return 0
}