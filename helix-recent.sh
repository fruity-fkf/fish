#!/usr/bin/env bash
SED="sed"
HX=hx
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED="gsed"
fi
RECENT=~/.cache/recent_hx
FILE=${@:1}

if [ ! "$FILE" ]; then
    FILE=$(tac $RECENT | fzf)
fi

if [ "$FILE" ]; then
    # Resolve full path
    FILE=$(printf "%s" "$(cd "$(dirname -- "$FILE")" >/dev/null; pwd -P)/$(basename -- "$FILE")")
    
    # Remove the file from the RECENT list if it already exists
    $SED -i "\#$FILE#d" $RECENT
    
    # Append the new file to the RECENT list
    echo "$FILE" >> $RECENT
fi

$HX $FILE
