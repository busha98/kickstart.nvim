return {
  'ahmedkhalf/project.nvim',
  config = function()
    require('project_nvim').setup {
      -- patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      patterns = { 'package.json', 'pyproject.toml' },
      datapath = vim.fn.stdpath 'data',
    }
    require('telescope').load_extension 'projects'

    vim.keymap.set('n', '<leader>p', ':lua require("telescope").extensions.projects.projects {}<CR>', { desc = 'Projects' })
  end,
}
