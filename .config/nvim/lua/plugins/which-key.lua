-- Useful plugin to show pending keybindings
return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()
      require('which-key').add {
        { '<leader>c', desc = '[C]ode' },
        { '<leader>d', desc = '[D]iagnostics & [D]ocument' },
        { '<leader>g', desc = '[G]it' },
        { '<leader>h', desc = 'Git [H]unk' },
        { '<leader>r', desc = '[R]ename' },
        { '<leader>s', desc = '[S]earch' },
        { '<leader>w', desc = '[W]orkspace' },
      }
    end,
  },
}
