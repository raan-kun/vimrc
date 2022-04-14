function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" use vscode easymotion when in vscode mode
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
map <Leader> <Plug>(easymotion-prefix)

" sublime-style multi cursor
" Plug 'mg979/vim-visual-multi'
" let g:VM_maps = {}
" let g:VM_maps['Find Under'] = '<C-n>'

" allow use of */# on a visual selection
Plug 'bronson/vim-visual-star-search'

" Initialize plugin system
call plug#end()
