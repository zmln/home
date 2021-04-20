let g:lightline = {
\   'colorscheme': 'darcula',
\   'component': {
\     'readonly': '%{&readonly?"\uf023":""}',
\     'modified': '%{&modified?"\ue701":""}',
\   },
\   'component_function': {
\     'filetype': 'LightlineFileType'
\   },
\   'active': {
\     'left': [['mode', 'paste'], ['filename', 'readonly', 'modified']],
\     'right': [['lineinfo'], ['filetype']]
\   },
\   'separator': {
\     'left': '',
\     'right': ''
\   },
\   'subseparator': {
\     'left': '',
\     'right': ''
\   }
\ }

function! LightlineFileType()
  return &filetype == 'vim' ? "\ue7c5" :
\        &filetype == 'typescript' ? "\ue628" :
\        &filetype == 'typescriptreact' ? "\ue7ba" :
\        &filetype == 'javascript' ? "\ue74e" :
\        &filetype == 'javascriptreact' ? "\ue7ba" :
\        &filetype == 'python' ? "\ue73c" :
\        &filetype == 'markdown' ? "\ue73e" :
\        &filetype == 'html' ? "\ue736" :
\        &filetype == 'css' ? "\ue749" :
\        &filetype == 'go' ? "\ue724" :
\        &filetype
endfunction
