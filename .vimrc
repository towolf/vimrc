set nocompatible
" set cmdheight=2
set laststatus=2
syntax enable
colo lilydjwg_dark
set directory=/tmp
set nostartofline
set viminfo='20,\"100
set history=10000
set modeline
set display=lastline
set number
set smarttab
set complete-=i
set backspace=indent,eol,start
set formatoptions+=j
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

"set relativenumber
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
" set completeopt=menuone,preview,longest
set completeopt=menu,longest

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

if &term =~ '256color'
  set t_ut=                     " disable Background Color Erase (BCE)
  set ttyfast                   " Because no one should have to suffer
  set ttymouse=xterm2           " Assume xterm mouse support
endif

" if &term =~? '^\(xterm\|putty\|konsole\|gnome\|fbterm\)' " xterm and 'clones'
"   let &t_RV="\<Esc>[>c"         " Let Vim check for xterm-compatibility
"   set ttymouse=xterm2           " Assume xterm mouse support
" endif
" if &term =~? '^screen'          " screen and tmux
"   set ttyfast                   " Because no one should have to suffer
"   if  exists("$STY")            " only screen
"     set ttymouse=xterm2         " Assume xterm mouse support
"   endif
" endif


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
Plugin 'jwhitley/vim-matchit'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-markdown'
Plugin 'tommcdo/vim-exchange'
" Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'ervandew/screen'
" Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'sjl/gundo.vim'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'evanmiller/nginx-vim-syntax.git'
" Plugin 'bogado/file-line'
Plugin 'Mark--Karkat'
"Gameforge
Plugin 'pearofducks/ansible-vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'tell-k/vim-autopep8'
Plugin 'majutsushi/tagbar'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'cespare/vim-toml'
Plugin 'DataWraith/auto_mkdir'
Plugin 'mhinz/vim-signify'

Plugin 'towolf/systemd-vim-syntax'

" Plugin 'MatlabFilesEdition'
" Plugin 'tpope/vim-liquid'
" Plugin 'tpope/vim-fugitive'
" Plugin 'godlygeek/tabular'
" Plugin 'vim-pandoc/vim-pantondoc'
Plugin 'ap/vim-css-color'
" Plugin 'pangloss/vim-javascript'
" vim-scripts repos
"    Plugin 'L9'
"    Plugin 'FuzzyFinder'
Plugin 'jamessan/vim-gnupg'
" Plugin 'git://repo.or.cz/vcscommand'

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
nmap  <leader>b :ToggleBufExplorer<CR>
set   <S-F3>=O1;2R
map   <F3> :cn<CR>
map   <C-F3> :lnext<CR>
map   <leader><F4> :lprev<CR>
map   <S-F3> :cp<CR>
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

"Note: neocomplete.vim:
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" end neocomplete

" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabLongestHighlight=1
" let g:SuperTabLongestEnhanced=1
" let g:SuperTabRetainCompletionDuration = 'session'
" let g:SuperTabMappingForward = '<tab>'
" let g:SuperTabMappingBackward = '<s-tab>'
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabContextDiscoverDiscovery =
  " \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

let g:syntastic_python_checkers = ['python', 'flake8']
let g:syntastic_python_flake8_args='--ignore=E501'
" let g:syntastic_javascript_checker = 'closurecompiler'
let g:syntastic_javascript_checkers = ['gjslint']
" let g:syntastic_javascript_checker = 'jshint'
let g:syntastic_sh_checkers = ['shellcheck', 'sh']
" let g:syntastic_html_checkers = ['validator']
" let g:syntastic_css_checker = ['csslint']
" let g:syntastic_javascript_closure_compiler_path = '~/.vim/bundle/syntastic/syntax_checkers/javascript/compiler.jar'
let g:syntastic_ansible_checkers = ['yamllint']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 2
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height = 3
" let g:syntastic_auto_jump = 1


let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_yaml_yamllint_options = ' -c /home/towolf/.config/yamllint/config '

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let Tlist_Use_Right_Window = 1

let mapleader = ","
"let maplocalleader = "+"

call tcomment#DefineType('matlab_inline', '%%{ %s %%}')
call tcomment#DefineType('matlab_block', '%%{ %s %%}\n')
call tcomment#DefineType('debsources', '# %s')
call tcomment#DefineType('ansible', '# %s')
call tcomment#DefineType('icinga2', '# %s')
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
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✘ '
let g:airline#extensions#ale#warning_symbol = '⚠'
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

let g:gundo_prefer_python3 = 1

let g:gitgutter_signs = 1
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 1
let g:gitgutter_sign_added='✚'
let g:gitgutter_sign_removed='▁'
let g:gitgutter_sign_modified='±'
let g:gitgutter_sign_modified_removed='✘'
" let g:gitgutter_sign_column_always = 1

highlight GitGutterChangeDefault cterm=bold


let g:signify_sign_add               = '✚'
let g:signify_sign_delete            = '▁'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '±'
let g:signify_sign_changedelete      = '✘'

let g:signify_realtime = 1
let g:signify_line_highlight = 0

let g:signify_vcs_list = [ 'svn' ]

highlight SignifySignAdd    cterm=bold ctermfg=28
highlight SignifySignDelete cterm=bold ctermfg=009
highlight SignifySignChange cterm=bold ctermfg=214

vmap <C-c> :ScreenSend<CR>
nmap <C-c> :.ScreenSend<CR>j
imap <C-c> <C-o>:.ScreenSend<CR>

highlight yo ctermfg=black guifg=black ctermbg=yellow guibg=yellow
highlight ve ctermfg=black guifg=black ctermbg=lightgreen  guibg=lightgreen

let g:snips_author = 'Tobias Wolf <towolf@gmail.com>'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
"let g:UltiSnipsDontReverseSearchPath="1"
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

let g:netrw_altv           = 1
let g:netrw_fastbrowse     = 2
let g:netrw_keepdir        = 0
let g:netrw_liststyle      = 1
let g:netrw_silent         = 0
let g:netrw_special_syntax = 1
let g:netrw_http_cmd='curl'
let g:netrw_http_xcmd='-o'
" let g:netrw_list_hide='^\..*,.*\.aux,.*\.bbl,.*\.blg,.*\.lot,.*\.lof,.*\.swp,.*\.svn,.*\.toc,.*\.out,.*\.brf'

let g:scomment_default_mapping = 1
let g:prefer_commentstring = 1

let g:pandoc#syntax#conceal#use = 0
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

let g:errormarker_disablemappings = 1
let g:mwAutoSaveMarks = 0
let g:mwHistAdd = ''

let g:jinja_syntax_html=0
let g:yaml_schema='pyyaml'
" let g:ansible_extra_syntaxes = 'sh.vim'
let g:ansible_attribute_highlight = 'a'
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_unindent_after_newline = 1

com -nargs=1 -complete=buffer Alice Nwrite "ftp.alice-dsl.net <args>"
"set grepprg=grep\ -nH\ $*
"hi link TAB_CHAR Error
set grepprg=rg\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m


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
autocmd BufEnter    *.py  map ]] /^[^ \t#]\+.*:\
autocmd BufEnter    *.py  map [[ ?^[^ \t#]\+.*:\
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

autocmd BufRead,BufNewFile */ansible/*.yml  set ft=ansible
autocmd BufRead,BufNewFile *.j2,*/templates/* set ft=ansible_template
autocmd BufRead,BufNewFile */ansible/*/README set ft=ansible_readme
autocmd BufRead,BufNewFile hosts set ft=ansible_hosts
autocmd FileType ansible setlocal suffixesadd=.yml,.j2
autocmd FileType ansible setlocal isfname=@,48-57,/,.,-,_,+,,,#,$,%,~ " without =
autocmd FileType ansible setlocal path+=~/src/ansible/users/tobias.wolf/roles
autocmd FileType ansible setlocal path+=~/src/ansible/users/tobias.wolf/playbooks
autocmd FileType ansible setlocal path+=~/src/ansible/roles
autocmd FileType ansible setlocal path+=~/src/ansible/playbooks
autocmd FileType ansible setlocal path+=templates/**,files/**,tasks/**,vars/**,handlers/**
autocmd FileType ansible setlocal path+=./../vars,./../handlers,./../templates/**,./../files/**
autocmd FileType ansible setlocal indentkeys-=<:>
autocmd FileType yaml setlocal indentkeys-=<:>
autocmd FileType ansible let g:surround_{char2nr('p')} = "{{ \r }}"
autocmd FileType ansible let g:surround_{char2nr('P')} = "{{\r}}"
autocmd FileType ansible_template let g:surround_{char2nr('p')} = "{{ \r }}"
autocmd FileType ansible_template let g:surround_{char2nr('P')} = "{{\r}}"
highlight UnwantedWhitespace ctermbg=236
autocmd BufWinEnter * call matchadd("UnwantedWhitespace", '\s\+$')
" autocmd FileType ansible setlocal includeexpr=v:fname.'/tasks/main.yml

" Make netrw read the user@host:path/to/file ssh notation
" matches host:file (i.e., : not followed by number or slash)
autocmd BufReadCmd   *:[^/][^/]* exe "sil doau BufReadPre scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")|call netrw#Nread(2,"scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", ""))|exe "sil doau BufReadPost scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")
autocmd BufReadCmd   *:/[^/]* exe "sil doau BufReadPre scp://".substitute(expand("<amatch>"), ":", "/", "")|call netrw#Nread(2,"scp://".substitute(expand("<amatch>"), ":", "/", ""))|exe "sil doau BufReadPost scp://".substitute(expand("<amatch>"), ":", "/", "")
autocmd FileReadCmd  *:[^/1234567890]\\\{2,2\}* exe "sil doau FileReadPre scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")|call netrw#Nread(1,"scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", ""))|exe "sil doau FileReadPost scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")
autocmd BufWriteCmd  *:[^/][^/]*	exe "sil doau BufWritePre scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")|exe 'Nwrite scp://'.substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")|exe "sil doau BufWritePost scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")
autocmd BufWriteCmd  *:/[^/]*	exe "sil doau BufWritePre scp://".substitute(expand("<amatch>"), ":", "/", "")|exe 'Nwrite scp://'.substitute(expand("<amatch>"), ":", "/", "")|exe "sil doau BufWritePost scp://".substitute(expand("<amatch>"), ":", "/", "")
autocmd FileWriteCmd *:[^/1234567890]\\\{2,2\}* exe "sil doau FileWritePre scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")|exe "'[,']".'Nwrite scp://'.substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")|exe "sil doau FileWritePost scp://".substitute(fnamemodify(expand("<amatch>"), ":t"), ":", "/", "")

"map <Right> f	l
"map <Left> F	T

" tagbar

" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : 'markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

let g:tagbar_type_ansible = {
    \ 'ctagstype' : 'ansible',
    \ 'kinds' : [
        \ 'a:ansible',
        \ 'i:include',
        \ 't:tasks',
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_autofocus = 1



nmap <F8> :TagbarToggle<CR>


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
      set nornu
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
nnoremap <Leader>b :ToggleBufExplorer<Return>
