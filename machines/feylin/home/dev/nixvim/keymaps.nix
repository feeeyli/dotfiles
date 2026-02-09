{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    {
      options = {
        desc = "Save File";
        silent = true;
      };
      key = "<leader>w";
      mode = "n";
      action = "<cmd>w<cr><esc>";
    }
    {
      options = {
        desc = "Quit Neovim";
        silent = true;
      };
      key = "<leader>q";
      mode = "n";
      action = ":q<CR>";
    }
    {
      options = {
        desc = "Clear Selection";
        silent = true;
      };
      mode = "n";
      key = "<leader>h";
      action = ":noh<CR>";
    }

    {
      options = {
        desc = "Last line";
        silent = true;
      };
      mode = [
        "n"
        "v"
      ];
      key = "ge";
      action = "G";
    }
    {
      options = {
        desc = "Start of line";
        silent = true;
      };
      mode = [
        "n"
        "v"
      ];
      key = "g<left>";
      action = "^";
    }
    {
      options = {
        desc = "End of line";
        silent = true;
      };
      mode = [
        "n"
        "v"
      ];
      key = "g<right>";
      action = "$";
    }

    {
      options = {
        desc = "Select all";
        silent = true;
      };
      mode = [
        "n"
        "v"
      ];
      key = "vt";
      action = "ggVG";
    }

    {
      options = {
        desc = "Open buffers";
        silent = true;
      };
      mode = "n";
      key = "<leader><tab>";
      action = "<cmd>lua require('bafa').toggle()<CR>";
    }

    {
      options = {
        desc = "Redo";
        silent = true;
      };
      mode = "n";
      key = "U";
      action = "<cmd>redo<CR>";
    }

    {
      options = {
        desc = "Copy to system clipboard";
        silent = true;
      };
      mode = [
        "n"
        "v"
      ];
      key = "<leader>y";
      action = ''"+y'';
    }
    {
      options = {
        desc = "Delete without yank";
        silent = true;
      };
      mode = "v";
      key = "<M-d>";
      action = ''"_d'';
    }
    {
      options = {
        desc = "Delete line without yank";
        silent = true;
      };
      mode = "n";
      key = "<M-d>";
      action = ''"_dd'';
    }

    {
      options = {
        desc = "Code Actions [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>fa";
      action = "<cmd>FzfLua lsp_code_actions<CR>";
    }
    {
      options = {
        desc = "Diagnostics [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>fd";
      action = "<cmd>FzfLua lsp_document_diagnostics<CR>";
    }
    {
      options = {
        desc = "Find files [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>FzfLua files<CR>";
    }
    {
      options = {
        desc = "Live grep [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>FzfLua live_grep<CR>";
    }
    {
      options = {
        desc = "LSP Implementations [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>fi";
      action = "<cmd>FzfLua lsp_implementations<CR>";
    }
    {
      options = {
        desc = "LSP References [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>FzfLua lsp_references<CR>";
    }
    {
      options = {
        desc = "Builtin [fzf]";
        silent = true;
      };
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>FzfLua builtin<CR>";
    }

    {
      mode = "n";
      key = "<M-Down>";
      action = "<cmd>resize +2<cr>";
      options = {
        desc = "Increase Window Height";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<M-Up>";
      action = "<cmd>resize -2<cr>";
      options = {
        desc = "Decrease Window Height";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<M-Left>";
      action = "<cmd>vertical resize -2<cr>";
      options = {
        desc = "Decrease Window Width";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<M-Right>";
      action = "<cmd>vertical resize +2<cr>";
      options = {
        desc = "Increase Window Width";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<C-Up>";
      action = ":wincmd k<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = ":wincmd j<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = ":wincmd h<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = ":wincmd l<CR>";
      options = {
        silent = true;
      };
    }

    # {
    #   options = {
    #     desc = "Open Yazi";
    #     silent = true;
    #   };
    #   mode = "n";
    #   key = "<leader>e";
    #   action = "<cmd>Yazi<CR>";
    # }
    {
      options = {
        desc = "Open Oil";
        silent = true;
      };
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Oil<CR>";
    }

    {
      options = {
        desc = "Diagnostic Hover";
        silent = true;
      };
      mode = "n";
      key = "<leader>gd";
      action = ''<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>'';
    }
  ];
}
