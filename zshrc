source ~/.antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen theme romkatv/powerlevel10k
antigen apply

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 指令的歷史存到 ~/.zsh_history
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt APPEND_HISTORY
HISTSIZE=10000
SAVEHIST=10000

# Load and initialize the Zsh completion system
autoload -U compinit && compinit -u

# pip 會把 binary 裝到 ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

# zoxide：目錄跳躍
if command -v zoxide &> /dev/null; then
	eval "$(zoxide init --cmd j zsh)"
fi

# 載入 .zshrc_local
[ -s "$HOME/.zshrc_local" ] && source "$HOME/.zshrc_local"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

