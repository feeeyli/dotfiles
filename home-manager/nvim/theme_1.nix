{ config, ... }:

let
  colors = config.lib.stylix.colors;
  color = hx: "#${colors."base${hx}"}";

  neutral_fg = color "06";
in
{
  programs.nvf.settings.vim.highlight = {
    # ColorColumn = { bg = "#E2EEEE"; };
    # Conceal = { fg = "#b0b0b0"; };
    # Cursor = { bg = "#007acc"; fg = "#bfdbfe"; };
    # CursorColumn = { bg = "#E2EEEE"; };
    # CursorLine = { bg = "#E2EEEE"; };
    # Directory = { fg = ansi.blue; };
    # DiffAdd = { bg = "#ADFFB7"; fg = "#0A7816"; };
    # DiffDelete = { bg = "#F8B28F"; fg = "#872C28"; };
    # DiffText = { fg = "#fff987", bg = "#876004"; };
    # DiffChange = { bg = "#fff987"; fg = "#341a00"; };
    # EndOfBuffer = { fg = "#b6b6b6"; };
    # TermCursorNC = { fg = bg, bg = fg; };
    # ErrorMsg = { fg = error, bg = mistake.bg; };
    # VertSplit = { fg = "#abbdc0"; };
    # Folded = { bg = "#dddddd"; fg = "#7d7d7d"; };
    # FoldColumn = { bg = bg; fg = "#4d4d4d"; };
    # SignColumn = {};
    # IncSearch = { bg = active; fg = fg; };
    # LineNr = { fg = "#7d7c7c"; };
    # CursorLineNr = { fg = ansi.blue, bold = 1; };
    # MatchParen = { underline = 1, sp = active; };
    # -- ModeMsg      {; }; -- 'showmode' message (e.g., "-- INSERT -- ")
    # -- MsgArea      {; }; -- Area for messages and cmdline
    # -- MsgSeparator {; }; -- Separator for scrolled messages, `msgsep` flag of 'display'
    # MoreMsg = { fg = ansi.green, bold = 1; };
    # NonText = { fg = "#696969"; };
    # Normal = { bg = bg; fg = fg; };
    # NormalFloat = { bg = float_bg; };
    # -- NormalNC     {; }; -- normal text in non-current windows
    # FloatBorder = floatborder,
    # Pmenu = { bg = pmenu_bg; };
    # PmenuSel = { bg = "#c7c7c7"; };
    # PmenuSbar = { bg = "#777777"; };
    # PmenuThumb = { bg = "#333333"; };
    # Question = { fg = ansi.green; };
    # QuickFixLine = { bg = "#E2EEEE"; };
    # Search = { bg = "#fae9b7"; fg = fg; };
    # SpecialKey = { fg = ansi.cyan; };
    # SpellBad = { undercurl = 1, sp = ansi.red; };
    # SpellCap = { undercurl = 1, sp = ansi.blue; };
    # SpellLocal = { undercurl = 1, sp = ansi.cyan; };
    # SpellRare = { undercurl = 1, sp = ansi.magenta; };
    # StatusLine = { bg = statusline; fg = fg; };
    # StatusLineNC = { bg = statusline; fg = "#9f9f9f"; };
    # TabLine = { bg = statusline; fg = "#7d7d7d"; };
    # TabLineFill = { bg = statusline; };
    # TabLineSel = { bg = statusline; fg = ansi.blue; };
    # Title = { fg = const_fg; };
    # Visual = { bg = "#bfdbfe"; };
    # VisualNOS = { bg = "#bfdbfe"; };
    # WarningMsg = { fg = "#e1ad4c"; };
    # WildMenu = { bg = "#999999"; };
    # WinBar = { bg = bg; fg = ansi.black, bold = true; };
    # WinBarNC = { bg = bg; fg = "#7d7d7d"; };
    #
    # --- SYNTAX I: TS groups link to these
    Constant = {
      fg = neutral_fg;
    };
    String = {
      fg = neutral_fg;
    };
    Character = {
      fg = neutral_fg;
    };
    Number = {
      fg = neutral_fg;
    };
    Boolean = {
      fg = neutral_fg;
    };
    Float = {
      fg = neutral_fg;
    };
    Operator = {
      fg = neutral_fg;
    };
    #
    # --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
    Identifier = {
      fg = neutral_fg;
    };
    Function = {
      fg = neutral_fg;
    };
    Statement = {
      fg = neutral_fg;
    };
    Conditional = {
      fg = neutral_fg;
    };
    Repeat = {
      fg = neutral_fg;
    };
    Label = {
      fg = neutral_fg;
    };
    Keyword = {
      fg = neutral_fg;
    };
    Exception = {
      fg = neutral_fg;
    };
    PreProc = {
      fg = neutral_fg;
    };
    Include = {
      fg = neutral_fg;
    };
    Define = {
      fg = neutral_fg;
    };
    Macro = {
      fg = neutral_fg;
    };
    PreCondit = {
      fg = neutral_fg;
    };
    Type = {
      fg = neutral_fg;
    };
    StorageClass = {
      fg = neutral_fg;
    };
    Structure = {
      fg = neutral_fg;
    };
    Typedef = {
      fg = neutral_fg;
    };
    #
    # Special = { fg = ansi.yellow; };
    # -- TODO better color than diffchange, try reddish
    # -- SpecialChar = { fg = diffchange; }; --  special character in a constant
    # -- Tag            {; }; --    you can use CTRL-] on this
    # -- Delimiter      {; };
    # SpecialComment = { bg = "#FFDEAA"; fg = ansi.blue; };
    # debugPc = { bg = "#C7C7EE"; };
    # debugBreakpoint = { bg = "#F8B28F"; };
    # helpHyperTextJump = { fg = ansi.magenta; };
    # helpSectionDelim = { fg = ansi.magenta; };
    # helpExample = { fg = ansi.cyan; };
    # helpCommand = { fg = ansi.cyan; };
    # helpHeadline = { fg = ansi.blue; };
    # helpHeader = { fg = ansi.magenta; };
    #
    # Underlined = { underline = 1; }; -- (preferred) text that stands out, HTML links
    # Italic = { italic = 1; };
    #
    # -- ("Ignore", below, may be invisible...)
    # -- Ignore         {; }; -- (preferred) left blank, hidden  |hl-Ignore|
    #
    # Error = { bg = mistake.bg; fg = mistake.fg; };
    #
    # Todo = { bg = "#FFDEAA"; fg = ansi.blue; };
    #
    # --- Diagnostic
    # LspReferenceText = { bg = "#dadada"; };
    # LspReferenceRdad = { bg = "#dadada"; };
    # LspReferenceWrite = { bg = "#dadada", underline = 1, sp = active_blue; };
    # LspCodeLens = { fg = "#999999"; };
    # LspCodeLensSeparator = { fg = "#999999"; };
    #
    # --- Diagnostic
    # DiagnosticError = { fg = error; };
    # DiagnosticWarn = { fg = warn; };
    # DiagnosticHint = { fg = hint; };
    # DiagnosticInfo = { fg = info; };
    # DiagnosticVirtualTextError = { bg = "#F8B28F"; fg = "#411414"; };
    # DiagnosticVirtualTextWarn = { bg = "#fff987"; fg = fg; };
    # DiagnosticVirtualTextHint = { fg = "#0F171D", bg = "#C3D0DA"; };
    # DiagnosticVirtualTextInfo = { bg = "#ADFFB7"; fg = "#042F09"; };
    #
    # --- Treesitter
    TSAttribute = { };
    TSConstructor = {
      fg = neutral_fg;
    };
    TSConditional = {
      fg = neutral_fg;
    };
    TSConstBuiltin = {
      fg = neutral_fg;
    };
    TSConstMacro = {
      fg = neutral_fg;
    };
    TSError = {
      fg = neutral_fg;
    };
    TSException = {
      fg = neutral_fg;
    };
    TSField = {
      fg = neutral_fg;
    };
    TSFunction = {
      fg = neutral_fg;
    };
    TSFuncBuiltin = {
      fg = neutral_fg;
    };
    TSFuncMacro = {
      fg = neutral_fg;
    };
    TSKeyword = {
      fg = neutral_fg;
    };
    TSKeywordFunction = {
      fg = neutral_fg;
    };
    TSLabel = {
      fg = neutral_fg;
    };
    TSMethod = {
      fg = neutral_fg;
    };
    TSNamespace = {
      fg = neutral_fg;
    };
    TSNone = {
      fg = neutral_fg;
    };
    TSParameter = {
      fg = neutral_fg;
    };
    TSParameterReference = {
      fg = neutral_fg;
    };
    TSProperty = {
      fg = neutral_fg;
    };
    TSPunctDelimiter = {
      fg = neutral_fg;
    };
    TSPunctBracket = {
      fg = neutral_fg;
    };
    TSPunctSpecial = {
      fg = neutral_fg;
    };
    TSRepeat = {
      fg = neutral_fg;
    };
    TSString = {
      fg = neutral_fg;
    };
    TSStringRegex = {
      fg = neutral_fg;
    };
    TSStringEscape = {
      fg = neutral_fg;
    };
    TSSymbol = { };
    TSType = {
      fg = neutral_fg;
    };
    TSTypeBuiltin = {
      fg = neutral_fg;
    };
    TSVariable = {
      fg = neutral_fg;
    };
    TSVariableBuiltin = {
      fg = neutral_fg;
    };
    TSTag = {
      fg = neutral_fg;
    };
    TSTagDelimiter = {
      fg = neutral_fg;
    };
    TSText = {
      fg = neutral_fg;
    };

    "@attribute" = { };
    "@boolean" = {
      fg = neutral_fg;
    };
    "@comment" = {
      fg = neutral_fg;
    };
    "@constructor" = {
      fg = neutral_fg;
    };
    "@conditional" = {
      fg = neutral_fg;
    };
    "@constant.builtin" = {
      fg = neutral_fg;
    };
    "@constant.macro" = {
      fg = neutral_fg;
    };
    "@error" = {
      fg = neutral_fg;
    };
    "@exception" = {
      fg = neutral_fg;
    };
    "@field" = {
      fg = neutral_fg;
    };
    "@function" = {
      fg = neutral_fg;
    };
    "@function.builtin" = {
      fg = neutral_fg;
    };
    "@function.macro" = {
      fg = neutral_fg;
    };
    "@keyword" = {
      fg = neutral_fg;
    };
    "@keyword.function" = {
      fg = neutral_fg;
    };
    "@keyword.import" = {
      fg = neutral_fg;
    };
    "@label" = {
      fg = neutral_fg;
    };
    "@method" = {
      fg = neutral_fg;
    };
    "@module" = {
      fg = neutral_fg;
    };
    "@namespace" = {
      fg = neutral_fg;
    };
    "@none" = {
      fg = neutral_fg;
    };
    "@parameter" = {
      fg = neutral_fg;
    };
    "@parameter.reference" = {
      fg = neutral_fg;
    };
    "@property" = {
      fg = neutral_fg;
    };
    "@punctuation.delimiter" = {
      fg = neutral_fg;
    };
    "@punctuation.bracket" = {
      fg = neutral_fg;
    };
    "@punctuation.special" = {
      fg = neutral_fg;
    };
    "@repeat" = {
      fg = neutral_fg;
    };
    "@string" = {
      fg = neutral_fg;
    };
    "@string.regex" = {
      fg = neutral_fg;
    };
    "@string.escape" = {
      fg = neutral_fg;
    };
    "@string.special.path" = {
      fg = neutral_fg;
    };
    "@symbol" = { };
    "@type" = {
      fg = neutral_fg;
    };
    "@type.builtin" = {
      fg = neutral_fg;
    };
    "@variable" = {
      fg = neutral_fg;
    };
    "@variable.builtin" = {
      fg = neutral_fg;
    };
    "@variable.parameter" = {
      fg = neutral_fg;
    };
    "@variable.parameter.builtin" = {
      fg = neutral_fg;
    };
    "@tag" = {
      fg = neutral_fg;
    };
    "@tag.builtin" = {
      fg = neutral_fg;
    };
    "@tag.delimiter" = {
      fg = neutral_fg;
    };
    "@text" = {
      fg = neutral_fg;
    };
    "@text.note" = {
      fg = neutral_fg;
    };
    "@text.warning" = {
      fg = neutral_fg;
    };
    #
    # --- Theme specific
    # ["@AlabasterConstant"] = { fg = const_fg; };
    # ["@AlabasterDefinition"] = { fg = def_fg; };
    # ["@AlabasterPunct"] = { fg = punct_fg; };
    # ["@AlabasterString"] = { fg = string_fg; };
    # ["@AlabasterHashbang"] = { fg = dim_comment; };
    # --- Gitsigns
    # GitSignsAdd = { fg = "#6abf40"; };
    # GitSignsChange = { fg = diffchange; };
    # GitSignsDelete = { fg = diffdelete; };
    # --- Telescope
    # TelescopeBorder = { fg = "#abbdc0"; };
    # TelescopeMatching = { fg = "#CC6F14"; };
    # TelescopeMultiSelection = { fg = ansi.magenta; };
    # TelescopePromptPrefix = { fg = ansi.blue; };
    # TelescopeSelectionCaret = { fg = mistake.fg; };
    # TelescopeTitle = { fg = ansi.yellow; };
    # TelescopeResultsTitle = { fg = ansi.yellow; };
    # --- fzf-lua
    # FzfLuaBorder = { fg = "#abbdc0"; };
    # --- Neogit
    # NeogitPopupActionDisabled = { fg = darker_fg; };
    # NeogitPopupActionKey = { fg = ansi.magenta; };
    # NeogitPopupOptionDisabled = { fg = darker_fg; };
    # NeogitPopupOptionKey = { fg = ansi.blue; };
    # NeogitPopupSwitchDisabled = { fg = darker_fg; };
    # NeogitPopupSwitchEnabled = { fg = ansi.cyan; };
    # NeogitPopupSwitchKey = { fg = ansi.magenta; };
    # --- Fugitive
    # diffAdded = { link = "DiffAdd"; };
    # diffRemoved = { link = "DiffDelete"; };
    # --- Startify
    # StartifyBracket = { fg = darker_fg; };
    # StartifyFile = { fg = ansi.black; };
    # StartifySection = { fg = ansi.green; };
    # StartifySlash = { fg = "#4e6e75"; };
    # StartifyPath = { fg = "#4e6e75"; };
    # --- Statusline
    # StatuslineAdd = { fg = diffadd, bg = statusline; };
    # StatuslineErr = { fg = "#8E1410", bg = statusline; };
    # StatuslineHint = { fg = hint, bg = statusline; };
    # StatuslineInfo = { fg = info, bg = statusline; };
    # StatuslineWarn = { fg = warn, bg = statusline; };
    # StatuslineBlue = { fg = ansi.blue, bg = statusline; };
    # StatuslineRed = { fg = ansi.red, bg = statusline; };
    # StatuslineGreen = { fg = ansi.green, bg = statusline; };
    # StatuslineCyan = { fg = ansi.cyan, bg = statusline; };
    # StatuslineMagenta = { fg = ansi.magenta, bg = statusline; };
    # --- ALE
    # ALEWarningSign = { fg = warn; };
    # --- vim-matchup
    # MatchupVirtualText = { fg = ansi.yellow; };
    # --- For `highlight link`
    # AlabasterBlack = { fg = ansi.black; };
    # AlabasterBlue = { fg = ansi.blue; };
    # AlabasterBrightYellow = { fg = ansi.brightyellow; };
    # AlabasterCyan = { fg = ansi.cyan; };
    # AlabasterGreen = { fg = ansi.green; };
    # AlabasterBrightGreen = { fg = "#60cb00"; };
    # AlabasterMagenta = { fg = ansi.magenta; };
    # AlabasterRed = { fg = ansi.red; };
    # AlabasterWhite = { fg = ansi.black; };
    # AlabasterYellow = { fg = ansi.yellow; };
    # --- Hop
    # HopNextKey = { fg = ansi.yellow; };
    # HopNextKey1 = { fg = ansi.blue; };
    # HopNextKey2 = { fg = "#17A2D6"; };
    # HopUnmatched = { fg = "#bfbfbf"; };
    # --- Lightspeed
    # LightspeedGreyWash = { fg = "#bfbfbf"; };
    # --- checkhealth
    # healthSuccess = { fg = ansi.green, bg = bg; };
    # --- cmp
    # CmpItemMenuDefault = { fg = ansi.magenta; };
    # --- nvim-ts-rainbow
    # rainbowcol1 = { fg = ansi.yellow; };
    # rainbowcol2 = { fg = ansi.magenta; };
    # rainbowcol3 = { fg = ansi.blue; };
    # rainbowcol4 = { fg = ansi.green; };
    # rainbowcol5 = { fg = ansi.brightyellow; };
    # rainbowcol6 = { fg = ansi.red; };
    # rainbowcol7 = { fg = ansi.cyan; };
    # --- Iswap
    # ISwapSnipe = { bg = ansi.yellow; fg = bg; };
    # ISwapGrey = { fg = "#bfbfbf"; };
    # --- vim-dadbod-ui
    # dbui_help = { fg = dim_comment; };
    # dbui_connection_source = { fg = dim_comment; };
    # --- nvim-dap-virtual-text
    # NvimDapVirtualText = { bg = "#78D2C9"; fg = fg; };
    # --- Noice
    # NoiceCmdlineIcon = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlinePopupBorder = { link = "AlabasterBrightGreen"; };
    # NoiceConfirmBorder = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlinePopupBorderCmdline = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlineIconCmdline = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlinePopupBorderFilter = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlineIconFilter = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlinePopupBorderLua = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlineIconLua = { link = "AlabasterBrightGreen"; };
    # NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow"; };
    # NoiceCmdlineIconSearch = { link = "AlabasterYellow"; };
    # -- Languages
    # --- asm
    # asmDirective = { fg = dim_comment; };
    # nasmLabel = { link = "@AlabasterDefinition"; };
    # ["@lsp.mod.declaration"] = { fg = fg; };
    # ["@lsp.type.enumMember"] = { fg = fg; };
    # ["@lsp.type.function"] = { fg = fg; };
    # ["@lsp.type.method"] = { fg = fg; };
    # ["@lsp.type.selfKeyword"] = { fg = fg; };
    # ["@lsp.typemod.class.declaration"] = { fg = def_fg; };
    # ["@lsp.typemod.class.definition"] = { fg = def_fg; };
    # ["@lsp.typemod.enum.declaration"] = { fg = def_fg; };
    # ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = fg; };
    # ["@lsp.typemod.function.declaration"] = { fg = def_fg; };
    # ["@lsp.typemod.function.definition"] = { fg = def_fg; };
    # ["@lsp.typemod.macro.declaration"] = { fg = def_fg; };
    # ["@lsp.typemod.method.declaration"] = { fg = def_fg; };
    # ["@lsp.typemod.selfKeyword"] = { fg = fg; };
    # ["@lsp.typemod.struct.declaration"] = { fg = def_fg; };
    # ["@lsp.typemod.type.declaration"] = { fg = def_fg; };
  };
}
