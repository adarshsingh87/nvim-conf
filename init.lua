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
require("gitsigns").setup({
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
})
