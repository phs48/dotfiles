-- Theme settings
vim.opt.termguicolors = true

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Show the '~' characters after the end of buffers
-- vim.g.dracula_show_end_of_buffer = true

vim.g.tokyonight_transparent = true
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_hide_inactive_statusline	= true
vim.g.tokyonight_italic_comments = false

-- Highlight on yank
vim.cmd[[
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]

-- transparent backgrounds
-- vim.g.zenbones_transparent_background = true
-- vim.g.dracula_transparent_bg = true

vim.cmd[[colorscheme tokyonight]]

-- vim.cmd[[
--   hi Normal guibg=none ctermbg=none
--   hi LineNr guibg=none ctermbg=none
--   hi Folded guibg=none ctermbg=none
--   hi NonText guibg=none ctermbg=none
--   hi SpecialKey guibg=none ctermbg=none
--   hi VertSplit guibg=none ctermbg=none
--   hi SignColumn guibg=none ctermbg=none
--   hi EndOfBuffer guibg=none ctermbg=none
-- ]]
