require('nvim-ts-autotag').setup({
	 filetypes = { "html" , "xml" },
	enable = true
})

--
-- vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
-- 	vim.lsp.diagnostic.on_publish_diagnostics,
-- 	{
-- 		underline = true,
-- 		virtual_text = {
-- 			spacing = 5,
-- 			severity_limit = 'Warning',
-- 		},
-- 		update_in_insert = true,
-- 	}
-- )
--
--
