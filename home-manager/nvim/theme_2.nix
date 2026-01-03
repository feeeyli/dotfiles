{ config, ... }:

let
  colors = config.lib.stylix.colors;
  color = hx: "#${colors."base${hx}"}";

  neutral_fg = color "06";
in
{
  programs.nvf.settings.vim.highlight = {
    # == Legacy Syntax Groups (Fallback when Tree-sitter is disabled) == --
    Comment = {
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
    Float = {
      fg = neutral_fg;
    };
    Boolean = {
      fg = neutral_fg;
    };

    Keyword = {
      fg = neutral_fg;
    };
    Conditional = {
      fg = neutral_fg;
    };
    Repeat = {
      fg = neutral_fg;
    };
    Statement = {
      fg = neutral_fg;
    };
    Operator = {
      fg = neutral_fg;
    };
    Exception = {
      fg = neutral_fg;
    };

    Identifier = {
      fg = neutral_fg;
    };
    Function = {
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

    Constant = {
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

    Special = {
      fg = neutral_fg;
    };
    SpecialChar = {
      fg = neutral_fg;
    };
    Tag = {
      fg = neutral_fg;
    }; # HTML tags in legacy syntax
    Delimiter = {
      fg = neutral_fg;
    };
    SpecialComment = {
      fg = neutral_fg;
    };
    Debug = {
      fg = neutral_fg;
    };

    # HTML Legacy Groups
    htmlTag = {
      fg = neutral_fg;
    };
    htmlEndTag = {
      fg = neutral_fg;
    };
    htmlTagName = {
      fg = neutral_fg;
    };
    htmlArg = {
      fg = neutral_fg;
    };
    htmlSpecialChar = {
      fg = neutral_fg;
    };
    htmlString = {
      fg = neutral_fg;
    };
    htmlComment = {
      fg = neutral_fg;
    };
    htmlCommentPart = {
      fg = neutral_fg;
    };
    htmlSpecialTagName = {
      fg = neutral_fg;
    };
    htmlLink = {
      fg = neutral_fg;
    };
    htmlBold = {
      fg = neutral_fg;
    };
    htmlItalic = {
      fg = neutral_fg;
    };
    htmlH1 = {
      fg = neutral_fg;
    };
    htmlH2 = {
      fg = neutral_fg;
    };
    htmlH3 = {
      fg = neutral_fg;
    };
    htmlH4 = {
      fg = neutral_fg;
    };
    htmlH5 = {
      fg = neutral_fg;
    };
    htmlH6 = {
      fg = neutral_fg;
    };

    Todo = {
      fg = neutral_fg;
    };
    Error = {
      fg = neutral_fg;
    };
    Underlined = {
      fg = neutral_fg;
    };

    # == Tree-sitter Highlight Groups == --
    # Keywords and Control Flow
    "@keyword" = {
      fg = neutral_fg;
    };
    "@keyword.coroutine" = {
      fg = neutral_fg;
    };
    "@keyword.function" = {
      fg = neutral_fg;
    };
    "@keyword.operator" = {
      fg = neutral_fg;
    };
    "@keyword.return" = {
      fg = neutral_fg;
    };
    "@keyword.import" = {
      fg = neutral_fg;
    };
    "@keyword.type" = {
      fg = neutral_fg;
    };
    "@keyword.modifier" = {
      fg = neutral_fg;
    };
    "@keyword.repeat" = {
      fg = neutral_fg;
    };
    "@keyword.debug" = {
      fg = neutral_fg;
    };
    "@keyword.exception" = {
      fg = neutral_fg;
    };
    "@keyword.conditional" = {
      fg = neutral_fg;
    };
    "@keyword.conditional.ternary" = {
      fg = neutral_fg;
    };
    "@keyword.directive" = {
      fg = neutral_fg;
    };
    "@keyword.directive.define" = {
      fg = neutral_fg;
    };

    # Legacy aliases (for backward compatibility)
    "@conditional" = {
      fg = neutral_fg;
    };
    "@repeat" = {
      fg = neutral_fg;
    };
    "@exception" = {
      fg = neutral_fg;
    };
    "@include" = {
      fg = neutral_fg;
    };

    # Comments
    "@comment" = {
      fg = neutral_fg;
    };
    "@comment.documentation" = {
      fg = neutral_fg;
    };
    "@comment.error" = {
      fg = neutral_fg;
    };
    "@comment.warning" = {
      fg = neutral_fg;
    };
    "@comment.todo" = {
      fg = neutral_fg;
    };
    "@comment.note" = {
      fg = neutral_fg;
    };

    # Strings
    "@string" = {
      fg = neutral_fg;
    };
    "@string.documentation" = {
      fg = neutral_fg;
    };
    "@string.regexp" = {
      fg = neutral_fg;
    };
    "@string.escape" = {
      fg = neutral_fg;
    }; # Escape sequences use keyword color
    "@string.special" = {
      fg = neutral_fg;
    };
    "@string.special.symbol" = {
      fg = neutral_fg;
    }; # Symbols in Ruby, Lisp, etc.
    "@string.special.url" = {
      fg = neutral_fg;
    };
    "@string.special.path" = {
      fg = neutral_fg;
    };
    "@character" = {
      fg = neutral_fg;
    };
    "@character.special" = {
      fg = neutral_fg;
    };

    # Legacy alias (for backward compatibility)
    "@string.regex" = {
      fg = neutral_fg;
    };

    # Numbers and Booleans
    "@number" = {
      fg = neutral_fg;
    };
    "@number.float" = {
      fg = neutral_fg;
    };
    "@boolean" = {
      fg = neutral_fg;
    };

    # Legacy alias (for backward compatibility)
    "@float" = {
      fg = neutral_fg;
    };

    # Functions and Methods
    "@function" = {
      fg = neutral_fg;
    };
    "@function.call" = {
      fg = neutral_fg;
    };
    "@function.builtin" = {
      fg = neutral_fg;
    };
    "@function.macro" = {
      fg = neutral_fg;
    };
    "@function.method" = {
      fg = neutral_fg;
    };
    "@function.method.call" = {
      fg = neutral_fg;
    };
    "@constructor" = {
      fg = neutral_fg;
    };

    # Legacy aliases (for backward compatibility)
    "@method" = {
      fg = neutral_fg;
    };
    "@method.call" = {
      fg = neutral_fg;
    };

    # Types
    "@type" = {
      fg = neutral_fg;
    }; # Darcula uses teal-blue for types
    "@type.builtin" = {
      fg = neutral_fg;
    }; # Built-in types styled as keywords
    "@type.qualifier" = {
      fg = neutral_fg;
    };
    "@type.definition" = {
      fg = neutral_fg;
    };
    "@attribute" = {
      fg = neutral_fg;
    };
    "@attribute.builtin" = {
      fg = neutral_fg;
    };
    "@property" = {
      fg = neutral_fg;
    };

    # Legacy aliases (for backward compatibility)
    "@storageclass" = {
      fg = neutral_fg;
    };
    "@field" = {
      fg = neutral_fg;
    };

    # Variables and Parameters
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
    "@variable.member" = {
      fg = neutral_fg;
    };

    # Special handling for 'this' keyword (should be distinct from member variables)
    # Multiple approaches to catch 'this' keyword in different contexts
    "@variable.builtin.this" = {
      fg = neutral_fg;
    };
    "@keyword.this" = {
      fg = neutral_fg;
    };
    "@variable.language" = {
      fg = neutral_fg;
    }; # Used by some parsers for 'this'
    "@variable.language.this" = {
      fg = neutral_fg;
    };

    # Constants
    "@constant" = {
      fg = neutral_fg;
    };
    "@constant.builtin" = {
      fg = neutral_fg;
    };
    "@constant.macro" = {
      fg = neutral_fg;
    };

    # Punctuation and Operators
    "@punctuation.delimiter" = {
      fg = neutral_fg;
    };
    "@punctuation.bracket" = {
      fg = neutral_fg;
    };
    "@punctuation.special" = {
      fg = neutral_fg;
    }; # String interpolation, special symbols
    "@operator" = {
      fg = neutral_fg;
    };

    # Tags (HTML/XML/JSX/TSX)
    "@tag" = {
      fg = neutral_fg;
    }; # Tag names should be yellow in Darcula
    "@tag.builtin" = {
      fg = neutral_fg;
    }; # HTML5 tags
    "@tag.attribute" = {
      fg = neutral_fg;
    };
    "@tag.delimiter" = {
      fg = neutral_fg;
    };

    # HTML specific
    "@text.html" = {
      fg = neutral_fg;
    };
    "@tag.html" = {
      fg = neutral_fg;
    };
    "@tag.attribute.html" = {
      fg = neutral_fg;
    };
    "@tag.delimiter.html" = {
      fg = neutral_fg;
    };
    "@constant.html" = {
      fg = neutral_fg;
    }; # attribute values
    "@string.html" = {
      fg = neutral_fg;
    };

    # XML specific
    "@tag.xml" = {
      fg = neutral_fg;
    };
    "@tag.attribute.xml" = {
      fg = neutral_fg;
    };
    "@tag.delimiter.xml" = {
      fg = neutral_fg;
    };
    "@string.xml" = {
      fg = neutral_fg;
    };

    # JSX/TSX specific
    "@tag.tsx" = {
      fg = neutral_fg;
    };
    "@tag.jsx" = {
      fg = neutral_fg;
    };
    "@tag.attribute.tsx" = {
      fg = neutral_fg;
    };
    "@tag.attribute.jsx" = {
      fg = neutral_fg;
    };
    "@constructor.tsx" = {
      fg = neutral_fg;
    }; # Component names
    "@constructor.jsx" = {
      fg = neutral_fg;
    };

    # Angular specific (custom components in templates)
    # Angular components can be captured in multiple ways depending on parser
    "@constructor.html" = {
      fg = neutral_fg;
    }; # Angular components in HTML
    "@type.html" = {
      fg = neutral_fg;
    }; # Angular components that appear as types
    "@tag.component" = {
      fg = neutral_fg;
    }; # Web components / custom elements
    "@tag.custom" = {
      fg = neutral_fg;
    }; # Custom tags

    # Markup (Markdown, reStructuredText, etc.) - New standard
    "@markup.strong" = {
      fg = neutral_fg;
    };
    "@markup.italic" = {
      fg = neutral_fg;
    };
    "@markup.strikethrough" = {
      fg = neutral_fg;
    };
    "@markup.underline" = {
      fg = neutral_fg;
    };

    "@markup.heading" = {
      fg = neutral_fg;
    };
    "@markup.heading.1" = {
      fg = neutral_fg;
    };
    "@markup.heading.2" = {
      fg = neutral_fg;
    };
    "@markup.heading.3" = {
      fg = neutral_fg;
    };
    "@markup.heading.4" = {
      fg = neutral_fg;
    };
    "@markup.heading.5" = {
      fg = neutral_fg;
    };
    "@markup.heading.6" = {
      fg = neutral_fg;
    };

    "@markup.quote" = {
      fg = neutral_fg;
    };
    "@markup.math" = {
      fg = neutral_fg;
    };

    "@markup.link" = {
      fg = neutral_fg;
    };
    "@markup.link.label" = {
      fg = neutral_fg;
    };
    "@markup.link.url" = {
      fg = neutral_fg;
    };

    "@markup.raw" = {
      fg = neutral_fg;
    };
    "@markup.raw.block" = {
      fg = neutral_fg;
    };

    "@markup.list" = {
      fg = neutral_fg;
    };
    "@markup.list.checked" = {
      fg = neutral_fg;
    };
    "@markup.list.unchecked" = {
      fg = neutral_fg;
    };

    # Legacy @text.* groups (for backward compatibility)
    "@text" = {
      fg = neutral_fg;
    };
    "@text.strong" = {
      fg = neutral_fg;
    };
    "@text.emphasis" = {
      fg = neutral_fg;
    };
    "@text.underline" = {
      fg = neutral_fg;
    };
    "@text.strike" = {
      fg = neutral_fg;
    };
    "@text.title" = {
      fg = neutral_fg;
    };
    "@text.literal" = {
      fg = neutral_fg;
    };
    "@text.uri" = {
      fg = neutral_fg;
    };
    "@text.reference" = {
      fg = neutral_fg;
    };

    # Namespaces and Modules
    "@module" = {
      fg = neutral_fg;
    };
    "@module.builtin" = {
      fg = neutral_fg;
    };

    # Legacy aliases (for backward compatibility)
    "@namespace" = {
      fg = neutral_fg;
    };
    "@symbol" = {
      fg = neutral_fg;
    };

    # Labels
    "@label" = {
      fg = neutral_fg;
    };

    # Diff (Version Control)
    "@diff.plus" = {
      fg = neutral_fg;
    };
    "@diff.minus" = {
      fg = neutral_fg;
    };
    "@diff.delta" = {
      fg = neutral_fg;
    };

    # Special Captures
    "@none" = {
      fg = neutral_fg;
    }; # Disable highlighting
    "@conceal" = {
      fg = neutral_fg;
    }; # Concealed text
    "@spell" = { }; # Enable spell checking
    "@nospell" = { }; # Disable spell checking

    # == LSP Semantic Token Support == --
    "@lsp.type.class" = {
      fg = neutral_fg;
    };
    "@lsp.type.struct" = {
      fg = neutral_fg;
    };
    "@lsp.type.enum" = {
      fg = neutral_fg;
    };
    "@lsp.type.enumMember" = {
      fg = neutral_fg;
    };
    "@lsp.type.interface" = {
      fg = neutral_fg;
    };
    "@lsp.type.typeParameter" = {
      fg = neutral_fg;
    };
    "@lsp.type.namespace" = {
      fg = neutral_fg;
    };
    "@lsp.type.parameter" = {
      fg = neutral_fg;
    };
    "@lsp.type.variable" = {
      fg = neutral_fg;
    };
    "@lsp.type.property" = {
      fg = neutral_fg;
    };
    "@lsp.type.function" = {
      fg = neutral_fg;
    };
    "@lsp.type.method" = {
      fg = neutral_fg;
    };
    "@lsp.type.macro" = {
      fg = neutral_fg;
    };
    "@lsp.type.decorator" = {
      fg = neutral_fg;
    };
    # 'this' keyword handling (multiple semantic token types)
    # NOTE: For changes to take effect, reload with :colorscheme darcula
    # or restart Neovim and ensure LSP is reloaded
    "@lsp.type.selfKeyword" = {
      fg = neutral_fg;
    }; # 'this' in TypeScript/JavaScript
    "@lsp.type.selfParameter" = {
      fg = neutral_fg;
    }; # 'this' as parameter

    # Angular/React component handling
    "@lsp.type.component" = {
      fg = neutral_fg;
    }; # Angular/React components
    "@lsp.type.customElement" = {
      fg = neutral_fg;
    }; # Web components

    "@lsp.mod.deprecated" = {
      fg = neutral_fg;
    };
    "@lsp.mod.readonly" = {
      fg = neutral_fg;
    };
    "@lsp.mod.static" = {
      fg = neutral_fg;
    };
    "@lsp.mod.abstract" = {
      fg = neutral_fg;
    };
    "@lsp.mod.async" = { };
    "@lsp.mod.declaration" = { };
    "@lsp.mod.defaultLibrary" = {
      fg = neutral_fg;
    };
    "@lsp.mod.definition" = { };
    "@lsp.mod.modification" = { };
    "@lsp.mod.documentation" = { };

    # == LSP Diagnostics == --
    DiagnosticError = {
      fg = neutral_fg;
    };
    DiagnosticWarn = {
      fg = neutral_fg;
    };
    DiagnosticInfo = {
      fg = neutral_fg;
    };
    DiagnosticHint = {
      fg = neutral_fg;
    };

    DiagnosticVirtualTextError = {
      fg = neutral_fg;
    };
    DiagnosticVirtualTextWarn = {
      fg = neutral_fg;
    };
    DiagnosticVirtualTextInfo = {
      fg = neutral_fg;
    };
    DiagnosticVirtualTextHint = {
      fg = neutral_fg;
    };

    DiagnosticUnderlineError = {
      fg = neutral_fg;
    };
    DiagnosticUnderlineWarn = {
      fg = neutral_fg;
    };
    DiagnosticUnderlineInfo = {
      fg = neutral_fg;
    };
    DiagnosticUnderlineHint = {
      fg = neutral_fg;
    };

    DiagnosticFloatingError = {
      fg = neutral_fg;
    };
    DiagnosticFloatingWarn = {
      fg = neutral_fg;
    };
    DiagnosticFloatingInfo = {
      fg = neutral_fg;
    };
    DiagnosticFloatingHint = {
      fg = neutral_fg;
    };

    DiagnosticSignError = {
      fg = neutral_fg;
    };
    DiagnosticSignWarn = {
      fg = neutral_fg;
    };
    DiagnosticSignInfo = {
      fg = neutral_fg;
    };
    DiagnosticSignHint = {
      fg = neutral_fg;
    };

    # LSP References
    LspReferenceText = {
      fg = neutral_fg;
    };
    LspReferenceRead = {
      fg = neutral_fg;
    };
    LspReferenceWrite = {
      fg = neutral_fg;
    };

    # LSP Code Lens
    LspCodeLens = {
      fg = neutral_fg;
    };
    LspCodeLensSeparator = {
      fg = neutral_fg;
    };

    # == Plugin Support == --
    # NvimTree (Enhanced File Explorer)
    NvimTreeNormal = {
      fg = neutral_fg;
    };
    NvimTreeNormalNC = {
      fg = neutral_fg;
    };
    NvimTreeVertSplit = {
      fg = neutral_fg;
    };
    NvimTreeWinSeparator = {
      fg = neutral_fg;
    };
    NvimTreeEndOfBuffer = {
      fg = neutral_fg;
    };
    NvimTreeCursorLine = {
      fg = neutral_fg;
    };
    NvimTreeCursorColumn = {
      fg = neutral_fg;
    };
    NvimTreeStatusLine = {
      fg = neutral_fg;
    };
    NvimTreeStatusLineNC = {
      fg = neutral_fg;
    };

    # Folders
    NvimTreeFolderIcon = {
      fg = neutral_fg;
    };
    NvimTreeFolderName = {
      fg = neutral_fg;
    };
    NvimTreeOpenedFolderName = {
      fg = neutral_fg;
    };
    NvimTreeEmptyFolderName = {
      fg = neutral_fg;
    };
    NvimTreeSymlinkFolderName = {
      fg = neutral_fg;
    };

    # Files
    NvimTreeRootFolder = {
      fg = neutral_fg;
    };
    NvimTreeExecFile = {
      fg = neutral_fg;
    };
    NvimTreeSpecialFile = {
      fg = neutral_fg;
    };
    NvimTreeImageFile = {
      fg = neutral_fg;
    };
    NvimTreeSymlink = {
      fg = neutral_fg;
    };
    NvimTreeModifiedFile = {
      fg = neutral_fg;
    };
    NvimTreeOpenedFile = {
      fg = neutral_fg;
    };
    NvimTreeHiddenFile = {
      fg = neutral_fg;
    };

    # Git Status
    NvimTreeGitDirty = {
      fg = neutral_fg;
    };
    NvimTreeGitStaged = {
      fg = neutral_fg;
    };
    NvimTreeGitNew = {
      fg = neutral_fg;
    };
    NvimTreeGitRenamed = {
      fg = neutral_fg;
    };
    NvimTreeGitDeleted = {
      fg = neutral_fg;
    };
    NvimTreeGitMerge = {
      fg = neutral_fg;
    };
    NvimTreeGitIgnored = {
      fg = neutral_fg;
    };

    # File Highlights (decorations)
    NvimTreeFileDirty = {
      fg = neutral_fg;
    };
    NvimTreeFileStaged = {
      fg = neutral_fg;
    };
    NvimTreeFileNew = {
      fg = neutral_fg;
    };
    NvimTreeFileRenamed = {
      fg = neutral_fg;
    };
    NvimTreeFileDeleted = {
      fg = neutral_fg;
    };
    NvimTreeFileMerge = {
      fg = neutral_fg;
    };
    NvimTreeFileIgnored = {
      fg = neutral_fg;
    };

    # Folder Highlights (decorations)
    NvimTreeFolderDirty = {
      fg = neutral_fg;
    };
    NvimTreeFolderStaged = {
      fg = neutral_fg;
    };
    NvimTreeFolderNew = {
      fg = neutral_fg;
    };
    NvimTreeFolderRenamed = {
      fg = neutral_fg;
    };
    NvimTreeFolderDeleted = {
      fg = neutral_fg;
    };
    NvimTreeFolderMerge = {
      fg = neutral_fg;
    };
    NvimTreeFolderIgnored = {
      fg = neutral_fg;
    };

    # Clipboard
    NvimTreeCutHL = {
      fg = neutral_fg;
    };
    NvimTreeCopiedHL = {
      fg = neutral_fg;
    };

    # Bookmarks
    NvimTreeBookmarkHL = {
      fg = neutral_fg;
    };

    # Diagnostics
    NvimTreeLspDiagnosticsError = {
      fg = neutral_fg;
    };
    NvimTreeLspDiagnosticsWarning = {
      fg = neutral_fg;
    };
    NvimTreeLspDiagnosticsInformation = {
      fg = neutral_fg;
    };
    NvimTreeLspDiagnosticsHint = {
      fg = neutral_fg;
    };

    # Window Picker
    NvimTreeWindowPicker = {
      fg = neutral_fg;
    };

    # Indent Markers
    NvimTreeIndentMarker = {
      fg = neutral_fg;
    };
    NvimTreeLiveFilterPrefix = {
      fg = neutral_fg;
    };
    NvimTreeLiveFilterValue = {
      fg = neutral_fg;
    };

    # Telescope
    TelescopeNormal = {
      fg = neutral_fg;
    };
    TelescopeBorder = {
      fg = neutral_fg;
    };
    TelescopePromptBorder = {
      fg = neutral_fg;
    };
    TelescopeResultsBorder = {
      fg = neutral_fg;
    };
    TelescopePreviewBorder = {
      fg = neutral_fg;
    };
    TelescopePromptTitle = {
      fg = neutral_fg;
    };
    TelescopeResultsTitle = {
      fg = neutral_fg;
    };
    TelescopePreviewTitle = {
      fg = neutral_fg;
    };
    TelescopePromptPrefix = {
      fg = neutral_fg;
    };
    TelescopePromptCounter = {
      fg = neutral_fg;
    };
    TelescopeSelection = {
      fg = neutral_fg;
    };
    TelescopeSelectionCaret = {
      fg = neutral_fg;
    };
    TelescopeMultiSelection = {
      fg = neutral_fg;
    };
    TelescopeMultiIcon = {
      fg = neutral_fg;
    };
    TelescopeMatching = {
      fg = neutral_fg;
    };
    TelescopePreviewLine = {
      fg = neutral_fg;
    };
    TelescopePreviewMatch = {
      fg = neutral_fg;
    };

    # GitSigns
    GitSignsAdd = {
      fg = neutral_fg;
    };
    GitSignsAddLn = {
      fg = neutral_fg;
    };
    GitSignsChange = {
      fg = neutral_fg;
    };
    GitSignsChangeLn = {
      fg = neutral_fg;
    };
    GitSignsDelete = {
      fg = neutral_fg;
    };
    GitSignsDeleteLn = {
      fg = neutral_fg;
    };
    GitSignsCurrentLineBlame = {
      fg = neutral_fg;
    };

    # Blink.cmp (Completion Menu)
    BlinkCmpMenu = {
      fg = neutral_fg;
    };
    BlinkCmpMenuBorder = {
      fg = neutral_fg;
    };
    BlinkCmpMenuSelection = {
      fg = neutral_fg;
    };
    BlinkCmpLabel = {
      fg = neutral_fg;
    };
    BlinkCmpLabelDeprecated = {
      fg = neutral_fg;
    };
    BlinkCmpLabelMatch = {
      fg = neutral_fg;
    };
    BlinkCmpLabelDetail = {
      fg = neutral_fg;
    };
    BlinkCmpLabelDescription = {
      fg = neutral_fg;
    };
    BlinkCmpKind = {
      fg = neutral_fg;
    };
    BlinkCmpKindText = {
      fg = neutral_fg;
    };
    BlinkCmpKindMethod = {
      fg = neutral_fg;
    };
    BlinkCmpKindFunction = {
      fg = neutral_fg;
    };
    BlinkCmpKindConstructor = {
      fg = neutral_fg;
    };
    BlinkCmpKindField = {
      fg = neutral_fg;
    };
    BlinkCmpKindVariable = {
      fg = neutral_fg;
    };
    BlinkCmpKindClass = {
      fg = neutral_fg;
    };
    BlinkCmpKindInterface = {
      fg = neutral_fg;
    };
    BlinkCmpKindModule = {
      fg = neutral_fg;
    };
    BlinkCmpKindProperty = {
      fg = neutral_fg;
    };
    BlinkCmpKindUnit = {
      fg = neutral_fg;
    };
    BlinkCmpKindValue = {
      fg = neutral_fg;
    };
    BlinkCmpKindEnum = {
      fg = neutral_fg;
    };
    BlinkCmpKindKeyword = {
      fg = neutral_fg;
    };
    BlinkCmpKindSnippet = {
      fg = neutral_fg;
    };
    BlinkCmpKindColor = {
      fg = neutral_fg;
    };
    BlinkCmpKindFile = {
      fg = neutral_fg;
    };
    BlinkCmpKindReference = {
      fg = neutral_fg;
    };
    BlinkCmpKindFolder = {
      fg = neutral_fg;
    };
    BlinkCmpKindEnumMember = {
      fg = neutral_fg;
    };
    BlinkCmpKindConstant = {
      fg = neutral_fg;
    };
    BlinkCmpKindStruct = {
      fg = neutral_fg;
    };
    BlinkCmpKindEvent = {
      fg = neutral_fg;
    };
    BlinkCmpKindOperator = {
      fg = neutral_fg;
    };
    BlinkCmpKindTypeParameter = {
      fg = neutral_fg;
    };
    BlinkCmpDoc = {
      fg = neutral_fg;
    };
    BlinkCmpDocBorder = {
      fg = neutral_fg;
    };
    BlinkCmpDocCursorLine = {
      fg = neutral_fg;
    };
    BlinkCmpSignatureHelp = {
      fg = neutral_fg;
    };
    BlinkCmpSignatureHelpBorder = {
      fg = neutral_fg;
    };
    BlinkCmpSignatureHelpActiveParameter = {
      fg = neutral_fg;
    };

    # nvim-cmp (Alternative Completion)
    CmpItemAbbr = {
      fg = neutral_fg;
    };
    CmpItemAbbrDeprecated = {
      fg = neutral_fg;
    };
    CmpItemAbbrMatch = {
      fg = neutral_fg;
    };
    CmpItemAbbrMatchFuzzy = {
      fg = neutral_fg;
    };
    CmpItemKind = {
      fg = neutral_fg;
    };
    CmpItemKindText = {
      fg = neutral_fg;
    };
    CmpItemKindMethod = {
      fg = neutral_fg;
    };
    CmpItemKindFunction = {
      fg = neutral_fg;
    };
    CmpItemKindConstructor = {
      fg = neutral_fg;
    };
    CmpItemKindField = {
      fg = neutral_fg;
    };
    CmpItemKindVariable = {
      fg = neutral_fg;
    };
    CmpItemKindClass = {
      fg = neutral_fg;
    };
    CmpItemKindInterface = {
      fg = neutral_fg;
    };
    CmpItemKindModule = {
      fg = neutral_fg;
    };
    CmpItemKindProperty = {
      fg = neutral_fg;
    };
    CmpItemKindUnit = {
      fg = neutral_fg;
    };
    CmpItemKindValue = {
      fg = neutral_fg;
    };
    CmpItemKindEnum = {
      fg = neutral_fg;
    };
    CmpItemKindKeyword = {
      fg = neutral_fg;
    };
    CmpItemKindSnippet = {
      fg = neutral_fg;
    };
    CmpItemKindColor = {
      fg = neutral_fg;
    };
    CmpItemKindFile = {
      fg = neutral_fg;
    };
    CmpItemKindReference = {
      fg = neutral_fg;
    };
    CmpItemKindFolder = {
      fg = neutral_fg;
    };
    CmpItemKindEnumMember = {
      fg = neutral_fg;
    };
    CmpItemKindConstant = {
      fg = neutral_fg;
    };
    CmpItemKindStruct = {
      fg = neutral_fg;
    };
    CmpItemKindEvent = {
      fg = neutral_fg;
    };
    CmpItemKindOperator = {
      fg = neutral_fg;
    };
    CmpItemKindTypeParameter = {
      fg = neutral_fg;
    };
    CmpItemMenu = {
      fg = neutral_fg;
    };

    # Bufferline
    BufferLineFill = {
      fg = neutral_fg;
    };
    BufferLineBackground = {
      fg = neutral_fg;
    };
    BufferLineBufferVisible = {
      fg = neutral_fg;
    };
    BufferLineBufferSelected = {
      fg = neutral_fg;
    };
    BufferLineTab = {
      fg = neutral_fg;
    };
    BufferLineTabSelected = {
      fg = neutral_fg;
    };
    BufferLineTabSeparator = {
      fg = neutral_fg;
    };
    BufferLineTabSeparatorSelected = {
      fg = neutral_fg;
    };
    BufferLineIndicatorSelected = {
      fg = neutral_fg;
    };
    BufferLineCloseButton = {
      fg = neutral_fg;
    };
    BufferLineCloseButtonVisible = {
      fg = neutral_fg;
    };
    BufferLineCloseButtonSelected = {
      fg = neutral_fg;
    };
    BufferLineModified = {
      fg = neutral_fg;
    };
    BufferLineModifiedVisible = {
      fg = neutral_fg;
    };
    BufferLineModifiedSelected = {
      fg = neutral_fg;
    };
    BufferLineDuplicate = {
      fg = neutral_fg;
    };
    BufferLineDuplicateVisible = {
      fg = neutral_fg;
    };
    BufferLineDuplicateSelected = {
      fg = neutral_fg;
    };
    BufferLineSeparator = {
      fg = neutral_fg;
    };
    BufferLineSeparatorVisible = {
      fg = neutral_fg;
    };
    BufferLineSeparatorSelected = {
      fg = neutral_fg;
    };
    BufferLineError = {
      fg = neutral_fg;
    };
    BufferLineErrorDiagnostic = {
      fg = neutral_fg;
    };
    BufferLineWarning = {
      fg = neutral_fg;
    };
    BufferLineWarningDiagnostic = {
      fg = neutral_fg;
    };
    BufferLineInfo = {
      fg = neutral_fg;
    };
    BufferLineInfoDiagnostic = {
      fg = neutral_fg;
    };
    BufferLineHint = {
      fg = neutral_fg;
    };
    BufferLineHintDiagnostic = {
      fg = neutral_fg;
    };

    # Noice (Command Line UI)
    NoicePopup = {
      fg = neutral_fg;
    };
    NoicePopupBorder = {
      fg = neutral_fg;
    };
    NoiceCmdline = {
      fg = neutral_fg;
    };
    NoiceCmdlinePopup = {
      fg = neutral_fg;
    };
    NoiceCmdlinePopupBorder = {
      fg = neutral_fg;
    };
    NoiceCmdlinePopupTitle = {
      fg = neutral_fg;
    };
    NoiceCmdlineIcon = {
      fg = neutral_fg;
    };
    NoiceCmdlineIconSearch = {
      fg = neutral_fg;
    };
    NoiceConfirm = {
      fg = neutral_fg;
    };
    NoiceConfirmBorder = {
      fg = neutral_fg;
    };
    NoiceSplit = {
      fg = neutral_fg;
    };
    NoiceSplitBorder = {
      fg = neutral_fg;
    };

    # Lazy (Plugin Manager)
    LazyNormal = {
      fg = neutral_fg;
    };
    LazyButton = {
      fg = neutral_fg;
    };
    LazyButtonActive = {
      fg = neutral_fg;
    };
    LazyH1 = {
      fg = neutral_fg;
    };
    LazyH2 = {
      fg = neutral_fg;
    };
    LazyComment = {
      fg = neutral_fg;
    };
    LazyCommit = {
      fg = neutral_fg;
    };
    LazyCommitType = {
      fg = neutral_fg;
    };
    LazyDimmed = {
      fg = neutral_fg;
    };
    LazyProp = {
      fg = neutral_fg;
    };
    LazyValue = {
      fg = neutral_fg;
    };
    LazyDir = {
      fg = neutral_fg;
    };
    LazyUrl = {
      fg = neutral_fg;
    };
    LazySpecial = {
      fg = neutral_fg;
    };
    LazyReasonPlugin = {
      fg = neutral_fg;
    };
    LazyReasonRuntime = {
      fg = neutral_fg;
    };
    LazyReasonCmd = {
      fg = neutral_fg;
    };
    LazyReasonSource = {
      fg = neutral_fg;
    };
    LazyReasonFt = {
      fg = neutral_fg;
    };
    LazyReasonKeys = {
      fg = neutral_fg;
    };
    LazyReasonEvent = {
      fg = neutral_fg;
    };
    LazyReasonStart = {
      fg = neutral_fg;
    };
    LazyProgressDone = {
      fg = neutral_fg;
    };
    LazyProgressTodo = {
      fg = neutral_fg;
    };

    # Which-Key
    WhichKey = {
      fg = neutral_fg;
    };
    WhichKeyGroup = {
      fg = neutral_fg;
    };
    WhichKeyDesc = {
      fg = neutral_fg;
    };
    WhichKeySeparator = {
      fg = neutral_fg;
    };
    WhichKeyFloat = {
      fg = neutral_fg;
    };
    WhichKeyBorder = {
      fg = neutral_fg;
    };
    WhichKeyValue = {
      fg = neutral_fg;
    };

    # Indent Blankline
    IndentBlanklineChar = {
      fg = neutral_fg;
    };
    IndentBlanklineContextChar = {
      fg = neutral_fg;
    };
    IndentBlanklineContextStart = {
      fg = neutral_fg;
    };
    IndentBlanklineSpaceChar = {
      fg = neutral_fg;
    };
    IndentBlanklineSpaceCharBlankline = {
      fg = neutral_fg;
    };
    IblIndent = {
      fg = neutral_fg;
    };
    IblScope = {
      fg = neutral_fg;
    };
    IblWhitespace = {
      fg = neutral_fg;
    };

    # Neo-tree
    NeoTreeNormal = {
      fg = neutral_fg;
    };
    NeoTreeNormalNC = {
      fg = neutral_fg;
    };
    NeoTreeDirectoryIcon = {
      fg = neutral_fg;
    };
    NeoTreeDirectoryName = {
      fg = neutral_fg;
    };
    NeoTreeFileName = {
      fg = neutral_fg;
    };
    NeoTreeFileNameOpened = {
      fg = neutral_fg;
    };
    NeoTreeFloatBorder = {
      fg = neutral_fg;
    };
    NeoTreeFloatTitle = {
      fg = neutral_fg;
    };
    NeoTreeGitAdded = {
      fg = neutral_fg;
    };
    NeoTreeGitConflict = {
      fg = neutral_fg;
    };
    NeoTreeGitDeleted = {
      fg = neutral_fg;
    };
    NeoTreeGitIgnored = {
      fg = neutral_fg;
    };
    NeoTreeGitModified = {
      fg = neutral_fg;
    };
    NeoTreeGitUnstaged = {
      fg = neutral_fg;
    };
    NeoTreeGitUntracked = {
      fg = neutral_fg;
    };
    NeoTreeGitStaged = {
      fg = neutral_fg;
    };
    NeoTreeIndentMarker = {
      fg = neutral_fg;
    };
    NeoTreeRootName = {
      fg = neutral_fg;
    };
    NeoTreeSymbolicLinkTarget = {
      fg = neutral_fg;
    };
    NeoTreeTitleBar = {
      fg = neutral_fg;
    };
    NeoTreeWindowsHidden = {
      fg = neutral_fg;
    };

    # Trouble
    TroubleNormal = {
      fg = neutral_fg;
    };
    TroubleText = {
      fg = neutral_fg;
    };
    TroubleCount = {
      fg = neutral_fg;
    };
    TroubleCode = {
      fg = neutral_fg;
    };
    TroubleFile = {
      fg = neutral_fg;
    };
    TroubleDirectory = {
      fg = neutral_fg;
    };
    TroubleSource = {
      fg = neutral_fg;
    };
    TroubleLocation = {
      fg = neutral_fg;
    };
    TroubleIndent = {
      fg = neutral_fg;
    };
    TroubleFoldIcon = {
      fg = neutral_fg;
    };
    TroubleSignError = {
      fg = neutral_fg;
    };
    TroubleSignWarning = {
      fg = neutral_fg;
    };
    TroubleSignInformation = {
      fg = neutral_fg;
    };
    TroubleSignHint = {
      fg = neutral_fg;
    };
    TroubleError = {
      fg = neutral_fg;
    };
    TroubleWarning = {
      fg = neutral_fg;
    };
    TroubleInformation = {
      fg = neutral_fg;
    };
    TroubleHint = {
      fg = neutral_fg;
    };

    # Mason
    MasonNormal = {
      fg = neutral_fg;
    };
    MasonHeader = {
      fg = neutral_fg;
    };
    MasonHeaderSecondary = {
      fg = neutral_fg;
    };
    MasonHighlight = {
      fg = neutral_fg;
    };
    MasonHighlightBlock = {
      fg = neutral_fg;
    };
    MasonHighlightBlockBold = {
      fg = neutral_fg;
    };
    MasonHighlightSecondary = {
      fg = neutral_fg;
    };
    MasonHighlightBlockSecondary = {
      fg = neutral_fg;
    };
    MasonHighlightBlockBoldSecondary = {
      fg = neutral_fg;
    };
    MasonMuted = {
      fg = neutral_fg;
    };
    MasonMutedBlock = {
      fg = neutral_fg;
    };
    MasonMutedBlockBold = {
      fg = neutral_fg;
    };
    MasonError = {
      fg = neutral_fg;
    };
    MasonWarning = {
      fg = neutral_fg;
    };
    MasonHeading = {
      fg = neutral_fg;
    };

    # Alpha/Dashboard
    AlphaHeader = {
      fg = neutral_fg;
    };
    AlphaButtons = {
      fg = neutral_fg;
    };
    AlphaShortcut = {
      fg = neutral_fg;
    };
    AlphaFooter = {
      fg = neutral_fg;
    };

    # Hop/Leap (Jump Navigation)
    HopNextKey = {
      fg = neutral_fg;
    };
    HopNextKey1 = {
      fg = neutral_fg;
    };
    HopNextKey2 = {
      fg = neutral_fg;
    };
    HopUnmatched = {
      fg = neutral_fg;
    };
    LeapMatch = {
      fg = neutral_fg;
    };
    LeapLabelPrimary = {
      fg = neutral_fg;
    };
    LeapLabelSecondary = {
      fg = neutral_fg;
    };
    LeapBackdrop = {
      fg = neutral_fg;
    };

    # Notify
    NotifyERRORBorder = {
      fg = neutral_fg;
    };
    NotifyWARNBorder = {
      fg = neutral_fg;
    };
    NotifyINFOBorder = {
      fg = neutral_fg;
    };
    NotifyDEBUGBorder = {
      fg = neutral_fg;
    };
    NotifyTRACEBorder = {
      fg = neutral_fg;
    };
    NotifyERRORIcon = {
      fg = neutral_fg;
    };
    NotifyWARNIcon = {
      fg = neutral_fg;
    };
    NotifyINFOIcon = {
      fg = neutral_fg;
    };
    NotifyDEBUGIcon = {
      fg = neutral_fg;
    };
    NotifyTRACEIcon = {
      fg = neutral_fg;
    };
    NotifyERRORTitle = {
      fg = neutral_fg;
    };
    NotifyWARNTitle = {
      fg = neutral_fg;
    };
    NotifyINFOTitle = {
      fg = neutral_fg;
    };
    NotifyDEBUGTitle = {
      fg = neutral_fg;
    };
    NotifyTRACETitle = {
      fg = neutral_fg;
    };

    # Diff
    DiffAdd = {
      fg = neutral_fg;
    };
    DiffChange = {
      fg = neutral_fg;
    };
    DiffDelete = {
      fg = neutral_fg;
    };
    DiffText = {
      fg = neutral_fg;
    };

    # Neogit
    NeogitBranch = {
      fg = neutral_fg;
    };
    NeogitRemote = {
      fg = neutral_fg;
    };
    NeogitHunkHeader = {
      fg = neutral_fg;
    };
    NeogitHunkHeaderHighlight = {
      fg = neutral_fg;
    };
    NeogitDiffContextHighlight = {
      fg = neutral_fg;
    };
    NeogitDiffDeleteHighlight = {
      fg = neutral_fg;
    };
    NeogitDiffAddHighlight = {
      fg = neutral_fg;
    };

    # Telescope
    TelescopeBorder = { link = "FloatBorder"; };
		TelescopeNormal = { link = "NormalFloat"; };
		TelescopePreviewNormal = { link = "TelescopeNormal"; };
		TelescopePromptNormal = { link = "TelescopeNormal"; };
		TelescopeResultsNormal = { link = "TelescopeNormal"; };
		TelescopeTitle = { link = "FloatTitle"; };
		TelescopeSelectionCaret = { fg = C.flamingo; bg = C.surface0; };
		TelescopeSelection = {fg = C.flamingo; bg = C.surface0; style = { "bold"; };},
		TelescopeMatching = { fg = C.blue; };
		TelescopePromptPrefix = { fg = C.flamingo; };
  };
}
