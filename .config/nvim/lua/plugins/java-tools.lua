return {
  -- Ensure Java treesitter grammar installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "java", "xml" })
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true
      opts.indent = opts.indent or {}
      opts.indent.enable = true
    end,
  },

  -- Mason: auto-install Java tools
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "jdtls",
        "google-java-format",
        "java-debug-adapter",
        "java-test",
      })
    end,
  },

  -- Format Java with google-java-format
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        java = { "google-java-format" },
      },
      format_on_save = {
        timeout_ms = 3000,
        lsp_fallback = true,
      },
    },
  },
}
