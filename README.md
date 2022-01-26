# my-dein

## install neovim
```bash
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein
```

## change directory name
```bash
cd ~/.config/
git clone git@github.com/habutaso/my-dein.git
mv my-dein nvim
```

## install vim plugin
```bash
vim
```
then
```
:call dein#install()
```
