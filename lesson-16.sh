function tryToCatFolder() {
    cat test
    error=$?
    echo "This echo will never fail!"
    if [[ $error -eq 0 ]]
    then
        echo "Nice, we could cat out the folder!"
    else
        echo "Hmmm... bash doesn't like it when we try to cat out a folder!"
    fi
    echo "Error code: $error"
}