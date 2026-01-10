{ config, ... }:

let
  # base08 = "#ff5555";
  # base09 = "#ffb86c";
  # base0A = "#f1fa8c";
  # base0B = "#50fa7b";
  # base0C = "#8be9fd";
  # base0D = "#80bfff";
  # base0E = "#ff79c6";
  # base0F = "#bd93f9";
  colors = config.programs.nvf.settings.vim.theme.base16-colors;
  color = hx: colors."base${hx}";

  punctuation_fg = color "03";
  neutral_fg = color "06";
  method_fg = color "06";
  property_fg = color "06";

  type_fg = color "09";
  tag_fg = color "0A";
  value_fg = color "0B";
  function_fg = color "0C";
  class_fg = color "0D";
  comment_fg = color "0E";
  variable_fg = color "0F";
in
{
  programs.nvf.settings.vim.highlight = {
    # == Legacy Syntax Groups (Fallback when Tree-sitter is disabled) == #
    Comment = {
      fg = comment_fg;
      italic = true;
    };
    String.fg = value_fg;
    Character.fg = value_fg;
    Number.fg = value_fg;
    Float.fg = value_fg;
    Boolean = {
      fg = value_fg;
      italic = true;
    };

    Keyword = {
      fg = neutral_fg;
      bold = true;
    };
    Conditional = {
      fg = neutral_fg;
      bold = true;
    };
    Repeat = {
      fg = neutral_fg;
      bold = true;
    };
    Statement = {
      fg = neutral_fg;
      bold = true;
    };
    Operator.fg = punctuation_fg;
    Exception = {
      fg = neutral_fg;
      bold = true;
    };

    Identifier.fg = neutral_fg;
    Function.fg = neutral_fg;

    Type.fg = neutral_fg;
    StorageClass.fg = neutral_fg;
    Structure.fg = neutral_fg;
    Typedef.fg = neutral_fg;

    Constant.fg = neutral_fg;

    PreProc.fg = neutral_fg;
    Include.fg = neutral_fg;
    Define.fg = neutral_fg;
    Macro.fg = neutral_fg;
    PreCondit.fg = neutral_fg;

    Special.fg = variable_fg;
    SpecialChar.fg = neutral_fg;
    Tag.fg = neutral_fg; # HTML tags in legacy syntax
    Delimiter.fg = neutral_fg;
    SpecialComment = {
      fg = neutral_fg;
      italic = true;
    };
    Debug.fg = neutral_fg;

    # HTML Legacy Groups
    htmlTag.fg = punctuation_fg;
    htmlEndTag.fg = punctuation_fg;
    htmlTagName.fg = tag_fg;
    htmlTagN.fg = tag_fg;
    htmlArg = {
      fg = neutral_fg;
      italic = true;
    };
    htmlSpecialChar.fg = neutral_fg;
    htmlString.fg = value_fg;
    htmlComment = {
      fg = neutral_fg;
      italic = true;
    };
    htmlCommentPart = {
      fg = neutral_fg;
      italic = true;
    };
    htmlSpecialTagName.fg = neutral_fg;
    htmlLink = {
      fg = neutral_fg;
      underline = true;
    };
    htmlBold.bold = true;
    htmlItalic.italic = true;
    htmlH1 = {
      fg = neutral_fg;
      bold = true;
    };
    htmlH2 = {
      fg = neutral_fg;
      bold = true;
    };
    htmlH3 = {
      fg = neutral_fg;
      bold = true;
    };
    htmlH4 = {
      fg = neutral_fg;
      bold = true;
    };
    htmlH5 = {
      fg = neutral_fg;
      bold = true;
    };
    htmlH6 = {
      fg = neutral_fg;
      bold = true;
    };
    htmlTitle.fg = neutral_fg;

    javaScriptBraces.fg = punctuation_fg;

    # Todo = { fg = neutral_fg; bg = p.bg_darker; bold = true; };
    # Error = { fg = neutral_fg; };
    # Underlined = { fg = neutral_fg; underline = true; };

    # == Tree-sitter Highlight Groups == #
    # Keywords and Control Flow
    "@keyword" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.coroutine" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.function" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.operator" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.return" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.import" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.type" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.modifier" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.repeat" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.debug" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.exception" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.conditional" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.conditional.ternary" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.directive" = {
      fg = neutral_fg;
      bold = true;
    };
    "@keyword.directive.define" = {
      fg = neutral_fg;
      bold = true;
    };

    # Legacy aliases (for backward compatibility)
    "@conditional" = {
      fg = neutral_fg;
      bold = true;
    };
    "@repeat" = {
      fg = neutral_fg;
      bold = true;
    };
    "@exception" = {
      fg = neutral_fg;
      bold = true;
    };
    "@include" = {
      fg = neutral_fg;
      bold = true;
    };

    # Comments
    "@comment" = {
      fg = comment_fg;
      italic = true;
    };
    "@comment.documentation" = {
      fg = comment_fg;
      italic = true;
    };
    "@comment.error" = {
      fg = comment_fg;
      bold = true;
    };
    "@comment.warning" = {
      fg = comment_fg;
      bold = true;
    };
    # "@comment.todo" = { fg = neutral_fg; bg = p.bg_darker; bold = true; };
    "@comment.note" = {
      fg = comment_fg;
      bold = true;
    };

    # Strings
    "@string".fg = value_fg;
    "@string.documentation" = {
      fg = value_fg;
      italic = true;
    };
    "@string.regexp".fg = value_fg;
    "@string.escape".fg = value_fg; # Escape sequences use keyword color
    "@string.special".fg = value_fg;
    "@string.special.symbol".fg = value_fg; # Symbols in Ruby; Lisp; etc.
    "@string.special.url" = {
      fg = value_fg;
      underline = true;
    };
    "@string.special.path".fg = value_fg;
    "@character".fg = value_fg;
    "@character.special".fg = neutral_fg;

    # Legacy alias (for backward compatibility)
    "@string.regex".fg = value_fg;

    # Numbers and Booleans
    "@number".fg = value_fg;
    "@number.float".fg = value_fg;
    "@boolean" = {
      fg = value_fg;
      italic = true;
    };

    # Legacy alias (for backward compatibility)
    "@float".fg = value_fg;

    # Functions and Methods
    "@function".fg = function_fg;
    "@function.call".fg = function_fg;
    "@function.builtin".fg = function_fg;
    "@function.macro".fg = function_fg;
    "@function.method".fg = method_fg;
    "@function.method.call".fg = method_fg;
    "@constructor".fg = variable_fg;

    # Legacy aliases (for backward compatibility)
    "@method".fg = method_fg;
    "@method.call".fg = method_fg;

    # Types
    "@type".fg = type_fg; # Darcula uses teal-blue for types
    "@type.builtin".fg = type_fg; # Built-in types styled as keywords
    "@type.qualifier".fg = type_fg;
    "@type.definition".fg = type_fg;
    "@attribute".fg = neutral_fg;
    "@attribute.builtin".fg = neutral_fg;
    "@property".fg = property_fg;

    # Legacy aliases (for backward compatibility)
    "@storageclass".fg = neutral_fg;
    "@field".fg = neutral_fg;

    # Variables and Parameters
    "@variable".fg = variable_fg;
    "@variable.builtin" = {
      fg = variable_fg;
      italic = true;
    };
    "@variable.parameter".fg = variable_fg;
    "@variable.parameter.builtin" = {
      fg = variable_fg;
      italic = true;
    };
    "@variable.member" = {
      fg = neutral_fg;
      italic = true;
    };

    # Special handling for 'this' keyword (should be distinct from member variables)
    # Multiple approaches to catch 'this' keyword in different contexts
    "@variable.builtin.this" = {
      fg = variable_fg;
      italic = true;
    };
    "@keyword.this" = {
      fg = neutral_fg;
      italic = true;
    };
    "@variable.language" = {
      fg = neutral_fg;
      italic = true;
    }; # Used by some parsers for 'this'
    "@variable.language.this" = {
      fg = neutral_fg;
      italic = true;
    };

    # Constants
    "@constant".fg = neutral_fg;
    "@constant.builtin".fg = neutral_fg;
    "@constant.macro".fg = neutral_fg;

    # Punctuation and Operators
    "@punctuation.delimiter".fg = punctuation_fg;
    "@punctuation.bracket".fg = punctuation_fg;
    "@punctuation.special".fg = punctuation_fg; # String interpolation; special symbols
    "@operator".fg = punctuation_fg;

    # Tags (HTML/XML/JSX/TSX)
    "@tag".fg = tag_fg; # Tag names should be yellow in Darcula
    "@tag.builtin".fg = tag_fg; # HTML5 tags
    "@tag.attribute" = {
      fg = neutral_fg;
      italic = true;
    };
    "@tag.delimiter".fg = punctuation_fg;

    # HTML specific
    "@text.html".fg = neutral_fg;
    "@tag.html".fg = neutral_fg;
    "@tag.attribute.html" = {
      fg = neutral_fg;
      italic = true;
    };
    "@tag.delimiter.html".fg = punctuation_fg;
    "@constant.html".fg = neutral_fg; # attribute values
    "@string.html".fg = neutral_fg;

    # XML specific
    "@tag.xml".fg = neutral_fg;
    "@tag.attribute.xml" = {
      fg = neutral_fg;
      italic = true;
    };
    "@tag.delimiter.xml".fg = punctuation_fg;
    "@string.xml".fg = neutral_fg;

    # JSX/TSX specific
    "@tag.tsx".fg = tag_fg;
    "@tag.jsx".fg = neutral_fg;
    "@tag.attribute.tsx" = {
      fg = neutral_fg;
      italic = true;
    };
    "@tag.attribute.jsx" = {
      fg = neutral_fg;
      italic = true;
    };
    "@constructor.tsx".fg = neutral_fg; # Component names
    "@constructor.jsx".fg = neutral_fg;
    "@variable.tsx".fg = variable_fg;
    "@type.tsx".fg = variable_fg;

    # Angular specific (custom components in templates)
    # Angular components can be captured in multiple ways depending on parser
    "@constructor.html".fg = neutral_fg; # Angular components in HTML
    "@type.html".fg = neutral_fg; # Angular components that appear as types
    "@tag.component".fg = neutral_fg; # Web components / custom elements
    "@tag.custom".fg = neutral_fg; # Custom tags

    # Markup (Markdown; reStructuredText; etc.) - New standard
    "@markup.strong".bold = true;
    "@markup.italic".italic = true;
    "@markup.strikethrough".strikethrough = true;
    "@markup.underline".underline = true;

    "@markup.heading" = {
      fg = neutral_fg;
      bold = true;
    };
    "@markup.heading.1" = {
      fg = neutral_fg;
      bold = true;
    };
    "@markup.heading.2" = {
      fg = neutral_fg;
      bold = true;
    };
    "@markup.heading.3" = {
      fg = neutral_fg;
      bold = true;
    };
    "@markup.heading.4" = {
      fg = neutral_fg;
      bold = true;
    };
    "@markup.heading.5" = {
      fg = neutral_fg;
      bold = true;
    };
    "@markup.heading.6" = {
      fg = neutral_fg;
      bold = true;
    };

    "@markup.quote" = {
      fg = neutral_fg;
      italic = true;
    };
    "@markup.math".fg = neutral_fg;

    "@markup.link" = {
      fg = neutral_fg;
      underline = true;
    };
    "@markup.link.label".fg = neutral_fg;
    "@markup.link.url" = {
      fg = neutral_fg;
      underline = true;
    };

    "@markup.raw".fg = neutral_fg;
    "@markup.raw.block".fg = neutral_fg;

    "@markup.list".fg = neutral_fg;
    "@markup.list.checked".fg = neutral_fg;
    "@markup.list.unchecked".fg = neutral_fg;

    # Legacy @text.* groups (for backward compatibility)
    "@text".fg = neutral_fg;
    "@text.strong".bold = true;
    "@text.emphasis".italic = true;
    "@text.underline".underline = true;
    "@text.strike".strikethrough = true;
    "@text.title" = {
      fg = neutral_fg;
      bold = true;
    };
    "@text.literal".fg = neutral_fg;
    "@text.uri" = {
      fg = neutral_fg;
      underline = true;
    };
    "@text.reference".fg = neutral_fg;

    # Namespaces and Modules
    "@module".fg = neutral_fg;
    "@module.builtin".fg = neutral_fg;

    # Legacy aliases (for backward compatibility)
    "@namespace".fg = neutral_fg;
    "@symbol".fg = neutral_fg;

    # Labels
    "@label".fg = neutral_fg;

    # Diff (Version Control)
    # "@diff.plus" = { fg = neutral_fg; bg = p.diff_add; };
    # "@diff.minus" = { fg = neutral_fg; bg = p.diff_delete; };
    # "@diff.delta" = { fg = neutral_fg; bg = p.diff_modified; };

    # Special Captures
    "@none" = {
      fg = "NONE";
      bg = "NONE";
    }; # Disable highlighting
    "@conceal".fg = neutral_fg; # Concealed text
    "@spell" = { }; # Enable spell checking
    "@nospell" = { }; # Disable spell checking

    # == LSP Semantic Token Support == #
    "@lsp.type.class".fg = class_fg;
    "@lsp.type.struct".fg = neutral_fg;
    "@lsp.type.enum".fg = neutral_fg;
    "@lsp.type.enumMember".fg = neutral_fg;
    "@lsp.type.interface".fg = neutral_fg;
    "@lsp.type.typeParameter".fg = neutral_fg;
    "@lsp.type.namespace".fg = neutral_fg;
    "@lsp.type.parameter".fg = variable_fg;
    "@lsp.type.variable".fg = variable_fg;
    "@lsp.type.property".fg = property_fg;
    "@lsp.type.function".fg = function_fg;
    "@lsp.type.method".fg = method_fg;
    "@lsp.type.macro".fg = neutral_fg;
    "@lsp.type.decorator".fg = neutral_fg;
    # 'this' keyword handling (multiple semantic token types)
    # NOTE: For changes to take effect; reload with :colorscheme darcula
    # or restart Neovim and ensure LSP is reloaded
    "@lsp.type.selfKeyword" = {
      fg = neutral_fg;
      italic = true;
    }; # 'this' in TypeScript/JavaScript
    "@lsp.type.selfParameter" = {
      fg = neutral_fg;
      italic = true;
    }; # 'this' as parameter

    # Angular/React component handling
    "@lsp.type.component".fg = neutral_fg; # Angular/React components
    "@lsp.type.customElement".fg = neutral_fg; # Web components

    "@lsp.mod.deprecated".strikethrough = true;
    "@lsp.mod.readonly".italic = true;
    "@lsp.mod.static".italic = true;
    "@lsp.mod.abstract".italic = true;
    "@lsp.mod.async" = { };
    "@lsp.mod.declaration".fg = neutral_fg;
    "@lsp.mod.defaultLibrary".italic = true;
    "@lsp.mod.definition" = { };
    "@lsp.mod.modification" = { };
    "@lsp.mod.documentation" = { };

    "@lsp.typemod.function.declaration.typescriptreact".fg = function_fg;
    "@lsp.typemod.variable.declaration.typescriptreact".fg = variable_fg;
    "@lsp.typemod.type.declaration.typescriptreact".fg = type_fg;
    "@lsp.mod.local.typescriptreact".fg = variable_fg;

    DiagnosticUnnecessary = {
      fg = punctuation_fg;
      italic = true;
    };

    TelescopeBorder.fg = color "06";
    TelescopePromptBorder.fg = color "06";
    TelescopeResultsBorder.fg = color "06";
    TelescopePreviewBorder.fg = color "06";
    TelescopePromptPrefix.bg = "none";
    TelescopePromptNormal.bg = "none";
    TelescopeNormal.bg = "none";
    TelescopeResultsTitle.fg = color "06";

    BafaModified.fg = neutral_fg;
    BafaDeleted.fg = color "08";

    Indent.fg = color "01";
    IndentScope.fg = color "02";

    Red.fg = "#ed333b";
    StatusLine.bg = "none";

    # YaziBufferHovered.bg = "none";
    # YaziBufferHoveredInSameDirectory.bg = "none";
  };
}
