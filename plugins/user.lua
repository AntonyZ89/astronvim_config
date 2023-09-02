return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        IMPORTANT = { icon = "! ", color = "#f44336" },
        QUESTION = { icon = "? ", color = "#9ACD32" },
      }
    },
    event = "User AstroFile",
  },
  {
    "Exafunction/codeium.vim",
    event = "User AstroFile",
    config = function()
      vim.g.codeium_no_map_tab = 1
      vim.keymap.set(
        'i',
        '<C-]>',
        function()
          return vim.fn['codeium#Accept']()
        end,
        { expr = true }
      )
    end
  },
  {
    "tpope/vim-surround",
    dependencies = { "tpope/vim-repeat" },
    event = "User AstroFile",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
  },
  {
    "antonyz89/electron-vue.nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },
}
