# default prompt for zsh is something like this:
# PS1="%n@%m %1~ %#"

# let's change it to something like this:
# PS1="%n@%m %1~ %(!.#.$) "
# PS1="%n@%m %1~ %#"
PROMPT='%n@%1~$ '


# tab completion setup case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

