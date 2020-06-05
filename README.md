# dotfiles
some dotfiles

# Usage
```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc


config status
config add .vimrc
config commit -m "Add vimrc"
config add .zshrc
config commit -m "Add zshrc"
config push
```

# On new system
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

echo ".cfg" >> .gitignore

git clone --bare <git-repo-url> $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}

config checkout
```
