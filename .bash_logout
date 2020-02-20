## .bash_logout --- Bash configuration file
#
# Copyright (C) 2005-2007 Fabrice Niessen
#
# Author: Fabrice Niessen <fni@missioncriticalit.com>
# Keywords: bash, dotfile
#
## Code:
#
# modify to taste
#
if [ "$SSH_AGENT_PID" -a "$SHLVL" = "1" ] ; then
    # check to see if there's an ssh-agent running in the local session
    # (since SSH_AGENT_PID will not be set if it's a subshell, or the agent
    # was carried over from another login), AND that the shell level is 1
    # (meaning this isn't a subshell on the same machine as the shell in
    # which you started ssh-agent)

    eval $(ssh-agent -k) || kill -HUP $SSH_AGENT_PID
fi

# clear your traces when you logout
clear

## .bash_logout ends here
