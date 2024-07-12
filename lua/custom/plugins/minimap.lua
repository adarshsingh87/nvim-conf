return {
  "wfxr/minimap.vim",
  lazy = false,
  init = function()
    vim.cmd("let g:minimap_width = 10")
    vim.cmd("let g:minimap_auto_start = 1")
    vim.cmd("let g:minimap_auto_start_win_enter = 1")
    vim.cmd("let g:minimap_highlight_search = 1")
    vim.cmd("let g:minimap_git_colors = 1")
  end
}
