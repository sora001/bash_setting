"** 文字コード設定 **
set encoding=utf-8                  "vim
set fileencoding=utf-8              "保存するファイル
set fencs=iso-2022-jp,enc-jp,cp932  "開くファイル
 
"** 表示設定 **
syntax on                           "ハイライト表示
set title                           "タイトル
set number                          "行番号
 
"** カラースキーマ設定 **
set t_Co=256
colorscheme molokai
let g:molokai_original=1
set background=dark
 
set tabstop=2                       "タブ文字幅
set shiftwidth=2                    "インデント幅
set noexpandtab                     "挿入モードでタブ文字有効
set smartindent
set smarttab
