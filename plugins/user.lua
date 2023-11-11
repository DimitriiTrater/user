local config = require "window-picker.config"

return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "f-person/git-blame.nvim",
    config = function()
      require("gitblame").setup {
        enabled = true,
        message_template = "<date> • <author> • <summary>",
        message_when_not_committed = "Может и не стоить это коммитить?",
        date_format = "%x",
        highlight_group = "Comment",
      } end,
    event = "User AstroFile",
  },
  -- {
  --   "codota/tabnine-nvim",
  --   build = "./dl_binaries.sh",
  --   config = function()
  --     require("tabnine").setup {
  --       disable_auto_comment = true,
  --       accept_keymap = "<Tab>",
  --       dismiss_keymap = "<C-]>",
  --       debounce_ms = 800,
  --       suggestion_color = { gui = "#808080", cterm = 244 },
  --       exclude_filetypes = { "TelescopePrompt" },
  --       log_file_path = nil,
  --     }
  --   end,
  --   event = "User AstroFile",
  -- },
}
