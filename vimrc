set nocompatible	"viとの互換を切る
"カーソル位置の保存と復元
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
"NeoBundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shugo/neobundle.vim'
NeoBundle 'itchyny/lightline.vim'
"NeoBundle 'tomasr/molokai'	"color
NeoBundle 'aereal/vim-colors-japanesque'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Townk/vim-autoclose'	"自動カッコ閉じ
call neobundle#end()
filetype plugin indent on
NeoBundleCheck
"Color
syntax on
colorscheme japanesque
"colorscheme molokai
set t_Co=256
"Encode
set encoding=utf-8	"vimの内部文字コード
set fileencoding=utf-8	"書き込み時のエンコード指定
set fileencodings=utf-8,euc-jp,cp932,sjis,iso-20220jp,ucs-2
set fileformats=unix,dos,mac	"改行コードの自動認識らしい
	"読み込み時にどのファイルエンコードで開くかを指定
	"左から順に試される
"Indent
set autoindent	"自動インデント
set smartindent	"改行前の末尾に合わせてインデントを調整
set tabstop=4	"タブサイズ
set shiftwidth=4	"自動インデントのタブサイズ
set noexpandtab	"タブ文字の代わりにスペースno
set backspace=indent,eol,start	"バックスペースで改行など削除
set cindent	"C言語スタイルの自動インデント
"画面設定
set scrolloff=5	"いい感じにスクロールしてくれるやつ
set cursorline	"カーソルのある行をハイライト
set number	"行番号表示
set title	"タイトル表示
set showmatch	"対応するかっこを表示
set wildmenu	"補完候補を表示する
set synmaxcol=200	"1行200文字のシンタックス
"let g:seiya_auto_enable=1	"自動的にvim画面を半透明にする(miyakogi/seiya)
""ステータスライン
set laststatus=2	"ステータスラインを常に表示
set ruler	"右下に行,列表示
set showcmd	"タイプ途中のコマンドを表示
set showmode	"モード表示
"Search
set incsearch	"即検索
set ignorecase	"大文字小文字の区別をしない
set smartcase	"大文字なら小文字との区別をする
set wrapscan	"最後まで行ったら最初に戻る
set hlsearch	"検索結果をハイライト表示
"Swap files
set noswapfile	"スワップファイルを作らない
set nobackup	"バックアップを作らない
command! -nargs=0 Wq wq	"Wq == wq
"command! -nargs=0 Q! q!	"Q! == q!
"検索ハイライトをEsc連打で消す
nnoremap <ESC><ESC> :nohlsearch<CR>
"GVIM
"GUIの種類で判別するしかない模様。とりあえずの対応
"gui_gtkはすべてのバージョンに対応しているらしい(未確認)
if has("gui_gtk") || has("gui_mac")
	set guifont=源ノ角ゴシック\ Code\ JP\ 10
	set guifontwide=源ノ角ゴシック\ Code\ JP\ 10
endif
"Win32は64bitも含まれる?
if has("gui_win32")
	set guifont=源ノ角ゴシック\ Code\ JP:h10
	set guifontwide=源ノ角ゴシック\ Code\ JP:h10
endif
"Vim Plugin Config
"lightline
let g:lightline = {
	\	'colorscheme' : 'jellybeans',
	\	}

