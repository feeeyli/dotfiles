{
  extraConfigLua = ''
    require("bafa").setup({
      method = 'last_used',
      sort = { focus_alternate_buffer = true },
      title = 'Buffers',
      icons = {
        sign = {
          changes = '●'
        }
      },
      hl = {
        sign = {
          modified = 'BafaModified',
          deleted = 'BafaDeleted'
        }
      }
    })
  '';
}
