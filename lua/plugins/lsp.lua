return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            clangd = {
                on_attach = function(client, bufnr)
                    -- Zabraniamy clangd formatowania kodu przy zapisie
                    client.server_capabilities.documentFormattingProvider = false
                    client.server_capabilities.documentRangeFormattingProvider = false
                end,
            },
        },
    },
}
