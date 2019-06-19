source ./color.sh;

if [[ $(uname) = "Darwin" ]]; then
    printf "${BOLD}OS${RESET}: macOS"
elif [[ $(uname) = "Linux" ]]; then
    echo "OS: Linux"
else
    echo "OS: Unknown"
fi
