return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    open_mapping = [[<c-\>]],
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    direction = 'horizontal',
    close_on_exit = true,

  }

}
