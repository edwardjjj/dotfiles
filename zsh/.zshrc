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


export PATH=$PATH:/usr/local/go/bin
export PATH="/home/edward/.local/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
fpath+=~/.zfunc
fpath+=~/.conda-zsh-completion/
autoload -Uz compinit && compinit

eval "$(zoxide init zsh)"
####################################
#             Alias                #
####################################
alias ls="ls --color=auto"
alias ll="ls -la --color=auto"
alias vim="nvim"
alias vi="nvim"
alias t="cd ~ && tmux new -As home"
alias ta="tmux a -t"
alias tls="tmux ls"
alias tn="tpwd"
alias py="python3"
alias c="clear"
alias lg="lazygit"
alias cd="z"





# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/edward/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/edward/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/edward/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/edward/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


