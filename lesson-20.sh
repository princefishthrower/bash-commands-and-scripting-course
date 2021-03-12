# commands covered in this lesson

lsof # lists all open files

# to show all TCP protocal listening connections, issue:
lsof -iTCP -sTCP:LISTEN

# you may want to alias this to something like:
alias listeningports='lsof -iTCP -sTCP:LISTEN'

kill # kills a single running process, by process ID passed in

#ex.
kill 85579

killall # kills ALL processes, by program name passed in

#ex.
killall node

# kill and killall ARE HARD STOPS. YOU MAY LOSE DATA!
