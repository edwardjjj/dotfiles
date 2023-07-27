# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases


export PATH="/home/edward/.local/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
fpath+=~/.zfunc
autoload -Uz compinit && compinit

####################################
#             Alias                #
####################################
alias ls="ls --color=auto"
alias ll="ls -la --color=auto"
alias vim="nvim"
alias vi="nvim"
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"
alias py="python3"
alias c="clear"




