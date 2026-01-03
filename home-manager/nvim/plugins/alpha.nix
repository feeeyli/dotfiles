{ ... }:

{
  programs.nvf.settings.vim.dashboard.alpha = {
    enable = true;
    theme = null;
    layout = [
      {
        type = "padding";
        val = 9;
      }
      {
        type = "text";
        val = [
          "               ███             "
          "              ████             "
          "              ████             "
          "              ████             "
          "              ████             "
          "              ████             "
          "              ████             "
          "              ████             "
          "    ████████████████████████   "
          "  █████████████████████████████"
          "              ████             "
          "              ████             "
          "              ████             "
          "              ████             "
          "███████████████████████████████"
          " ████████████████████████████  "
        ];
        opts = {
          position = "center";
          hl = "Red";
        };
      }
      {
        type = "padding";
        val = 9;
      }
    ];
  };
}
