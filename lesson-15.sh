function compareStrings() {
    if [[ $1 == $2 ]]
    then
        echo "These strings are equal!"
    else
        echo "These strings are NOT equal!"
    fi
}

function compareNumbers() {
    if (( $1 == $2 ))
    then
        echo "These numbers are equal!"
    else
        echo "These numbers are NOT equal!"
    fi
}

function isPositive() {
    if (( $1 > 0 ))
    then
        echo "Positive!"
    elif (( $1 < 0 ))
    then
        echo "Negative!"
    else
        echo "Neither; it's zero! (Or was not a number input!)"
    fi
}

function isEven() {
    if (( $1 % 2 == 0 ))
    then
        echo "Even!"
    else
        echo "Not even!"
    fi
}

# checks which parameters to pass to the python script by checking if the given parameter is not empty
function runPythonScript() {
    if [[ ! -z $3 ]]
    then
        python3 /Users/chris/projects/bash-commands-and-scripting-course/test.py $1 $2 $3
    elif [[ ! -z $2 ]]
    then
        python3 /Users/chris/projects/bash-commands-and-scripting-course/test.py $1 $2
    elif [[ ! -z $1 ]]
    then
        python3 /Users/chris/projects/bash-commands-and-scripting-course/test.py $1
    else
        echo "This script requires at least 1 parameter!"
    fi
}

# the cleaner way to write the above function, simply pass in all parameters we get, no matter how many or how few using bash's $@ parameter
function runPythonScriptClean() {
    python3 /Users/chris/projects/bash-commands-and-scripting-course/test.py $@
}

function someProcess() {
    case $1 in
    start)
        echo "Starting..."
        ;;
    stop)
        echo "Stopping..."
        ;;
    restart)
        echo "Restarting..."
        ;;
    *)
        echo "Unknown command, doing nothing..."
        ;;
    esac
}