return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- provider = 'ollama',
    -- vendors = {
    --   ollama = {
    --     ['local'] = true,
    --     endpoint = '127.0.0.1:11434/v1',
    --     model = 'codegemma:instruct',
    --     parse_curl_args = function(opts, code_opts)
    --       return {
    --         url = opts.endpoint .. '/chat/completions',
    --         headers = {
    --           ['Accept'] = 'application/json',
    --           ['Content-Type'] = 'application/json',
    --         },
    --         body = {
    --           model = opts.model,
    --           messages = require('avante.providers').copilot.parse_message(code_opts), -- you can make your own message, but this is very advanced
    --           max_tokens = 2048,
    --           stream = true,
    --         },
    --       }
    --     end,
    --     parse_response_data = function(data_stream, event_state, opts)
    --       require('avante.providers').openai.parse_response(data_stream, event_state, opts)
    --     end,
    --   },
    -- },
    --
    providers = {
      claude = {
        endpoint = 'https://api.anthropic.com',
        model = 'claude-sonnet-4-20250514',
        timeout = 30000, -- Timeout in milliseconds
        disable_tools = true, -- disable tools!
        extra_request_body = {
          temperature = 0,
          max_tokens = 4096,
        },
      },
    },
  },
  build = 'make',
  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'echasnovski/mini.icons',
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
