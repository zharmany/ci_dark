# CI Dark

This is my fork of [chuling/ci_dark](https://github.com/chuling/ci_dark). It tweaks the appearance of the StatusLine and TabLine for a bit better differentiation.

## Preview

### Vim/Neovim

![nvim preview](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/ci_dark/nvim.png)

### Terminal

![term preview](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/ci_dark/term.png)

## Usage

iTerm color preset: [ci_dark.itermcolors](term/)

Neovim/Vim

```viml
Plug 'chuling/ci_dark'

" optional rainbow parentheses improved
" *ci_dark* has a built-in automated configuration for *rainbow*
" there is no need to specify `g:rainbow_conf` manually
Plug 'luochen1990/rainbow'

" true colors are required
syntax on
set termguicolors

" keywords bolded, disabled(=0) by default
let g:ci_dark_enable_bold = 1

colorscheme ci_dark

" better vertsplit char
set fillchars+=vert:│

let g:airline_theme = 'ci_dark'
let g:lightline = {
  \ 'colorscheme': 'ci_dark',
}
```

[basic color preset](preset_doc/color.txt)

## License

[COPYING](COPYING)
