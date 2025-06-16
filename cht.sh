#!/usr/bin/env bash
cht_sh=`echo "intro help list" | tr ' ' '\n'`
languages=`echo "typescript lua nodejs bash zsh" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk" | tr ' ' '\n'`

selected=`printf "$cht_sh\n$languages\n$core_utils" | fzf`

if ! printf $cht_sh | grep -qa $selected; then
    read -p "query: " query
fi

if printf $cht_sh | grep -qa $selected; then
    tmux neww bash -c "curl cht.sh/:$selected & while [ : ]; do sleep 1; done"
elif printf $languages | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
elif printf $core_utils | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
else
    printf "invalid selection: $selected"
fi

