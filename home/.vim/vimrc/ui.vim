"""""""""""""""""""""""""""""""""""""""""""
" UI Settings
"""""""""""""""""""""""""""""""""""""""""""
syntax on
set laststatus=2
set number						" Enables Line numbers
set t_Co=256					" 256 Terminal Colors

" Colors / Theme
set background=dark				" Dark mode
" colorscheme deep-space
" color dracula

colorscheme onedark

let g:rehash256 = 1

set ruler			" Always show current position

" The first setting tells vim to use "autoindent" (that is, use the current
" line's indent level to set the indent level of new lines). The second makes
" vim attempt to intelligently guess the indent level of any new line based
" on the previous line.
set autoindent
set smartindent

" turn off smart indentation when pasting
set pastetoggle=<F2>


set encoding=utf-8
set splitright
set foldmethod=indent
set foldlevel=99
" highlight the cursor line
set cursorline


set showmode "show the current mode (Insert, Visual...)
set mouse=a " use mouse for everything
" Doesn't work with mouse=a
" set mousemodel=popup " make a menu popup on right click


" set the title of the window to the filename
set title
set titlestring=%f%(\ [%M]%)

" highlight the terms
set hlsearch


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif