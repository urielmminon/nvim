local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
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
  automatic_installation = true, -- not the ssame as ensure_installed
  })

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "eslint_d",
    "black",
    "pylint",
    "isort"
  }
})
