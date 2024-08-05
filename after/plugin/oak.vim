" Last Change: 2022 Nov 22

if !exists("g:colors_name") || g:colors_name !=? "oak"
  finish
endif

" Telescope
call oak#hi('TelescopeNormal', g:oak#palette.trunk5, g:oak#palette.trunk1)
call oak#hi('TelescopeSelection', g:oak#palette.leaf3, '', 'bold')
call oak#hi('TelescopeMatching', g:oak#palette.petal1)
call oak#hi('TelescopeSelectionCaret', g:oak#palette.fur2)
call oak#hi('TelescopePromptPrefix', g:oak#palette.fur2)
call oak#hi('TelescopeBorder', g:oak#palette.trunk4)

" Tree-sitter internals and uses
call oak#hi("nodeType", g:oak#palette.trunk5)
call oak#hi("nodeTag", g:oak#palette.fur1)
if has('nvim-0.8')
  call oak#hi('@parameter', g:oak#palette.fg, '', '')

  highlight default link @text.environment Keyword

  call oak#hi('@property', g:oak#palette.fur2)

  call oak#hi('@namespace', g:oak#palette.fur2)
  highlight default link @text.environment.name @namespace

  call oak#hi('@punctuation.delimiter', g:oak#palette.fur2)
  highlight default link @punctuation.special @punctuation.delimiter
  highlight default link @text.math @punctuation.delimiter

  highlight default link @text.reference Constant

  highlight default link @text.emphasis Italic
  highlight default link @text.strong Bold
  highlight default link @text.underline Underlined
else
  call oak#hi('TSParameter', g:oak#palette.fg, '', '')
endif
