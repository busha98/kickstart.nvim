return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = '[A]ppend file to Harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open Harpoon menu' })

    vim.keymap.set('n', ']h', function()
      harpoon:list():next()
    end, { desc = 'Go to next Harpoon file' })

    vim.keymap.set('n', '[h', function()
      harpoon:list():prev()
    end, { desc = 'Go to previous Harpoon file' })
  end,
}
