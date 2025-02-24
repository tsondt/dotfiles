-- https://github.com/LazyVim/LazyVim/discussions/3875#discussioncomment-9921764

return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Disable the window from popping up automatically when inserting text
      opts.completion = vim.tbl_extend("force", opts.completion, {
        autocomplete = false,
      })
      -- Allow to  show the window with snippets and suggestions
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-Space>"] = cmp.mapping.complete(),
      })
      -- Remove the Copilot source from the window
      for i, source in ipairs(opts.sources) do
        if source.name == "copilot" then
          table.remove(opts.sources, i)
          break
        end
      end
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          prev = "<M-[>",
          next = "<M-]>",
          accept = "<M-p>",
          accept_word = "<M-o>",
          accept_line = "<M-i>",
        },
      },
    },
  },
}
