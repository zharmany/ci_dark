" Copyright (c) 2020 Ling CHU <meetchuling@gmail.com>
"
" Permission to use, copy, modify, and distribute this software for any
" purpose with or without fee is hereby granted, provided that the above
" copyright notice and this permission notice appear in all copies.
"
" THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
" WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
" ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
" WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
" ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
" OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

let s:colors = {}

let s:colors.black = '#24292e'
let s:colors.red = '#f97583'
let s:colors.green = '#85e89d'
let s:colors.yellow = '#ffea7f'
let s:colors.blue = '#79b8ff'
let s:colors.magenta = '#b392f0'
let s:colors.cyan = '#73e3ff'
let s:colors.white = '#f6f8fa'
let s:colors.gray = '#959da5'

let s:colors.foreground = s:colors.white
let s:colors.background = s:colors.black
let s:colors.background_lighter = '#2d3237'

let s:colors.selection_bg = '#c8c8fa'
let s:colors.selection_fg = s:colors.background

let s:colors.cursor_bg = s:colors.green
let s:colors.cursor_fg = s:colors.background
let s:colors.cursor_guide = '#2f363d'

let s:colors.split = '#454d56'

let s:colors.win_bg = '#3a3f43'
let s:colors.selected_bg = '#1269d3'

let s:colors.sneak_bg = '#b32ef0'

let s:colors.none = 'NONE'
let s:colors.underline = 'underline'

let s:colors.bold = 'NONE'
let s:colors.italic = 'NONE'
let s:colors.bolditalic = 'NONE'

if get(g:, 'ci_dark_enable_bold', 0) == 1
  let s:colors.bold = 'bold'
  let s:colors.bolditalic = 'bold'
endif

if get(g:, 'ci_dark_enable_italic', 0) == 1
    let s:colors.italic = 'italic'
    let s:colors.bolditalic = 'italic'
endif

if (get(g:, 'ci_dark_enable_bold', 0) == 1)
    \ && (get(g:, 'ci_dark_enable_italic', 0) == 1)
    let s:colors.bolditalic = 'bold,italic'
endif


function! ci_dark#get_colors() abort
  return s:colors
endfunction
