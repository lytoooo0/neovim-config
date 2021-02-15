" =======================================
" Plug-ins
" =======================================
" vim-plug
call plug#begin()
    Plug 'lervag/vimtex'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'SirVer/ultisnips'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()


" =======================================
" Deoplete
" =======================================

" Deoplete for VimTeX
call deoplete#custom#var('omni', 'input_patterns', {
        \ 'tex': g:vimtex#re#deoplete
        \})

" Enable deoplete when InsertEnter.
let g:deoplete#enable_at_startup = 0
autocmd InsertEnter * call deoplete#enable()


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

" =======================================
" UltiSnips
" =======================================

" UltiSnips Trigger configuration
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" =======================================
" Custom Conigurations
" =======================================

" Remap jk to ESC in insert mode
:inoremap jk <ESC>

" Enable relatvie line numbers
:set relativenumber

" Remove letters from lower right of the screen
:set noshowcmd

let g:mkdp_auto_start = 1
