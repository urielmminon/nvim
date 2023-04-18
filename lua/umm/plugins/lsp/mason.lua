local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason.setup({
  PATH = "prepend"
})

mason_lspconfig.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "pyright",
    "dockerls",
    "docker_compose_language_service",
    "jsonls",
    "jdtls",
    "marksman",
    "sqlls",
    "bashls",
    "cmake"},
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
  })
