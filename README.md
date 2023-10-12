# Neovim の設定

## Quickstart

### 1.最新版の Neovim をインストールする

> Mac に Neovim をインストールする

```shell
brew install neovim --HEAD

# 更新時はこれだけで OK
brew reinstall neovim
```

### 2.packer.nvim のインストールと最低限の設定

```shell

# opt ディレクトリにpacker.nvimをクローン
git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

# 必要なフォルダの作成
mkdir ~/.config/
cd ~/.config/

# Gitより設定をクローンする
git clone https://github.com/Ue555/nvim.git

# プラグインをインストールする
:PackerInstall
# 追加されたプラグインをインストールし、既存のものは更新する
:PackerUpdate
# 必要なくなったプラグインを削除する
:PackerClean
# 設定ファイルをコンパイルする
:PackerCompile
# インストールしたリストを見せる
:PackerStatus
```

### 3.prettier をプロジェクトにインストールする

```shell

npm install --save-dev --save-exact prettier
```

- 必要に応じて.prettierrc.json や.prettierignore の作成や設定をする

### 4.grep を利用するために ripgrep をプロジェクトにインストールする

```shell

brew install ripgrep
```

### 5.tmux をインストールと設定をする

```shell

brew install tmux

# ホームディレクトリに設定ファイルの作成
touch ~/.tmux.conf
```

`.tmux.conf`

```shell

# プレフィックスキーをctrl+aに変更
set -g prefix C-a

# デフォルトのプレフィックスキーctrl+bを解除
unbind C-b

# プレフィックスキー+^でペインを垂直分割する
bind ^ split-window -h

# プレフィックスキー+-でペインを水平分割する
bind - split-window -v

# 256色モードを有効化
set-option -g default-terminal screen-256color
set -g terminal-overrides 'xterm:colors=256'

# ステータスラインの文字色、背景色を変更
setw -g status-style fg=colour255,bg=colour234

# マウス操作を有効化
set-option -g mouse on

# 画面サイズ変更
bind -r h resize-pane -L 5
bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5

# paneの文字色と背景色
set -g pane-border-style fg=colour45

# アクティブpaneの文字色と背景色
set -g pane-active-border-style fg=colour45
```

- よく使う機能・コマンド

```shell

# ペインを垂直分割
プレフィックスキー + ^

# ペインを水平分割
プレフィックスキー + -

# ペインの破棄
プレフィックスキー + x
```

### 6.tig をインストールする

```shell

brew install tig

# Neovim 内でコマンドモードに移動し、以下のコマンドを実行する
:terminal tig
```

### 7.coc.nvim を利用して、各 Language Server をインストールする

```shell

:CocInstall coc-tsserver coc-prettier

# 以下リスト
coc-lists
coc-html
coc-explorer
coc-eslint
coc-yaml
coc-tsserver
coc-sh
coc-rls
coc-phpls
coc-json
coc-jedi
coc-go
```
