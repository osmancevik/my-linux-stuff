# Temel tamamlama ayarları
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# Eklentileri aktif et (Arch yolları)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Geçmiş (History) ayarları
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
eval "$(starship init zsh)"
setopt autocd
