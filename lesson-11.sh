# shows desktop
alias showdesktop="cd /Users/chris/Desktop && open . && cd -"

# move to desktop
alias desk="cd /Users/chris/Desktop"

# to open the bash profile in nano (nano always available)
alias prof='nano /Users/chris/.bash_profile'

# to open in visual studio code - macOS users see https://code.visualstudio.com/docs/setup/mac to get the 'code' command working
alias prof='code /Users/chris/.bash_profile'

# to open the bash profile in sublime text, ex:
#alias prof='sublime /User/chris/.bash_profile'

# sources the bash profile
alias s='source /User/chris/.bash_profile'

# lists files and folders with a few other goodies
alias lk='ls -lhkart'
alias kl='ls -lhkart'

# navigation aliases
alias show='open .'
alias back='cd ..'
alias prev='cd -'
alias home='cd'

# show the desktop - the clean alias way :)
alias showdesk='desk && show && prev'

# clear
alias c='clear'

# make a beep :)
alias beep='echo -ne "\007"'

# my four locations of power!
alias opensource='cd /Users/chris/opensource'
alias pj='cd /Users/chris/projects'
alias play='cd /Users/chris/playground'
alias ep='cd /Users/chris/enterprise'

# fun python aliases
alias py='python'
alias py3='python3'

# git utility functions
# NOTE: be careful with these, recognize they add and commit all changed files!

# adds, commits, and pushes ALL files (typically used on develop branch)
function pushall() {
   git add .
   git commit --all
   git push --all
}

# merges develop branch into staging branch
function mergetostaging() {
   git checkout staging
   git merge develop --no-ff --no-edit
   git push
   echo "Push to staging successful, putting you back on branch 'develop'..."
   git checkout develop
}

# merges develop branch into master branch
function mergetomasterfromdevelop() {
   git checkout master
   git merge develop --no-ff --no-edit
   git push
   echo "Push to master successful, putting you back on branch 'develop'..."
   git checkout develop
}

# merges staging branch into master branch
function mergetomasterfromstaging() {
   git checkout master
   git merge staging --no-ff --no-edit
   git push
   echo "Push to master successful, putting you back on branch 'develop'..."
   git checkout develop
}

# merges develop into staging, and then staging into master
function fullmerge() {
   mergetostaging   
   mergetomasterfromstaging
}