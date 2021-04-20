au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
