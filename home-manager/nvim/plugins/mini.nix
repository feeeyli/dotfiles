{ ... }:

{
  programs.nvf.settings.vim.mini = {
    surround = {
      enable = true;
    };
    jump2d = {
      enable = true;
    };
    splitjoin = {
      enable = true;
    };
    operators = {
      enable = true;
      # setupOpts = {
      #   multiply = {
      #     prefix = "<C-M-down>";
      #   };
      # };
    };
    move = {
      enable = true;
      setupOpts = {
        mappings = {
          left = "<M-left>";
          right = "<M-right>";
          down = "<M-down>";
          up = "<M-up>";
        };
      };
    };
  };
}
