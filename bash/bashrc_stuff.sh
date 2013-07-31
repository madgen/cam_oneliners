#!/bin/cat

################################################################################
# The above shebang prevents this from being executed unintentionally. Instead #
# this file is intended to contain settings that you can add to ~/.bashrc,     #
# ~/.bash_aliases, etc, to customise bash, rather than to provide scripts.     #
################################################################################

################################################################################
# Begin section: ALTERNATIVE PROMPTS. Replaces "user@machine:path$ ".  Add to  #
# ~/.bashrc to use.  If there is a line in ~/.bashrc which adds text onto the  #
# front of $PS1, you should probably put this before that as that text often   #
# controls the window title.                                                   #
################################################################################

# Same as the Debian default, except within a git repository, where it replaces
# the path with the name of the repository's root folder and the current branch
#
# Ideally needs refactoring but I'm struggling to provide that.  If statement
# can't be extracted because of the \w; colours don't seem to work.  Maybe the
# inserted commands?
PS1='\[\e[1;35m\]\u@\h\[\e[0;30m\]:\[\e[0;34m\]$(if [ -d .git -o -n'\
' "$(git rev-parse --show-toplevel 2>/dev/null)" ]; then echo $(git rev-parse '\
'--show-toplevel | xargs basename)$(git branch | grep "^\* " | sed "s/^\* /#/"'\
'); else echo "\w"; fi)\[\e[0;30m\]\$ '
################################################################################
# Begin section: COMMAND ALIASES.  Contains alternative command names and      #
#                                  combinations to be added to ~/.bash_aliases #
################################################################################

# Provides the status of the git repository containing the working directory, if
# one exists, and also lists the files in the current directory.
alias lg='echo;echo "Working dir: `pwd`"; git status 2>/dev/null && echo;ls -CF'
