{
  plugins.noice = {
    enable = true;

    settings = {
      presets = {
        bottom_search = false;
        command_palette = false;
        inc_rename = true;
        long_message_to_split = true;
        lsp_doc_border = true;
      };
      cmdline = {
        view = "cmdline";
      };
    };
  };
}
