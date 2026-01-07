{ ... }:

{
  programs.nvf.settings.vim.dashboard.alpha = {
    enable = true;
    theme = null;
    layout = [
      {
        type = "padding";
        val = 10;
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
        val = 10;
      }
    ];
  };
}
