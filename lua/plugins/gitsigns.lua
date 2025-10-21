return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
  config = function()
    local gs = require 'gitsigns'
    vim.keymap.set('n', '<leader>gb', gs.blame_line, { desc = 'Toggle Git Blame' })
    vim.keymap.set('n', '<leader>gn', gs.next_hunk, { desc = 'Go to Next Hunk' })
    vim.keymap.set('n', '<leader>gp', gs.prev_hunk, { desc = 'Go to Previous Hunk' })

    vim.keymap.set('n', '<leader>ga', gs.stage_hunk, { desc = '[G]it [S]tage Hunk' })
    vim.keymap.set('n', '<leader>gu', gs.undo_stage_hunk, { desc = '[G]it [U]ndo Stage Hunk' })
    vim.keymap.set('n', '<leader>gr', gs.reset_hunk, { desc = '[G]it [R]eset Hunk' })

    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = '[G]it [S]tatus' })
  end,
}
