{ ... }:

{
  programs.nvf.settings.vim.keymaps = [
    {
      desc = "Save File";
      key = "<C-s>";
      mode = [
        "i"
        "x"
        "n"
        "s"
      ];
      silent = true;
      action = "<cmd>w<cr><esc>";
    }
    {
      desc = "Quit Neovim";
      key = "<C-q>";
      mode = "n";
      action = ":q<CR>";
    }
    {
      desc = "Clear Selection";
      mode = "n";
      key = "<leader>h";
      action = ":noh<CR>";
    }

    {
      desc = "Last line";
      mode = [
        "n"
        "v"
      ];
      key = "ge";
      action = "G";
    }
    {
      desc = "Start of line";
      mode = [
        "n"
        "v"
      ];
      key = "g<left>";
      action = "^";
    }
    {
      desc = "End of line";
      mode = [
        "n"
        "v"
      ];
      key = "g<right>";
      action = "$";
    }

    {
      desc = "Select all";
      mode = [
        "n"
        "v"
      ];
      key = "vt";
      action = "ggVG";
    }
    {
      desc = "Comment block";
      mode = "n";
      key = "<C-c>";
      action = "gcc";
    }

    {
      desc = "Go to code actions";
      mode = "n";
      key = "ga";
      action = "<cmd>lua require('actions-preview').code_actions()<CR>";
    }
    {
      desc = "Open buffers";
      mode = "n";
      key = "<leader><tab>";
      action = "<cmd>lua require('bafa').toggle()<CR>";
    }

    {
      desc = "Redo";
      mode = "n";
      key = "U";
      action = "<cmd>redo<CR>";
    }

    {
      desc = "Copy to system clipboard";
      mode = [
        "n"
        "v"
      ];
      key = "<leader>y";
      action = ''"+y'';
    }
    {
      desc = "Delete without yank";
      mode = "v";
      key = "<M-d>";
      action = ''"_d'';
    }
    {
      desc = "Delete line without yank";
      mode = "n";
      key = "<M-d>";
      action = ''"_dd'';
    }
  ];
}
