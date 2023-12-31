## vim 操作メモ

### 移動

#### 単語ごと

- `w` : 単次の単語の先頭に移動
- `e` : 次の単語の終わりに移動
- `b` : 前の単語の先頭に移動

#### 上下

- `<S+[>` : 上に移動
- `<S+]>` : 下に移動
- `gg` : ファイル先頭へ
- `G` : ファイル末尾へ

#### Ctrl + z の操作

- `u` : 直近の変更を取り消し(ノーマルモード)
- `<C+r> : 取り消した変更を再度適用(ノーマルモード)

### coc.nvim の設定関連

#### 補完関連

- `<cr>` : 補完選択確定
- `<TAB>` : 補完選択移動
- `<S-TAB>` : 補完選択移動(戻る)
- `gd` : 定義ファイルへ移動
- `<C+e>` : 補完解除

#### coc-explorer の操作

- `\e` : 起動
- `a` : ファイル追加
- `A` : ディレクトリ追加
- `r` : リネイム
- `R` : リフレッシュ
- `<bs>` : 親階層に戻る
- `q` : 終了
- `yp` : ファイルパスをコピー
- `yn` : ファイル名をコピー
- `yy` : ファイルをコピー
- `dd` : ファイルをカット
- `p` : ファイルをペイスト
- `df` : 削除
- `dF` : 永遠に削除

#### ファイル検索

- `:CocList files` : ワークスペースのファイルをインクリメンタルサーチ
- `:CocList grep` : ワークスペース内のテキストを検索

### Git 関連の操作

#### Git の操作

- `:Git + ` : Git の操作

#### Git の履歴

- `:Tig` : Git の履歴の確認

### その他

#### 複数行のコメントアウト

1. `Ctrl + v` を押す : vim のノーマルモードから「Ctrl + v」を押して矩形選択モードにします

2. コメントアウトしたい行を選択 : j , k もしくは キーボードの上下キー選択で選択します

3. `Shift + i` で挿入モードにする

4. `#` を入力

5. `esc` を押す

#### コメントアウトを削除する

1. `Ctrl + v` を押す : vim のノーマルモードから「Ctrl + v」を押して矩形選択モードにします

2. コメントアウトしたい行を選択 : j , k もしくは キーボードの上下キー選択で選択します

3. `d` を押す

#### Git コマンド

1. `Git reset --hard + ハッシューキー` : 該当のコミットに戻る 例) `Git reset --hard 2dc20c2040678a67c22647a0c163fb896ba1c42e`
