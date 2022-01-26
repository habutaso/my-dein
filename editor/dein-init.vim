if &compatible
	set nocompatible
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim	

if dein#load_state($HOME . '.config/nvim/dein')
	let g:dein#cache_directory = $HOME . '/.cache/dein'

	call dein#begin($HOME . '/.config/nvim/dein')

	let s:toml_dir = $HOME . '/.config/nvim/dein/toml'
	let s:toml = s:toml_dir . '/dein.toml'
	let s:lazy_toml = s:toml_dir . '/lazy.toml'

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable
