# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set folder
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ayc0
git clone https://github.com/Ayc0/zsh-ayc0 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ayc0

# mv "$HOME/.zshrc" "$HOME/.zshrc.back"
mv .zshrc "$HOME/.zshrc"
source "$HOME/.zshrc"

# Git config
git config --global push.autoSetupRemote true
git config --global user.name Ayc0
git config --global user.email ayc0.benj@gmail.com
