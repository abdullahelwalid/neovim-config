require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {"gomod" ,"c", "lua", "rust", "vim", "python", "java", "javascript", "go", "terraform", "typescript", "r", "sql", "cpp", "dockerfile" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
