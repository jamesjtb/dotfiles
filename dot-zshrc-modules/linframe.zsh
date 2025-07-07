if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ "$TERM" =~ tmux ]] && [ ! -z "$TMUX" ]; then
    print ""
    print "  ██▓     ██▓ ███▄    █   █████▒██▀███   ▄▄▄       ███▄ ▄███▓▓█████ "
    print " ▓██▒    ▓██▒ ██ ▀█   █ ▓██   ▒▓██ ▒ ██▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀ "
    print " ▒██░    ▒██▒▓██  ▀█ ██▒▒████ ░▓██ ░▄█ ▒▒██  ▀█▄  ▓██    ▓██░▒███   "
    print " ▒██░    ░██░▓██▒  ▐▌██▒░▓█▒  ░▒██▀▀█▄  ░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄ "
    print " ░██████▒░██░▒██░   ▓██░░▒█░   ░██▓ ▒██▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒"
    print " ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒  ▒ ░   ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░"
    print " ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░ ░       ░▒ ░ ▒░  ▒   ▒▒ ░░  ░      ░ ░ ░  ░"
    print "   ░ ░    ▒ ░   ░   ░ ░  ░ ░     ░░   ░   ░   ▒   ░      ░      ░   "
    print "     ░  ░ ░           ░           ░           ░  ░       ░      ░  ░"
fi

# Export golang to path
export PATH=$PATH:/usr/local/go/bin

if ! command -v fastfetch &> /dev/null; then
    echo "fastfetch not found. installing..."
    sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
    sudo apt update
    sudo apt install fastfetch
fi

alias showoff="clear && fastfetch"
alias ollama="docker exec -it open-webui ollama"
alias kill-kvm="sudo rmmod kvm_amd"
