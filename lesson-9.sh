# Commands covered in this lesson
# alias - asign with an equals sign (typically need to wrap entire command with single or double quotes for it to be accepted)
alias showdesktop='cd /Users/chris/Desktop && open . && cd -' # we can now type simply 'showdesktop' for our custom chained function to fire off!
# source .bash_profile - sources the contents of the bash profile - will make any new aliases or functions immediately available

# bash Profile for Mac
# /Users/<YOUR_USERNAME_HERE>/.bash_profile
# (~/.bash_profile is equivalent)

# zsh Profile for Mac
# /Users/<YOUR_USERNAME_HERE>/.zprofile
# (~/.zprofile is equivalent)

# other possible bash profiles
# .profile, .bashrc 

# Careful - typically .profile is read by all shells
# And note that .bashrc is run for non-login shells, while .bash_profile or .profile is usually always read
