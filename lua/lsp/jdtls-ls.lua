require'lspconfig'.jdtls.setup {
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
            signs = true,
            underline = true,
            update_in_insert = true

        })
	},
	-- settings = {
	-- 	java = {
	-- 		configuration = {
	-- 			runtimes = {
	-- 				{
	-- 					name = 'JavaSE-1.8',
	-- 					path = '/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk'
	-- 				}
	-- 			}
	-- 		}

	-- 	}
	-- }
}
