# commands covered in this lesson

# parse out rows or columns from any source (file or piped input
awk

# an in-terminal task manager, lists (by default) cpu descending processes
top 

# Example: print the most resource intensive process (by CPU usage)
# we let top run for 3 iterations (with -l 3), each time calculating the CPU usage (with -i 1), 
# and print only the top 10 processes (with -n 10)
top -i 1 -l 3 -n 10 > top.txt && cat top.txt | awk 'NR == 57 {print $2 $3}'