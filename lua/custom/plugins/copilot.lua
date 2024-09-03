return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
        -- suggestion = {
        --   auto_trigger = true,
        --   keymap = {
        --     accept = "<C-j>",
        --     prev = "<C-l>",
        --     next = "<C-k>",
        --   },
        -- },
      }
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
