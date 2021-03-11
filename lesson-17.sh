alias beep='echo -ne "\007"'

function beeper() {
    for (( i=0; i<$1; i++ ))
    do
        if (( $i == 3 ))
        then
            break
        fi
        beep
    done
}

function beeperWhile() {
    i=0
    while (( $i<$1 ))
    do
        if (( $i == 3 ))
        then
            break
        fi
        beep
        i=$[$i+1]
    done
}