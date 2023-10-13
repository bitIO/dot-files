require("lazy").setup({
  'joshdick/onedark.vim',
  'itchyny/lightline.vim',
  'sheerun/vim-polyglot',
  'airblade/vim-gitgutter',
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
  'andymass/vim-matchup',
  'w0rp/ale',
  { 'neoclide/coc.nvim', branch = 'release' },
  'bronson/vim-trailing-whitespace',
  'nvim-tree/nvim-web-devicons',
  'romgrk/barbar.nvim',
  'folke/which-key.nvim',
  { 'folke/neoconf.nvim', cmd = 'Neoconf' },
  'folke/neodev.nvim',
  'ervandew/supertab',
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
})