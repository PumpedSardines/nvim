local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
	return
end

require("fritiof.lsp.null_ls")
require("fritiof.lsp.lsp-installer")
require("fritiof.lsp.lsp-utils")
require("fritiof.lsp.handlers").setup()
