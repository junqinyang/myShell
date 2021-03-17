#! /bin/bash -x


apt update && apt install zsh autojump -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -i 's#ZSH_THEME=".*"#ZSH_THEME="ys"#' ~/.zshrc
sed -i 's#plugins.*#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)#' ~/.zshrc

chsh -s /bin/zsh

/bin/zsh

