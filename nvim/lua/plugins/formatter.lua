return {
  "stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
      },
      format_on_save = false,
    }

		vim.keymap.set({ "n", "v" }, "<leader>g", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
  end,
}
