-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("set scrolloff=10")
vim.cmd("set guicursor=")

function ColorMyPencils(color)
  color = color or "shades_of_purple"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
vim.cmd("set foldenable")
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=99")
