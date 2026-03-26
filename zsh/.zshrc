export PATH=$HOME/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export VISUAL=nvim
export GPG_TTY=$(tty)
export PATH="$PATH:/Users/silasbue/.local/bin" # Created by `pipx` on 2025-03-29 11:23:42
plugins=(starship zoxide docker encode64 git fzf yarn zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# # get secrets if file exists
# if [ -f ~/.dotfiles/zsh/.zsh_secrets ]; then
#   source ~/.dotfiles/zsh/.zsh_secrets;
# else
#   echo "no secrets found: make sure to add manually in ~/.dotfiles/zsh/.zsh_secrets";
# fi

