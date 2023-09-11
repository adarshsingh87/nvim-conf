-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("set scrolloff=10")
vim.cmd("set guicursor=")
vim.cmd("set ve+=onemore")
vim.cmd("set ww+=<,>,[,]")

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
vim.cmd("set textwidth=130")
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

vim.opt.termguicolors = true
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])

vim.opt.list = true

require("indent_blankline").setup({
  show_current_context = true,
  show_current_context_start = true,
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
})

require("prettier").setup({
  bin = "prettier",
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        check_package_json = true,
      })
    end,
    runtime_condition = function(params)
      return true
    end,
    timeout = 5000,
  },
  cli_options = {
    arrow_parens = "always",
    bracket_spacing = true,
    bracket_same_line = false,
    embedded_language_formatting = "auto",
    end_of_line = "lf",
    html_whitespace_sensitivity = "css",
    jsx_bracket_same_line = false,
    jsx_single_quote = false,
    print_width = 130,
    prose_wrap = "preserve",
    quote_props = "as-needed",
    semi = false,
    single_attribute_per_line = false,
    single_quote = false,
    tab_width = 2,
    trailing_comma = "es5",
    use_tabs = false,
    vue_indent_script_and_style = false,
  },
})
