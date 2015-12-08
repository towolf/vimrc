set nocompatible
" set cmdheight=2
set laststatus=2
syntax enable
colo lilydjwg_dark
set directory=/tmp
set viminfo='20,\"100
set history=150
set modeline
set display=lastline
set number
set relativenumber
set spellfile=~/.vim/spell/en.utf-8.add
set updatetime=1000
set noerrorbells
set visualbell t_vb=
set clipboard=autoselect,html
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.lof,.log,.lot,.out,.pdf,.prj,.toc
set showcmd     " Show (partial) command in status line.
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set showmatch   " Show matching brackets.
set ignorecase  " Do case insensitive matching
set smartcase   " Do smart case matching
set incsearch   " Incremental search
set autowrite   " Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned
set listchars=tab:⇢┄,trail:⋅,nbsp:␣,eol:↩
set fillchars=vert:▏,fold:-
set shortmess=atToOI
set ai
" set lazyredraw
set hlsearch
"set linebreak
set wildmenu
set wildmode=longest,list
set completeopt=menuone,preview,longest

set expandtab
set tabstop=2
set shiftwidth=2
"set cinkeys=0{,0},:,0#,!<C-Tab>,!^F
"set foldmethod=syntax
set autoindent
set cinoptions=(0,+1s,:0,=2s,>2s,c1s,g2s,h2s,l1,m1,p2s,t0,u0,w1

if has('mouse')
  set mouse=a                   " Use the mouse for all modes
endif
set mousemodel=popup_setpos     " Reposition the cursor on right-click

if &term =~? '^\(xterm\|putty\|konsole\|gnome\|fbterm\)' " xterm and 'clones'
  let &t_RV="\<Esc>[>c"         " Let Vim check for xterm-compatibility
  set ttyfast                   " Because no one should have to suffer
  set ttymouse=xterm2           " Assume xterm mouse support
endif
if &term =~? '^screen'          " screen and tmux
  set ttyfast                   " Because no one should have to suffer
  if  exists("$STY")            " only screen
    set ttymouse=xterm2         " Assume xterm mouse support
  endif
endif


" if &term =~ "screen"
"   set t_Co=256
"   if has("terminfo")
"     let &t_Sf=nr2char(27).'[3%p1%dm'
"     let &t_Sb=nr2char(27).'[4%p1%dm'
"   else
"     let &t_Sf=nr2char(27).'[3%dm'
"     let &t_Sb=nr2char(27).'[4%dm'
"   endif
" endif

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" original repos on github
" Plugin 'MatlabFilesEdition'
Plugin 'jwhitley/vim-matchit'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-git'
" Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-markdown'
" Plugin 'tpope/vim-fugitive'
Plugin 'tommcdo/vim-exchange'
Plugin 'scrooloose/syntastic'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/screen'
Plugin 'ervandew/supertab'
Plugin 'tomtom/tcomment_vim'
Plugin 'bogado/file-line'
" Plugin 'godlygeek/tabular'
Plugin 'junegunn/vim-easy-align'
Plugin 'sjl/gundo.vim'
Plugin 'vim-pandoc/vim-pandoc-syntax'
"Plugin 'vim-pandoc/vim-pantondoc'
" Plugin 'ap/vim-css-color'
" Plugin 'pangloss/vim-javascript'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'evanmiller/nginx-vim-syntax.git'
" vim-scripts repos
"    Plugin 'L9'
"    Plugin 'FuzzyFinder'
Plugin 'netrw.vim'
Plugin 'Mark--Karkat'
"Gameforge
Plugin 'pearofducks/ansible-vim'
" Plugin 'jamessan/vim-gnupg'
" non github repos
"    Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'git://repo.or.cz/vcscommand'
" ...

call vundle#end()            " required
filetype plugin indent on     " required!
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..
"


cmap w!! %!sudo tee > /dev/null %

"nnoremap <BS> <Esc>1z=<CR>
map   <F1> <Nop>
imap  <F1> <Nop>
map   <F2> :ToggleBufExplorer<CR>
set   <S-F3>=O1;2R
map   <F3> :cn<CR>
map   <C-F3> :lnext<CR>
map   <leader><F4> :lprev<CR>
map <S-F3> :cp<CR>
map   <F4> :nohl<CR>
map   <F6> :GundoToggle<CR>
" map   <F8> :call system('/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .')<CR>
" map <S-F8> :TlistToggle<CR>
set pastetoggle=<F11>
map  <F12> ggVG"+y
nmap <F12> ggVG"+y

map <A-1> :tabp<CR>
imap <A-1> <C-O>:tabp<CR>
map <A-2> :tabn<CR>
imap <A-2> <C-O>:tabn<CR>
map <S-PageUp> :tabp<CR>
imap <S-PageUp> <C-O>:tabp<CR>
map <S-PageDown> :tabn<CR>
imap <S-PageDown> <C-O>:tabn<CR>
map <A-3> :tabc<CR>
imap <A-3> <C-O>:tabc<CR>

map <C-Insert> "+y
nmap <C-u> :redo<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
" Visually select the text that was last edited/pasted
nmap gV `[v`]

