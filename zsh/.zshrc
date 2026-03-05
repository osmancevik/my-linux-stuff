# ===PATH===
# Add custom local and user binary directories to the system PATH
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ===END===

# ===THEME===
# Set the default theme
ZSH_THEME="robbyrussell"
# ===END===

# ===PREFENCES===
# Enable hyphen-insensitive completion (treat - and _ as equivalent)
HYPHEN_INSENSITIVE="true"

# update reminder (not auto-update just reminder)
zstyle ':omz:update' mode reminder  

# Enable typo correction for commands
ENABLE_CORRECTION="true"

# Enable red dots as a visual progress indicator during tab completion
COMPLETION_WAITING_DOTS="true"

# Speed up status checks by ignoring untracked files in large repositories
DISABLE_UNTRACKED_FILES_DIRTY="true"

# installed plugins
plugins=(git sudo command-not-found zsh-syntax-highlighting zsh-autosuggestions colored-man-pages extract)

# Initialize Oh My Zsh and load all enabled plugins and themes
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Do not record a command if it is the same as the previous one
setopt HIST_IGNORE_DUPS

# Remove all previous occurrences of a command from history
setopt HIST_IGNORE_ALL_DUPS

# Remove superfluous blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS

# Share history between all active terminal sessions
setopt SHARE_HISTORY

# Delete oldest duplicates first when history is full
setopt HIST_EXPIRE_DUPS_FIRST

# Add commands to history as soon as they are executed, rather than waiting for shell exit
setopt INC_APPEND_HISTORY

# Enable fzf key bindings (e.g., CTRL-R for fuzzy history search)
source /usr/share/fzf/key-bindings.zsh
# ===END===

# ===SSH===
# Standardize on Neovim for all session
export EDITOR='nvim'

# Show user@host only when connected via SSH
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    PROMPT="[%n@%m] $PROMPT"
fi
# ===END===

# ===ALIAS===
alias update='paru -Syyuu'
alias install='paru -S'
alias search='paru'
alias remove='paru -Rns'
alias cleanup='paru -Rns $(pacman -Qtdq)'

alias ls='lsd'            
alias l='lsd -l'          
alias la='lsd -a'         
alias ll='lsd -la'         
alias lt='lsd --tree'      

alias c='clear'                       
alias h='history'                     
alias searchalias='\alias | fzf'      
alias cat='bat'                       

alias vmsk='ssh -t vm1 "export TERM=xterm-kitty; tmux -2 attach || tmux -2"'
alias vmsk2='kitty +kitten ssh -t vm2 "tmux attach || tmux"'
alias vmsk3='kitty +kitten ssh -t vm3 "tmux attach || tmux"'
alias vms='ssh -t vm1 "tmux attach || tmux"'
alias vms2='ssh -t vm2 "tmux attach || tmux"'
alias vms3='ssh -t vm3 "tmux attach || tmux"'
# ===END===

# ===FUNCTIONS===
# Function to suggest a random alias every time the terminal opens
teach_me_alias() {
    local picked_alias
    picked_alias=$( \alias | shuf -n 1 )
    
    if [[ -n "$picked_alias" ]]; then
        echo -e "\e[1;34m💡 Alias Tip\e[0m -> \e[1;32m$picked_alias\e[0m"
    fi
}

# Run the functions
teach_me_alias
# ===END===
