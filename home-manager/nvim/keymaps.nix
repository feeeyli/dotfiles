{ ... }:

{
  programs.nvf.settings.vim.keymaps = [
    {
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
      key = "<C-q>";
      mode = "n";
      action = ":q<CR>";
    }
    {
      mode = "n";
      key = "<leader>h";
      action = ":noh<CR>";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "ge";
      action = "G";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "g<left>";
      action = "^";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "g<right>";
      action = "$";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "vt";
      action = "ggVG";
    }
    {
      mode = "n";
      key = "<C-c>";
      action = "gcc";
    }
    # {
    #   mode = [
    #     "n"
    #     "v"
    #   ];
    #   key = "<C-M-down>";
    #   action = "<cmd>lua MiniOperators.multiply()<CR>";
    # }
    # vim.keymap.set("x", "<", "<gv")
    # vim.keymap.set("x", ">", ">gv")
  ];
}
