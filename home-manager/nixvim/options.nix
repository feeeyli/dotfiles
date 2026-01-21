{ lib, ... }:

{
  opts = {
    updatetime = 100;

    number = true;
    relativenumber = true;

    showmode = false;

    # breakindent = true;

    undofile = true;
    swapfile = false;

    confirm = true;

    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    autoindent = true;

    wrap = false;
    scrolloff = 10;

    ignorecase = true;
    smartcase = true;

    signcolumn = "yes";
  };

  # colorscheme = "base16";

  autoCmd = [
    {
      command = ":silent !kitty @ set-spacing margin=0";
      event = [
        "VimEnter"
        "VimResume"
      ];
    }
    {
      command = ":silent !kitty @ set-spacing margin=default";
      event = [
        "VimLeave"
        "VimSuspend"
      ];
    }
  ];

  diagnostic.settings = {
    signs.text = lib.nixvim.toRawKeys {
      "vim.diagnostic.severity.ERROR" = "";
      "vim.diagnostic.severity.HINT" = "";
      "vim.diagnostic.severity.INFO" = "";
      "vim.diagnostic.severity.WARN" = "";
    };
    update_in_insert = true;
  };
}
