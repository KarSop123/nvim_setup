return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters = opts.formatters or {}
    opts.formatters.prettier = {
      -- Explicitly set tab width to 4 and disable tabs
      args = { "--tab-width", "4", "--use-tabs", "false" },
    }
  end,
}
