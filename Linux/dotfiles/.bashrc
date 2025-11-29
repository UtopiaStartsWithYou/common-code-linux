#====================
# Prerequisites: 
#   bash__vanilla
#   bash__prompt
#====================

#----------------------------------------------------------------------------
# About
#----------------------------------------------------------------------------
#   Refactored default ~/.bashrc into ~/.bash__vanilla helper.
#       Added a `_COLOR_PROMPT` that is not unset for use in ~/.bash__prompt
#       Kept ~/.bash_aliases import at this level.
#
#   Added ~/.bash__prompt for custom PS1 configs.
#       Declares functions only, must call them at this level to take effect.
#
#   Added ~/.bash__custom for custom user configs.
#----------------------------------------------------------------------------



#==================================================================================================
#                           Vanilla .bashrc stuff (+ common injections)
#==================================================================================================

#-------------------------------------------------------------------------
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#-------------------------------------------------------------------------
# https://en.wikipedia.org/wiki/Bash_(Unix_shell)
#-------------------------------------------------------------------------

#-------------------------------------------------------
# Import vanilla bash stuff + npm whatevers
#-------------------------------------------------------
if [ -f ~/.bash__vanilla ]; then
    # Moved all the default .bashrc boilerplate to this file
    #  and I'm moving all future .bashrc injections here too
    #  (i.e. npm, homebrew, git branch completion)
    . ~/.bash__vanilla
fi

#-----------------------------------------------------------------
# Alias definitions.
#-----------------------------------------------------------------
if [ -f ~/.bash_aliases ]; then
    # You may want to put all your additions into a separate file like
    # ~/.bash_aliases, instead of adding them here directly.
    # See /usr/share/doc/bash-doc/examples in the bash-doc package.
    . ~/.bash_aliases
fi



#==================================================================================================
#                                    💻 User Bash Configs! 🎉
#==================================================================================================

#----------------------------
# Pretty colors and timestamp
#----------------------------
if [ -f ~/.bash__prompt ]; then
    # Declares PS1 helper functions to set a colorful
    # and custom bash prompt!
    #
    # Remember to call your favorite at the bottom of this ~/.bashrc
    . ~/.bash__prompt
fi

#---------------------
# Import user configs!
#---------------------
if [ -f ~/.bash__custom ]; then
    . ~/.bash__custom
fi


function fn_greeting_welcome_back () {
    echo
    echo '     ╭──────────────────────╮     '
    echo '     │                      │     '
    echo '     │  :: Welcome Back ::  │     '
    echo '     │                      │     '
    echo '     ╰──────────────────────╯     '
    echo
    pwd
    echo
}

fn_prompt_custom  # from ~/.bash__prompt
fn_greeting_welcome_back
