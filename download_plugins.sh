#! /usr/bin/env bash
if [ "$(uname)" == "Darwin" ]; then
    OS="Mac"
else
    OS="Linux"
fi

# 安裝 oh my tmux
# tmux.conf.local 在 install.conf.local 會自動創建 ~/.config/tmux 目錄
# 所以必須檢查 ~/.config/tmux/tmux.conf 才能確定機器是否已經安裝 oh my tmux
if [[ ! -s ~/.config/tmux/tmux.conf ]]; then 
    echo "嘗試安裝 oh my tmux..."
    cd ~/.config/tmux || exit
    git init
    git remote add origin https://github.com/gpakosz/.tmux.git
    git fetch
    git checkout origin/master
    ln .tmux.conf tmux.conf
    cd - || exit
fi


# 安裝 fzf
if [[ ! -d ~/.fzf ]]; then
    echo "嘗試安裝 fzf..."
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

# 安裝 autojump
if [ $OS == "Mac" ]; then
    if ! command -v j &> /dev/null
    then
        echo "嘗試安裝 autojump"
        brew install autojump;
    fi
else
    if [[ ! -d ~/.autojump ]]; then
        echo "嘗試安裝 autojump"
        git clone https://github.com/wting/autojump ~/.autojump; ~/.autojump/install.py
    fi
fi

# 安裝 antigen (zsh 套件管理器)
if [[ ! -s ~/.antigen.zsh ]]; then
    echo "嘗試安裝  antigen (zsh 套件管理器)"
    curl -L git.io/antigen > ~/.antigen.zsh
fi
