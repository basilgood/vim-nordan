" Nordan - Arctic nights color scheme
" Author: Dan Loudon
" License: MIT
" Version: 0.1.0
"
" Based off the Nord palette from arcticicestudio
" https://github.com/arcticicestudio/nord
"

highlight clear
syntax reset

set background=dark
let g:colors_name='nordan'

if !exists('g:nordan_italics')
  let g:nordan_italics = 0
endif


" ===  Polar Night   =========
let s:nord0 = '#2E3440'
let s:nord1 = '#3B4252'
let s:nord2 = '#434C5E'
let s:nord3 = '#4C566A'

" ===  Snow Storm   =========
let s:nord4 = '#D8DEE9'
let s:nord5 = '#E5E9F0'
let s:nord6 = '#ECEFF4'

" ===  Frost   =========
let s:nord7 = '#8FBCBB'
let s:nord8 = '#88C0D0'
let s:nord9 = '#81A1C1'
let s:nord10 = '#5E81AC'

" ===  Aurora   =========
let s:nord11 = '#BF616A'
let s:nord12 = '#D08770'
let s:nord13 = '#EBCB8B'
let s:nord14 = '#A3BE8C'
let s:nord15 = '#B48EAD'


function! s:HL(group, fg, bg, attr)
  let l:attr = a:attr
  if g:nordan_italics == 0 && l:attr ==? 'italic'
    let l:attr = 'none' 
  endif

  if !empty(a:fg) 
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif

  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun


" ===  Editor  =========

" ===  Syntax  =========

" ===  CSS   =========

" ===  HTML  =========

" ===  Javascript  =========

" ===  NERDTREE  =========



