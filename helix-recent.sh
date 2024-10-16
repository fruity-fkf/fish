
#!/usr/bin/env bash
SED="sed"
HX=hx
if [[ "$OSTYPE" == "darwin"* ]]; then
		SED="gsed"
fi
RECENT=~/.cache/recent_hx
FILE=${@:1}
if [ ! "$FILE" ]; then
	FILE=$(tac $RECENT  | fzf)
fi
if [ "$FILE" ]; then
	FILE=$(printf "%s" "$(cd "$(dirname -- "$FILE")" >/dev/null; pwd -P)/$(basename -- "$@")"
 $FILE)
	echo $FILE
	$SED -i "\#$FILE#d" $RECENT
	echo $FILE>>$RECENT
fi
$HX $FILE