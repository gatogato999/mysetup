-- lua/plugins/bufferline.lua
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy", -- or use "BufWinEnter" if you want it earlier
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers", -- or "tabs"
        numbers = "ordinal", -- or "none" | "buffer_id"
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant", -- "slant" | "thick" | "thin" | {"", ""}
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          }
        },
        hover = {
          enabled = true,
          delay = 200,
          reveal = {'close'}
        },
      },
      highlights = {
        -- You can tweak highlights here if needed
      },
    }

    -- Optional keymaps
    -- vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    -- vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
  end,
}
