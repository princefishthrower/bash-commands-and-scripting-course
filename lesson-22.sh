# Environment variables and other goodies covered in this lesson:

# PS1 = the reserved variable for the prompt in bash
# PROMPT_COMMAND = another reserved variable, typically assigned to a function. bash will run this command after each command is issued in the terminal. We saw how we could use it for a smiley and frowny formatted prompt

# \u special character within the PS1 variable, will print the current user
# \h special character within the PS1 variable, will print the current host name
# \h special character within the PS1 variable, will print the current host name

########################################################
# Code used in the bash_profile for this lesson. Feel  #
# Free to uncomment PS1's that you like, or create     #
# your own!                                            #
########################################################

# Colors! 
R="\[\e[0;31m\]"
G="\[\e[0;32m\]"
Y="\[\e[0;33m\]"
B="\[\e[0;34m\]"
M="\[\e[0;35m\]"
C="\[\e[0;36m\]"
W="\[\e[0;37m\]"

# End color or formatting
E="\[\e[0m\]"

# Other goodies available for the PS1 variable
USER="\u"
HOST="\h"
CURRENT_DIRECTORY=" [\w] $E"

# simple prompt
PS1="$R$USER@$HOST$B$CURRENT_DIRECTORY"
# PROMPT_COMMAND=;

# star-spangled directory prompt :) 🇺🇸
# PS1="$R\u$W@$B\h$W$CURRENT_DIRECTORY"

# empty prompt
# PS1=''

# some emoji prompts
# PS1="🚀 $ "
# PS1="👨‍💻@💻 "

# crazy alternating letter color prompt
# M="\e[35m"
# C="\e[36m"
# E="\e[0m"
# PS1='\[🚀✨'$M'i'$E$C'n'$E$M't'$E$C'e'$E$M'r'$E$C'g'$E$M'a'$E$C'l'$E$M'a'$E$C'c'$E$M't'$E$M'i'$E$C'c'$E$M'-'$E$C'm'$E$M'a'$E$C'c'$E' $ \]'

# function smile_prompt
# {
#     # determine error code
#     if [ "$?" -eq "0" ]
#     then
#         #smiley
#         SC="${G}:)"
#     else
#         #frowney
#         SC="${R}:("
#     fi

#     PS1="$R\u@\h$B$CURRENT_DIRECTORY${SC}${E} "
# }

# PROMPT_COMMAND=smile_prompt;