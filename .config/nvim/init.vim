:lua require('plugins')
lua require('themes')
lua require('_status-line')

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

set clipboard^=unnamed

