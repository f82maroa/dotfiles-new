
#!/bin/sh

# Originally from lukesmith with some changes
# Gives a dmenu prompt to search DuckDuckGo.
# Without input, will open DuckDuckGo.com.
# Anything else, it search it.

LAUNCER="dmenu -i -nb "#1d2021" -nf "#8ec07c" -sb "#458588" -sf "#ffffff" -l 10 -p "
[ -z "${DISPLAY}" ] && LAUNCER="fzf --prompt "

localBROWSER="qutebrowser "
[ -n "$*" ] && localBROWSER="$*"
[ -z "${DISPLAY}" ] && localBROWSER="w3m "

if [ -f ~/.config/bookmarks ]; then
	choice=$( (echo "🦆" && cat ~/.config/bookmarks) | $LAUNCER"Search:") || exit 1
else
	choice=$(echo "🦆" | $LAUNCER -i -p "Search DuckDuckGo:") || exit 1
fi

case "$choice" in
*🦆*)
	$localBROWSER"https://duckduckgo.com"
	exit
	;;
http*)
	$localBROWSER"$(echo $choice | awk '{print $1}')"
	exit
	;;
*) $localBROWSER"https://duckduckgo.com/?q=$choice"
	exit
	;;
esac