if &diff
  map <localleader>1 :diffget LOCAL<CR>
  map <localleader>2 :diffget BASE<CR>
  map <localleader>3 :diffget REMOTE<CR>
endif

set <S-Down>=O1;2A
set <S-Up>=O1;2B
set <S-Left>=O1;2D
set <S-Right>=O1;2C
map <S-Down> <C-w>j
map <S-Up> <C-w>k
map <S-Left> <C-w>h
map <S-Right> <C-w>l

map + <Plug>(expand_region_expand)
map - <Plug>(expand_region_shrink)

map <A-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <C-\> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :stjump<CR>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif
imap <C-!> <C-O>:SuperTabHelp<CR><ESC>
nmap <C-!> :SuperTabHelp<CR>
let g:SuperTabRetainCompletionDuration = 'session'
"let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1
let g:SuperTabMappingForward = '<tab>'
let g:SuperTabMappingBackward = '<s-tab>'
let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
  \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

let g:syntastic_python_checkers = ['python', 'flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
" let g:syntastic_javascript_checker = 'closurecompiler'
let g:syntastic_javascript_checkers = ['gjslint']
" let g:syntastic_javascript_checker = 'jshint'
let g:syntastic_sh_checkers = ['sh']
" let g:syntastic_html_checkers = ['validator']
" let g:syntastic_css_checker = ['csslint']
" let g:syntastic_javascript_closure_compiler_path = '~/.vim/bundle/syntastic/syntax_checkers/javascript/compiler.jar'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 2
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height = 3
" let g:syntastic_auto_jump = 1

let Tlist_Use_Right_Window = 1

let mapleader = ","
"let maplocalleader = "+"

call tcomment#DefineType('matlab_inline', '%%{ %s %%}' )
call tcomment#DefineType('matlab_block',  '%%{ %s %%}\n   ' )
call tcomment#DefineType('debsources',           '# %s'             )
let g:tcommentMapLeader1 = '<c-c>'
let g:tcommentMapLeader2 = '<leader>c'
let g:tcommentTextObjectInlineComment = 'ik'

"let g:ScreenShellHeight = 20
"let g:ScreenShellQuitOnVimExit = 1
"let g:ScreenShellServerName = 'vim'
let g:ScreenShellExternal = 1
let g:ScreenShellTerminal = 'gnome-terminal'
let g:ScreenShellExpandTabs = 1
let g:ScreenImpl = 'GnuScreen'

let g:airline_powerline_fonts = 1
let g:airline_theme = "kalisi"
let g:airline#extensions#disable_rtp_load = 1
let g:airline#extensions#quickfix#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#netrw#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#whitespace#enabled = 1
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_branch_prefix = ' '
" let g:airline_readonly_symbol = ''
" let g:airline_linecolumn_prefix = ' '
" let g:airline#extensions#whitespace#symbol = 'Ξ'

let g:gitgutter_signs = 1
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 1
let g:gitgutter_sign_added='✚'
let g:gitgutter_sign_removed='▁'
let g:gitgutter_sign_modified='±'
let g:gitgutter_sign_modified_removed='✘'
" let g:gitgutter_sign_column_always = 1

highlight GitGutterChangeDefault cterm=bold

vmap <C-c> :ScreenSend<CR>
nmap <C-c> :.ScreenSend<CR>j
imap <C-c> <C-o>:.ScreenSend<CR>

highlight yo ctermfg=black guifg=black ctermbg=yellow guibg=yellow

highlight ve ctermfg=black guifg=black ctermbg=lightgreen  guibg=lightgreen
let g:snips_author = 'Tobias Wolf <towolf@gmail.com>'
"let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-j>"

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let VCSCommandDeleteOnHide=1

let python_highlight_all = 1
let python_print_as_function = 1

let g:tex_flavor = "latex"
let g:checksyntax_cmd_tex = '/opt/texlive2010/bin/i386-linux/chktex -l -q -v0 -n29'
let g:checksyntax_efm_tex  = '%f:%l:%c:%m'

let g:Tex_CompileRule_pdf='rubber --short --pdf --inplace $*'
let g:Tex_ViewRule_pdf='evince > /dev/null 2>&1'
let g:Tex_DefaultTargetFormat='pdf'

let g:sme_extlist = [ "c", "h", "py", "cc", "cpp", "C", "hpp", "xml", "xslt", "vim", "r"]

let g:debchangelog_fold_enable=1
let g:debchangelog_complete_mode=''
let g:ifold_show_text=1

let g:netrw_list_hide='^\..*,.*\.aux,.*\.bbl,.*\.blg,.*\.lot,.*\.lof,.*\.swp,.*\.svn,.*\.toc,.*\.out,.*\.brf'
let g:netrw_http_cmd='curl'
let g:netrw_http_xcmd='-o'

let g:scomment_default_mapping = 1
let g:prefer_commentstring = 1

let g:pandoc_use_conceal = 0
let g:pandoc_use_hard_wraps = 1
"let g:pandoc_auto_format = 1
let g:pandoc_no_folding = 1
let g:pandoc_no_empty_implicits = 1
let g:pandoc_no_spans = 0

let g:errormarker_disablemappings = 1
let g:mwAutoSaveMarks = 0
let g:mwHistAdd = ''

let g:ansible_extra_syntaxes = 'sh.vim'
let g:ansible_attribute_highlight = 'ab'
let g:ansible_name_highlight = 'd'

com -nargs=1 -complete=buffer Alice Nwrite "ftp.alice-dsl.net <args>"
"set grepprg=grep\ -nH\ $*
"hi link TAB_CHAR Error

autocmd BufRead     *.wiki set ft=googlecodewiki
autocmd BufRead     *.pde set ft=arduino
autocmd BufRead,BufNewFile *.json set filetype=json foldmethod=syntax
autocmd BufReadPre  *.pdf set ro
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - | fmt -csw72
autocmd BufEnter    *.m   compiler mlint
autocmd BufEnter    *.tex set fo=troq
autocmd BufEnter    *.dch let g:SuperTabDefaultCompletionType = "<C-X><C-L>"

autocmd BufEnter    *.py  set sw=4 sts=4 ts=4 expandtab
autocmd BufEnter    *.py  set omnifunc=pythoncomplete#Complete
autocmd BufEnter    *.py  set nocindent smartindent
autocmd BufEnter    *.py  set cinwords=if,else,elif,for,while,def,class,try,except,finally
autocmd BufEnter    *.py  set formatoptions=croq2
autocmd BufEnter    *.py  inoremap # X#
autocmd BufEnter    *.py  map ]] /^[^ \t#]\+.*:
autocmd BufEnter    *.py  map [[ ?^[^ \t#]\+.*:
autocmd BufNewFile,BufRead *.r set ft=r
autocmd BufNewFile,BufRead *.R set ft=r
autocmd BufRead *.Rout set ft=r
autocmd BufRead *.Rhistory set ft=r
autocmd BufNewFile,BufRead *.pandoc,*.text set filetype=pandoc

autocmd FileType pandoc let b:surround_101 = "*\r*"
autocmd FileType pandoc let b:surround_42 = "**\r**"
autocmd FileType pandoc let b:surround_96 = "`\r`"
autocmd FileType markdown let b:surround_101 = "*\r*"
autocmd FileType markdown let b:surround_42 = "**\r**"
autocmd FileType markdown let b:surround_96 = "`\r`"
autocmd FileType html setlocal indentkeys-=*<Return>

autocmd FileType ansible setlocal path+=/home/towolf/src/ansible/svn/roles
autocmd FileType ansible setlocal path+=/home/towolf/src/ansible/svn/playbooks
autocmd FileType ansible setlocal path+=templates/**,files/**,tasks/**,vars/**,handlers/**
autocmd FileType ansible setlocal path+=../templates/**,../files/**
" autocmd FileType ansible setlocal includeexpr=v:fname.'/tasks/main.yml
autocmd FileType ansible setlocal suffixesadd=.yml

"map <Right> f	l
"map <Left> F	T

au BufNewFile,BufRead *.R     setf r
au BufNewFile,BufRead *.R     set syntax=r

cab Q q
cab W w

function! g:ToggleNuMode()
  if(&nu == 1)
    set nonu
    set nornu
  else
    if(&rnu == 1)
      set nu
    else
      set rnu
    endif
  endif
endfunc
nnoremap <leader>n :call g:ToggleNuMode()<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>w :set wrap!<CR>

" nnoremap <Leader>t :CommandT<Return>
nnoremap <Leader>1 :bprev<Return>
nnoremap <Leader>2 :bnext<Return>
nnoremap <Leader>3 :bd<Return>
" nnoremap <Leader>f :b

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

xnoremap <expr> p v:register=='"'?'pgvy':'p'

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

vnoremap <leader>t :call <SID>table()<cr>
function! s:table() range
   exe "'<,'>Tab /|"
   let hsepline= substitute(getline("."),'[^|]','-','g')
   exe "norm! o" .  hsepline
   exe "'<,'>s/-|/ |/g"
   exe "'<,'>s/|-/| /g"
   exe "'<,'>s/^| \\|\\s*|$\\||//g"
endfunction

nnoremap <Leader>a :bprev<Return>
nnoremap <Leader>s :bnext<Return>
nnoremap <Leader>d :bd<Return>
nnoremap <Leader>f :b  
