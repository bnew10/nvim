-- pip install 'python-lsp-server[all]'
require'lspconfig'.pylsp.setup {
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
            signs = true,
            underline = true,
            update_in_insert = true
        })
    }
}
