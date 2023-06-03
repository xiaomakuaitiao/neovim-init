local nulls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
nulls.setup({
	sources = {

		nulls.builtins.formatting.stylua, -- lua
		nulls.builtins.formatting.black, -- python
		nulls.builtins.formatting.shfmt, -- bash,sh,zsh
		nulls.builtins.formatting.prettierd.with({
			generator_opts = {
				command = "prettierd",
				args = { "$FILENAME" },
				to_stdin = true,
			},
		}),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
})
