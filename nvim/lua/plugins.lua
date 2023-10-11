local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')

require('pckr').add{
  -- My plugins here
  -- Gitを操作するプラグイン
  'tpope/vim-fugitive';
  
  -- Gitでファイル編集時に差分を表現する記号が左端に表示される
  'airblade/vim-gitgutter';

  -- tigをvimから扱うプラグイン
  'iberianpig/tig-explorer.vim';
  
  -- Gitのコミットメッセージを表示するプラグイン(コマンドを叩いたときに読み込む)
  {'rhysd/git-messenger.vim', opt = true, cond = cmd('GitMessenger')};
  
  -- coc.nvimのプラグイン
  {'neoclide/coc.nvim', branch='release'};
  
  -- ウィンドウサイズの変更を簡単・高速にするプラグイン
  'simeji/winresizer';
}
