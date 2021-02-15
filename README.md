1. Install [vim-plug](https://github.com/junegunn/vim-plug)
2. Check python3 configurations for [deoplete](https://github.com/Shougo/deoplete.nvim) by typing `echo: has("python3")`. It is better to follow the official instruction.
3. paste following codes in `~/.config/nvim/init.vim`
```
call plug#begin()
    Plug 'lervag/vimtex'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'SirVer/ultisnips'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()
```
4. Run `:PlugInstall`
5. Past other parts in `init.vim`
