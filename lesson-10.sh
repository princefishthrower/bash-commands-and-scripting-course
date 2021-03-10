function usegrep() {
    grep --color -i -R "$1" $2
}

function searchhistory() {
    history | grep --color -i "$1"
}
