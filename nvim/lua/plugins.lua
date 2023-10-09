local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')

require('pckr').add{
  -- My plugins here
  -- Gitを操作するプラグイン
  'tpope/vim-fugitive';
  
  -- Gitでファイル編集時に差分を表現する記号が左端に表示される
  'airblade/vim-gitgutter';
}
