# Set up bat if it doesn't exist
if ! (command -v bat &> /dev/null || command -v batcat &> /dev/null); then
    echo "bat command not found - installing from apt"
    sudo apt install bat -y
fi

# Install tmux if we don't have it
if ! command -v tmux &> /dev/null; then
    echo "tmux does not seem to be installed. Installing..."
    sudo apt install tmux
fi

# Install nala
if ! command -v nala &> /dev/null; then
    echo "did not see nala (apt front-end) Installing..."
    sudo apt install nala
fi


