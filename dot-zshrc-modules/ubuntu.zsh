alias bat="batcat"

ubuntu_setup() {
    for pkg in bat tmux nala; do
        if ! command -v "$pkg" &> /dev/null && ! command -v "${pkg}cat" &> /dev/null; then
            echo "$pkg not found. Installing with apt..."
            sudo apt install "$pkg" -y
        fi
    done
}

