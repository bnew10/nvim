require'lspconfig'.clangd.setup {
    cmd = {DATA_PATH .. "/lsp_servers/clangd/clangd"},
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
            signs = true,
            underline = true,
            update_in_insert = true

        })
    }
}
