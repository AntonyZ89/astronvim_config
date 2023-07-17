local function removeValue(opts, value)
  for i, v in ipairs(opts) do
    if (v == value) then
      opts[i] = nil
    end
  end
end

local function resetNullLs()
  return {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      removeValue(opts.ensure_installed, "prettierd")
    end,
  }
end

return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.markdown" },
  resetNullLs(),
  { import = "astrocommunity.pack.prisma" },
  {
    import = "astrocommunity.pack.tailwindcss",
    resetNullLs(),
    { import = "astrocommunity.pack.yaml" },
    { import = "astrocommunity.pack.typescript" },
    resetNullLs()
  }
}
