local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local clang_capabilities = capabilities
clang_capabilities.textDocument.semanticHighlighting = true
clang_capabilities.offsetEncoding = "utf-8"

lspconfig["clangd"].setup {
  on_attach = on_attach,
  capabilities = clang_capabilities,
  cmd = {
    "/Users/seba/.local/share/nvim/mason/bin/clangd",
    "--background-index",
    "--clang-tidy",
    -- "--all-scopes-completion",
  },
}

--
-- lspconfig.pyright.setup { blabla}
