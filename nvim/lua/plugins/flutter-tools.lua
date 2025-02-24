return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    opts = {
      flutter_path = "/home/ss/snap/flutter/common/flutter/bin/flutter",
    },
    config = true,
  },
}
