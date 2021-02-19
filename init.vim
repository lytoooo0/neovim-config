" =======================================
" Plug-ins
" =======================================
" vim-plug
call plug#begin()
    Plug 'lervag/vimtex'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
    Plug 'rhysd/vim-grammarous'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neomake/neomake'
    Plug 'vimwiki/vimwiki'
call plug#end()


" =======================================
" COC
" =======================================

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" use <tab> for snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


" Support TeX 

    nnoremap <silent> K :call <sid>show_documentation()<cr>
    function! s:show_documentation()
      if index(['vim', 'help'], &filetype) >= 0
        execute 'help ' . expand('<cword>')
      elseif &filetype ==# 'tex'
        VimtexDocPackage
      else
        call CocAction('doHover')
      endif
    endfunction

" Extensions
let g:coc_global_extensions = ['coc-vimtex', 'coc-json', 'coc-texlab', 'coc-sh', 'coc-lists', 'coc-snippets']

" =======================================
" VimTeX
" =======================================

" Config of vimTeX
let g:tex_flavor = "latex"

" Config of TOC of VimTeX
let g:vimtex_toc_config = {
    \ 'split_width' : 30,
    \ 'mode' : 2,
    \ }

" Set Skim the pdf viewer
let g:vimtex_view_method = 'skim'

let g:vimtex_compiler_progname = 'nvr'

" Disable quickfix window
let g:vimtex_quickfix_mode = 0

let g:vimtex_indent_on_ampersands = 0


let g:vimtex_compiler_latexmk = {
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}


" =======================================
" VimWiki
" =======================================
set nocompatible
filetype plugin on
syntax on

let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/'}] 
" =======================================
" Custom Configurations
" =======================================
set relativenumber

colorscheme peachpuff

imap jk <Esc>

set noshowcmd

set tabstop=4
set shiftwidth=4
set expandtab
