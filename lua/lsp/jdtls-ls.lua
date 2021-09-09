require'lspconfig'.jdtls.setup {
    cmd = { "/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home/bin/java", "-Declipse.application=org.eclipse.jdt.ls.core.id1", "-Dosgi.bundles.defaultStartLevel=4", "-Declipse.product=org.eclipse.jdt.ls.core.product", "-Dlog.protocol=true", "-Dlog.level=ALL", "-Xms1g", "-Xmx2G", "-jar", "/Users/bnewton/.local/share/nvim/lspinstall/java/plugins/org.eclipse.equinox.launcher_1.6.200.v20210416-2027.jar", "-configuration", "/Users/bnewton/.local/share/nvim/lspinstall/java/config_mac", "-data", "/Users/bnewton/workspace", "--add-modules=ALL-SYSTEM", "--add-opens", "java.base/java.util=ALL-UNNAMED", "--add-opens", "java.base/java.lang=ALL-UNNAMED" },
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
            signs = true,
            underline = true,
            update_in_insert = true

        })
	},
	settings = {
		java = {
			home = '/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home',
			configuration = {
				runtimes = {
					{
						name = 'JavaSE-1.8',
						path = '/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home',
                        default = true
					},
                    {
                        name = 'JavaSE-11',
                        path = '/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home',
                        default = false
                    }
				}
			}

		}
	}
}
