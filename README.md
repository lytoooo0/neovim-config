1. Install [vim-plug](https://github.com/junegunn/vim-plug)
2. Check python3 configurations for [deoplete](https://github.com/Shougo/deoplete.nvim) by typing `echo: has("python3")`. It is better to follow the official instruction.
3. paste following codes in `~/.config/nvim/init.vim`
```
call plug#begin()
    Plug 'lervag/vimtex'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
    Plug 'rhysd/vim-grammarous'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neomake/neomake'
call plug#end()
```
4. Run `:PlugInstall`
5. Past other parts in `init.vim`
