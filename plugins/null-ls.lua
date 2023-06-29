return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require("null-ls")

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      --
      -- force lint to use local binary
      -- null_ls.builtins.formatting.eslint_d.with({
      --   only_local = true
      -- }),
      -- null_ls.builtins.formatting.prettierd.with({
      --   only_local = true
      -- }),

      null_ls.disable({ name = "prettierd" }),
      null_ls.disable({ name = "eslint_d" }),
    }

    return config -- return final config table
  end,
}
