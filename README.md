前置準備

```sh
# 安裝 zsh
sudo apt install zsh
sudo chsh -s $(which zsh) $(whoami)

# 安裝 neovim （也可以用 vim 就好）
sudo apt install neovim
# 可移除原系統中的 vim
# sudo apt remove vim

# 安裝 cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

安裝本專案管理之設定檔

```sh
git clone git@github.com:MROS/dotfiles.git .dotfiles
cd .dotfiles
./install
```

後續佈置

- 進到 nvim 中執行 `:PlugInstall`
- 若要啓用 coc.vim ，需安裝 node.js
