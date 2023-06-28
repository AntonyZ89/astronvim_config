return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.typescript" },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      handlers = {
        prettierd = function()
          local null_ls = require "null-ls"
          -- disable prettierd
          -- FIX: Not working. Override prettierd and disable it
          null_ls.register(null_ls.builtins.formatting.prettierd.with { condition = function() return false end })
        end
      }
    }
  },
}
