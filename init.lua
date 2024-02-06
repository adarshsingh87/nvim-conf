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
vim.cmd("set nrformats+=alpha")
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

vim.opt.list = true

local hooks = require("ibl.hooks")

local highlight = {
  "IndentBlanklineIndent1",
  "IndentBlanklineIndent2",
  "IndentBlanklineIndent3",
  "IndentBlanklineIndent4",
  "IndentBlanklineIndent5",
  "IndentBlanklineIndent6",
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#E06C75" })
  vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = "#E5C07B" })
  vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = "#61AFEF" })
  vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = "#D19A66" })
  vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = "#98C379" })
  vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = "#C678DD" })
end)

require("ibl").setup({ indent = { highlight = highlight } })

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
  ["none-ls"] = {
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
    print_width = 140,
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
