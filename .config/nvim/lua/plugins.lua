-- Plugins with no additional configuration goes here
return {
  require 'themes',
  { 'tpope/vim-sleuth' }, -- Detect `tabstop` and `shiftwidth` automatically
  { 'numToStr/Comment.nvim', opts = {} }, -- Linewise/blockwise comments
  { 'windwp/nvim-ts-autotag', opts = {} }, -- Same as `autopairs` but for HTML tags
  { 'wakatime/vim-wakatime' }, -- Wakatime - time tracker
  { 'tpope/vim-fugitive' }, -- Git integration
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = { enabled = false } }, -- indentation guidelines
  { 'rktjmp/lush.nvim' },

  -- Highlight todo, notes, etc. in the comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
  },

  -- Collection of various small independent plugins/modules
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 } -- Better 'around' & 'inner' experience
      require('mini.surround').setup() -- Adds mappings for surround text with ", (, etc.
    end,
  },

  -- Different UI for the `vim.ui.input`
  {
    'stevearc/dressing.nvim',
    opts = {},
  },

  -- markdown renderer
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    opts = {},
  },
}
