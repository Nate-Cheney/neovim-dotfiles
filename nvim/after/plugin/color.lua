-- Set the colorscheme to catppuccin
vim.g.catppuccin_flavour = "macchiato"

-- Only load if catppuccin is installed
local ok, catppuccin = pcall(require, "catppuccin")
if ok then
  catppuccin.setup()
  vim.cmd.colorscheme "catppuccin"
  
  -- Make Window Transparent
  vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
  ]]
end
