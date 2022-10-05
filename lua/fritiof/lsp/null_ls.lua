local os = require("os")

-- without this prettierd will take some time first format
-- since the daemon takes around 1 second to start
os.execute("prettierd start")

local b = require("null-ls").builtins

require("null-ls").setup({
	sources = {
		b.formatting.phpcbf,
		b.formatting.phpcbf,
		b.formatting.stylua,
		b.formatting.prettierd,
		b.completion.spell,
		b.code_actions.eslint_d,
		b.diagnostics.eslint_d,
		b.formatting.rustfmt,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
