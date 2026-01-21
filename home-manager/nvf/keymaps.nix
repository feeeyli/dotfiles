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
    # {
    #   desc = "Comment block";
    #   mode = "v";
    #   key = "<C-c>";
    #   action = "gb";
    # }
    # {
    #   desc = "Comment line";
    #   mode = "n";
    #   key = "<C-c>";
    #   action = "gc";
    # }

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

    {
      desc = "Diagnostics [fzf]";
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>FzfLua lsp_document_diagnostics<CR>";
    }
    {
      desc = "Find files [fzf]";
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>FzfLua files<CR>";
    }
    {
      desc = "Live grep [fzf]";
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>FzfLua live_grep<CR>";
    }
    {
      desc = "LSP Implementations [fzf]";
      mode = "n";
      key = "<leader>fi";
      action = "<cmd>FzfLua lsp_implementations<CR>";
    }
    {
      desc = "LSP References [fzf]";
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>FzfLua lsp_references<CR>";
    }
    {
      desc = "Builtin [fzf]";
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>FzfLua builtin<CR>";
    }
  ];
}
