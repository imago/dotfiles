# Using WeZTerm as comman line tool
# Blogpost: https://the-developer.de/configurations/macos_wezterm_zsh_setup/
# Dotfiles: https://github.com/imago/dotfiles
# brew install --cask wezterm
# brew install git
# brew install --cask font-meslo-lg-nerd-font
# brew install powerlevel10k
# brew install zsh-autosuggestions zsh-syntax-highlighting
# brew install eza zoxide
# brew install fzf

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Apple Silicon (default Homebrew prefix)
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Adding zshrc plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Configuration for eza and zoxide
# brew install eza zoxide

alias ls="eza --icons"

eval "$(zoxide init zsh)"
alias cd="z"

# fzf (key bindings + fuzzy completion)
source <(fzf --zsh)
