


-- SECTION: theme

-- Base16 theme
require('base16-colorscheme').setup({["base00"] = "#2e2a31",
["base01"] = "#4a464d",
["base02"] = "#666369",
["base03"] = "#838085",
["base04"] = "#9f9da2",
["base05"] = "#bcbabe",
["base06"] = "#d8d7da",
["base07"] = "#f5f4f7",
["base08"] = "#ff5555",
["base09"] = "#ffb86c",
["base0A"] = "#f1fa8c",
["base0B"] = "#50fa7b",
["base0C"] = "#8be9fd",
["base0D"] = "#80bfff",
["base0E"] = "#ff79c6",
["base0F"] = "#bd93f9"})



-- SECTION: highlight
vim.api.nvim_set_hl(0, "@attribute", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@attribute.builtin", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@boolean", {["fg"] = "#50fa7b",
["italic"] = true})
vim.api.nvim_set_hl(0, "@character", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@character.special", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@comment", {["fg"] = "#ff79c6",
["italic"] = true})
vim.api.nvim_set_hl(0, "@comment.documentation", {["fg"] = "#ff79c6",
["italic"] = true})
vim.api.nvim_set_hl(0, "@comment.error", {["bold"] = true,
["fg"] = "#ff79c6"})
vim.api.nvim_set_hl(0, "@comment.note", {["bold"] = true,
["fg"] = "#ff79c6"})
vim.api.nvim_set_hl(0, "@comment.warning", {["bold"] = true,
["fg"] = "#ff79c6"})
vim.api.nvim_set_hl(0, "@conceal", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@conditional", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constant", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constant.builtin", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constant.html", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constant.macro", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constructor", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@constructor.html", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constructor.jsx", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@constructor.tsx", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@exception", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@field", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@float", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@function", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "@function.builtin", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "@function.call", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "@function.macro", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "@function.method", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@function.method.call", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@include", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.conditional", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.coroutine", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.debug", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.directive", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.directive.define", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.exception", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.function", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.import", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.modifier", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.operator", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.repeat", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.return", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@keyword.this", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@keyword.type", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@label", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.mod.abstract", {["italic"] = true})
vim.api.nvim_set_hl(0, "@lsp.mod.async", {})
vim.api.nvim_set_hl(0, "@lsp.mod.declaration", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.mod.defaultLibrary", {["italic"] = true})
vim.api.nvim_set_hl(0, "@lsp.mod.definition", {})
vim.api.nvim_set_hl(0, "@lsp.mod.deprecated", {["strikethrough"] = true})
vim.api.nvim_set_hl(0, "@lsp.mod.documentation", {})
vim.api.nvim_set_hl(0, "@lsp.mod.local.typescriptreact", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@lsp.mod.modification", {})
vim.api.nvim_set_hl(0, "@lsp.mod.readonly", {["italic"] = true})
vim.api.nvim_set_hl(0, "@lsp.mod.static", {["italic"] = true})
vim.api.nvim_set_hl(0, "@lsp.type.class", {["fg"] = "#80bfff"})
vim.api.nvim_set_hl(0, "@lsp.type.component", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.customElement", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.decorator", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.enum", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.function", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "@lsp.type.interface", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.macro", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.method", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.namespace", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.parameter", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@lsp.type.property", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@lsp.type.selfParameter", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@lsp.type.struct", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@lsp.type.variable", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.declaration.typescriptreact", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "@lsp.typemod.type.declaration.typescriptreact", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.declaration.typescriptreact", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@markup.heading", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.heading.1", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.heading.2", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.heading.3", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.heading.4", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.heading.5", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.heading.6", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.italic", {["italic"] = true})
vim.api.nvim_set_hl(0, "@markup.link", {["fg"] = "#d8d7da",
["underline"] = true})
vim.api.nvim_set_hl(0, "@markup.link.label", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.link.url", {["fg"] = "#d8d7da",
["underline"] = true})
vim.api.nvim_set_hl(0, "@markup.list", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.list.checked", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.list.unchecked", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.math", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.quote", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@markup.raw", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.raw.block", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@markup.strikethrough", {["strikethrough"] = true})
vim.api.nvim_set_hl(0, "@markup.strong", {["bold"] = true})
vim.api.nvim_set_hl(0, "@markup.underline", {["underline"] = true})
vim.api.nvim_set_hl(0, "@method", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@method.call", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@module", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@module.builtin", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@namespace", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@none", {["bg"] = "NONE",
["fg"] = "NONE"})
vim.api.nvim_set_hl(0, "@nospell", {})
vim.api.nvim_set_hl(0, "@number", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@number.float", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@operator", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@property", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@punctuation.delimiter", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@punctuation.special", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@repeat", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@spell", {})
vim.api.nvim_set_hl(0, "@storageclass", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@string", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.documentation", {["fg"] = "#50fa7b",
["italic"] = true})
vim.api.nvim_set_hl(0, "@string.escape", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.html", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@string.regex", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.regexp", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.special", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.special.path", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.special.symbol", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "@string.special.url", {["fg"] = "#50fa7b",
["underline"] = true})
vim.api.nvim_set_hl(0, "@string.xml", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@symbol", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@tag", {["fg"] = "#f1fa8c"})
vim.api.nvim_set_hl(0, "@tag.attribute", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@tag.attribute.html", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@tag.attribute.jsx", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@tag.attribute.tsx", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@tag.attribute.xml", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@tag.builtin", {["fg"] = "#f1fa8c"})
vim.api.nvim_set_hl(0, "@tag.component", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@tag.custom", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@tag.delimiter", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@tag.delimiter.html", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@tag.delimiter.xml", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "@tag.html", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@tag.jsx", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@tag.tsx", {["fg"] = "#f1fa8c"})
vim.api.nvim_set_hl(0, "@tag.xml", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@text", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@text.emphasis", {["italic"] = true})
vim.api.nvim_set_hl(0, "@text.html", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@text.literal", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@text.reference", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@text.strike", {["strikethrough"] = true})
vim.api.nvim_set_hl(0, "@text.strong", {["bold"] = true})
vim.api.nvim_set_hl(0, "@text.title", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@text.underline", {["underline"] = true})
vim.api.nvim_set_hl(0, "@text.uri", {["fg"] = "#d8d7da",
["underline"] = true})
vim.api.nvim_set_hl(0, "@type", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "@type.builtin", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "@type.definition", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "@type.html", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "@type.qualifier", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "@type.tsx", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@variable", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@variable.builtin", {["fg"] = "#bd93f9",
["italic"] = true})
vim.api.nvim_set_hl(0, "@variable.builtin.this", {["fg"] = "#bd93f9",
["italic"] = true})
vim.api.nvim_set_hl(0, "@variable.language", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@variable.language.this", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@variable.member", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "@variable.parameter", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "@variable.parameter.builtin", {["fg"] = "#bd93f9",
["italic"] = true})
vim.api.nvim_set_hl(0, "@variable.tsx", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "BafaDeleted", {["fg"] = "#ff5555"})
vim.api.nvim_set_hl(0, "BafaModified", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "BlinkCmpDoc", {["link"] = "NormalFloat"})
vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", {["link"] = "FloatBorder"})
vim.api.nvim_set_hl(0, "BlinkCmpKind", {["fg"] = "#80bfff"})
vim.api.nvim_set_hl(0, "BlinkCmpKindClass", {["fg"] = "#80bfff"})
vim.api.nvim_set_hl(0, "BlinkCmpKindColor", {["fg"] = "#ff79c6"})
vim.api.nvim_set_hl(0, "BlinkCmpKindConstant", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindConstructor", {["fg"] = "#80bfff"})
vim.api.nvim_set_hl(0, "BlinkCmpKindEnum", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "BlinkCmpKindEnumMember", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "BlinkCmpKindEvent", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "BlinkCmpKindField", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "BlinkCmpKindFile", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindFolder", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", {["fg"] = "#8be9fd"})
vim.api.nvim_set_hl(0, "BlinkCmpKindInterface", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", {["fg"] = "#ff79c6"})
vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "BlinkCmpKindModule", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "BlinkCmpKindOperator", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindProperty", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "BlinkCmpKindReference", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindSnippet", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "BlinkCmpKindStruct", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "BlinkCmpKindText", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindTypeParameter", {["fg"] = "#ffb86c"})
vim.api.nvim_set_hl(0, "BlinkCmpKindUnit", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindValue", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "BlinkCmpLabel", {["fg"] = "#9f9da2"})
vim.api.nvim_set_hl(0, "BlinkCmpLabelDeprecated", {["fg"] = "#666369",
["strikethrough"] = true})
vim.api.nvim_set_hl(0, "BlinkCmpLabelDescription", {["link"] = "PmenuExtra"})
vim.api.nvim_set_hl(0, "BlinkCmpLabelDetail", {["link"] = "PmenuExtra"})
vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", {["link"] = "PmenuMatch"})
vim.api.nvim_set_hl(0, "BlinkCmpMenu", {["link"] = "Pmenu"})
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", {["link"] = "FloatBorder"})
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {["bg"] = "#4a464d",
["bold"] = true})
vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", {["bg"] = "#4a464d"})
vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", {["bg"] = "#666369"})
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", {["link"] = "FloatBorder"})
vim.api.nvim_set_hl(0, "Boolean", {["fg"] = "#50fa7b",
["italic"] = true})
vim.api.nvim_set_hl(0, "Character", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "Comment", {["fg"] = "#ff79c6",
["italic"] = true})
vim.api.nvim_set_hl(0, "Conditional", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Constant", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Debug", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Define", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Delimiter", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {["fg"] = "#838085",
["italic"] = true})
vim.api.nvim_set_hl(0, "Exception", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Float", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "Function", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Identifier", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Include", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Indent", {["fg"] = "#4a464d"})
vim.api.nvim_set_hl(0, "IndentScope", {["fg"] = "#666369"})
vim.api.nvim_set_hl(0, "Keyword", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Macro", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Number", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "Operator", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "Pmenu", {["bg"] = "none",
["fg"] = "#9f9da2"})
vim.api.nvim_set_hl(0, "PmenuExtra", {["fg"] = "#666369"})
vim.api.nvim_set_hl(0, "PmenuExtraSel", {["bg"] = "#4a464d",
["bold"] = true,
["fg"] = "#666369"})
vim.api.nvim_set_hl(0, "PmenuMatch", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "PmenuMatchSel", {["bold"] = true})
vim.api.nvim_set_hl(0, "PmenuSbar", {["bg"] = "#4a464d"})
vim.api.nvim_set_hl(0, "PmenuSel", {["bg"] = "#4a464d",
["bold"] = true})
vim.api.nvim_set_hl(0, "PmenuThumb", {["bg"] = "#666369"})
vim.api.nvim_set_hl(0, "PreCondit", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "PreProc", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Red", {["fg"] = "#ed333b"})
vim.api.nvim_set_hl(0, "Repeat", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Special", {["fg"] = "#bd93f9"})
vim.api.nvim_set_hl(0, "SpecialChar", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "SpecialComment", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "Statement", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "StatusLine", {["bg"] = "none"})
vim.api.nvim_set_hl(0, "StorageClass", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "String", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "Structure", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Tag", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "TelescopeBorder", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "TelescopeNormal", {["bg"] = "none"})
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "TelescopePromptNormal", {["bg"] = "none"})
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {["bg"] = "none"})
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Type", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "Typedef", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlArg", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "htmlBold", {["bold"] = true})
vim.api.nvim_set_hl(0, "htmlComment", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "htmlCommentPart", {["fg"] = "#d8d7da",
["italic"] = true})
vim.api.nvim_set_hl(0, "htmlEndTag", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "htmlH1", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlH2", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlH3", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlH4", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlH5", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlH6", {["bold"] = true,
["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlItalic", {["italic"] = true})
vim.api.nvim_set_hl(0, "htmlLink", {["fg"] = "#d8d7da",
["underline"] = true})
vim.api.nvim_set_hl(0, "htmlSpecialChar", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlSpecialTagName", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "htmlString", {["fg"] = "#50fa7b"})
vim.api.nvim_set_hl(0, "htmlTag", {["fg"] = "#838085"})
vim.api.nvim_set_hl(0, "htmlTagN", {["fg"] = "#f1fa8c"})
vim.api.nvim_set_hl(0, "htmlTagName", {["fg"] = "#f1fa8c"})
vim.api.nvim_set_hl(0, "htmlTitle", {["fg"] = "#d8d7da"})
vim.api.nvim_set_hl(0, "javaScriptBraces", {["fg"] = "#838085"})


-- SECTION: globalsScript
vim.g.editorconfig = true
vim.g.mapleader = " "
vim.g.maplocalleader = ","


-- SECTION: basic






vim.o.smartcase = true
vim.o.ignorecase = true





-- SECTION: optionsScript
vim.o.autoindent = true
vim.o.backup = false
vim.o.cmdheight = 1
vim.o.cursorlineopt = "line"
vim.o.encoding = "utf-8"
vim.o.errorbells = false
vim.o.expandtab = true
vim.o.hidden = true
vim.o.mouse = "nvi"
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 5
vim.o.shiftwidth = 2
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.tm = 500
vim.o.undodir = vim.fn.stdpath('state') .. '/undo'
vim.o.undofile = true
vim.o.updatetime = 300
vim.o.visualbell = false
vim.o.wrap = false
vim.o.writebackup = false


-- SECTION: lazyConfigs
require('lz.n').load({{"blink-cmp",
["after"] = function()
  
  require("blink.cmp").setup({["cmdline"] = {["keymap"] = {["<C-Space>"] = {"show",
"fallback"},
["<C-d>"] = {"scroll_documentation_up",
"fallback"},
["<C-e>"] = {"hide",
"fallback"},
["<C-f>"] = {"scroll_documentation_down",
"fallback"},
["<S-Tab>"] = {"select_prev",
"fallback"},
["<Tab>"] = {"select_next",
"show",
"fallback"},
["preset"] = "none"}},
["completion"] = {["documentation"] = {["auto_show"] = true,
["auto_show_delay_ms"] = 200,
["window"] = {["border"] = "rounded"}},
["menu"] = {["auto_show"] = true,
["border"] = "rounded"}},
["fuzzy"] = {["implementation"] = "prefer_rust",
["prebuilt_binaries"] = {["download"] = false}},
["keymap"] = {["<C-Space>"] = {"show",
"fallback"},
["<C-d>"] = {"scroll_documentation_up",
"fallback"},
["<C-e>"] = {"hide",
"fallback"},
["<C-f>"] = {"scroll_documentation_down",
"fallback"},
["<CR>"] = {"accept",
"fallback"},
["<S-Tab>"] = {"select_prev",
"snippet_backward",
"fallback"},
["<Tab>"] = {"select_next",
"snippet_forward",
function(cmp)
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  has_words_before = col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil

  if has_words_before then
    return cmp.show()
  end
end
,
"fallback"},
["preset"] = "none"},
["signature"] = {["enabled"] = true,
["window"] = {["border"] = "rounded"}},
["snippets"] = {["preset"] = "luasnip"},
["sources"] = {["default"] = {"lsp",
"path",
"snippets",
"buffer",
"emoji"},
["providers"] = {["emoji"] = {["module"] = "blink-emoji",
["name"] = "emoji"}}}})
  

end
},
{"comment-nvim",
["after"] = function()
  
  require("Comment").setup({["mappings"] = {["basic"] = false,
["extra"] = false}})
  
end
,
["keys"] = {{"gc",
"<Plug>(comment_toggle_linewise)",
["desc"] = "Toggle line comment",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"gb",
"<Plug>(comment_toggle_blockwise)",
["desc"] = "Toggle block comment",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"gcc",
function()
  return vim.api.nvim_get_vvar('count') == 0 and '<Plug>(comment_toggle_linewise_current)'
          or '<Plug>(comment_toggle_linewise_count)'
end
,
["desc"] = "Toggle current line comment",
["expr"] = true,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"gbc",
function()
  return vim.api.nvim_get_vvar('count') == 0 and '<Plug>(comment_toggle_blockwise_current)'
          or '<Plug>(comment_toggle_blockwise_count)'
end
,
["desc"] = "Toggle current block comment",
["expr"] = true,
["mode"] = {"n"},
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"gc",
"<Plug>(comment_toggle_linewise_visual)",
["desc"] = "Toggle selected comment",
["expr"] = false,
["mode"] = "x",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"gb",
"<Plug>(comment_toggle_blockwise_visual)",
["desc"] = "Toggle selected block",
["expr"] = false,
["mode"] = "x",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false}}},
{"fzf-lua",
["after"] = function()
  
  require("fzf-lua").setup({"default",
["fzf_bin"] = "/nix/store/bw12xvv5brgqz5j1nm58jhfyxsqyi7sz-fzf-0.67.0/bin/fzf",
["fzf_colors"] = {["bg+"] = "#1d1d1d",
["pointer"] = "#ed333b",
["prompt"] = "#ed333b"},
["winopts"] = {["border"] = "rounded"}})
  
end
,
["cmd"] = {"FzfLua"}},
{"luasnip",
["after"] = function()
  
  require("luasnip").setup({["enable_autosnippets"] = false})
  


end
,
["lazy"] = true},
{"trouble",
["after"] = function()
  
  require("trouble").setup({})
  
end
,
["cmd"] = "Trouble",
["keys"] = {{"<leader>lwd",
"<cmd>Trouble toggle diagnostics<CR>",
["desc"] = "Workspace diagnostics [trouble]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<leader>ld",
"<cmd>Trouble toggle diagnostics filter.buf=0<CR>",
["desc"] = "Document diagnostics [trouble]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<leader>lr",
"<cmd>Trouble toggle lsp_references<CR>",
["desc"] = "LSP References [trouble]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<leader>xq",
"<cmd>Trouble toggle quickfix<CR>",
["desc"] = "QuickFix [trouble]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<leader>xl",
"<cmd>Trouble toggle loclist<CR>",
["desc"] = "LOCList [trouble]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<leader>xs",
"<cmd>Trouble toggle symbols<CR>",
["desc"] = "Symbols [trouble]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false}}},
{"yazi.nvim",
["after"] = function()
  
  require("yazi").setup({["open_for_directories"] = false})
  
end
,
["event"] = {"BufAdd",
"VimEnter"},
["keys"] = {{"<leader>e",
"<cmd>Yazi<CR>",
["desc"] = "Open yazi at the current file [yazi.nvim]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<leader>cw",
"<cmd>Yazi cwd<CR>",
["desc"] = "Open the file manager in nvim's working directory [yazi.nvim]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false},
{"<c-up>",
"<cmd>Yazi toggle<CR>",
["desc"] = "Resume the last yazi session [yazi.nvim]",
["expr"] = false,
["mode"] = "n",
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false}}}})
require('lzn-auto-require').enable()


-- SECTION: pluginConfigs
-- SECTION: alpha
require('alpha').setup({["layout"] = {{["type"] = "padding",
["val"] = 10},
{["opts"] = {["hl"] = "Red",
["position"] = "center"},
["type"] = "text",
["val"] = {"               ███             ",
"              ████             ",
"              ████             ",
"              ████             ",
"              ████             ",
"              ████             ",
"              ████             ",
"              ████             ",
"    ████████████████████████   ",
"  █████████████████████████████",
"              ████             ",
"              ████             ",
"              ████             ",
"              ████             ",
"███████████████████████████████",
" ████████████████████████████  "}},
{["type"] = "padding",
["val"] = 10}},
["opts"] = {}})


-- SECTION: autopairs
require('nvim-autopairs').setup({})


-- SECTION: conform-nvim
require("conform").setup({["default_format_opts"] = {["lsp_format"] = "fallback"},
["format_after_save"] = function()
  if not vim.g.formatsave or vim.b.disableFormatSave then
    return
  else
    return {["lsp_format"] = "fallback"}
  end
end
,
["format_on_save"] = function()
  if not vim.g.formatsave or vim.b.disableFormatSave then
    return
  else
    return {lsp_format = "fallback", timeout_ms = 500}
  end
end
,
["formatters"] = {["deno_fmt"] = {["command"] = "/nix/store/x6x2hyvwc3llyiaj5p2hcycgnjlrjqpn-deno-2.5.6/bin/deno"},
["nixfmt"] = {["command"] = "/nix/store/xh5fjq83a8bbdvalxl2b30mk0qn2ja5v-nixfmt-1.1.0/bin/nixfmt"},
["prettier"] = {["command"] = "/nix/store/xvyingm0y1db9y2i9lfjfgjrbps1pq4j-prettier-3.6.2/bin/prettier"},
["rustfmt"] = {["command"] = "/nix/store/ah9sslqrl111k74wxd5mdjswza9zvwv6-rustfmt-1.91.1/bin/rustfmt"},
["shfmt"] = {["command"] = "/nix/store/18mm0chrbxs53rgn0l1cbsjhb77ds3m2-shfmt-3.12.0/bin/shfmt"}},
["formatters_by_ft"] = {["css"] = {"prettier"},
["javascript"] = {"biome",
"prettier"},
["markdown"] = {"deno_fmt"},
["nix"] = {"nixfmt"},
["rust"] = {"rustfmt"},
["sh"] = {"shfmt"},
["typescript"] = {"biome",
"prettier"},
["typescriptreact"] = {"biome",
"prettier"}},
["setupOpts"] = {["formatters"] = {["biome"] = {["command"] = "/nix/store/g5054ff2df6ac55kfsyw1wyv2k2d17ym-biome-2.3.6/bin/biome"},
["prettier"] = {["command"] = "/nix/store/xvyingm0y1db9y2i9lfjfgjrbps1pq4j-prettier-3.6.2/bin/prettier"}}}})


-- SECTION: lsp-setup
vim.g.formatsave = true;

local attach_keymaps = function(client, bufnr)
  vim.keymap.set('n', "<leader>lgD", vim.lsp.buf.declaration, {buffer=bufnr, noremap=true, silent=true, desc="Go to declaration"})
  vim.keymap.set('n', "<leader>lgd", vim.lsp.buf.definition, {buffer=bufnr, noremap=true, silent=true, desc="Go to definition"})
  vim.keymap.set('n', "<leader>lgt", vim.lsp.buf.type_definition, {buffer=bufnr, noremap=true, silent=true, desc="Go to type"})
  vim.keymap.set('n', "<leader>lgi", vim.lsp.buf.implementation, {buffer=bufnr, noremap=true, silent=true, desc="List implementations"})
  vim.keymap.set('n', "<leader>lgr", vim.lsp.buf.references, {buffer=bufnr, noremap=true, silent=true, desc="List references"})
  vim.keymap.set('n', "<leader>lgn", vim.diagnostic.goto_next, {buffer=bufnr, noremap=true, silent=true, desc="Go to next diagnostic"})
  vim.keymap.set('n', "<leader>lgp", vim.diagnostic.goto_prev, {buffer=bufnr, noremap=true, silent=true, desc="Go to previous diagnostic"})
  vim.keymap.set('n', "<leader>le", vim.diagnostic.open_float, {buffer=bufnr, noremap=true, silent=true, desc="Open diagnostic float"})
  vim.keymap.set('n', "<leader>lH", vim.lsp.buf.document_highlight, {buffer=bufnr, noremap=true, silent=true, desc="Document highlight"})
  vim.keymap.set('n', "<leader>lS", vim.lsp.buf.document_symbol, {buffer=bufnr, noremap=true, silent=true, desc="List document symbols"})
  vim.keymap.set('n', "<leader>lwa", vim.lsp.buf.add_workspace_folder, {buffer=bufnr, noremap=true, silent=true, desc="Add workspace folder"})
  vim.keymap.set('n', "<leader>lwr", vim.lsp.buf.remove_workspace_folder, {buffer=bufnr, noremap=true, silent=true, desc="Remove workspace folder"})
  vim.keymap.set('n', "<leader>lwl", function() vim.notify(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, {buffer=bufnr, noremap=true, silent=true, desc="List workspace folders"})
  vim.keymap.set('n', "<leader>lws", vim.lsp.buf.workspace_symbol, {buffer=bufnr, noremap=true, silent=true, desc="List workspace symbols"})
  vim.keymap.set('n', "<leader>lh", vim.lsp.buf.hover, {buffer=bufnr, noremap=true, silent=true, desc="Trigger hover"})
  vim.keymap.set('n', "<leader>ls", vim.lsp.buf.signature_help, {buffer=bufnr, noremap=true, silent=true, desc="Signature help"})
  vim.keymap.set('n', "<leader>ln", vim.lsp.buf.rename, {buffer=bufnr, noremap=true, silent=true, desc="Rename symbol"})
  vim.keymap.set('n', "<leader>la", vim.lsp.buf.code_action, {buffer=bufnr, noremap=true, silent=true, desc="Code action"})
  vim.keymap.set('n', "<leader>lf", vim.lsp.buf.format, {buffer=bufnr, noremap=true, silent=true, desc="Format"})
  vim.keymap.set('n', "<leader>ltf", function() vim.b.disableFormatSave = not vim.b.disableFormatSave end, {buffer=bufnr, noremap=true, silent=true, desc="Toggle format on save"})
end


default_on_attach = function(client, bufnr)
  attach_keymaps(client, bufnr)
  
end

local capabilities = vim.lsp.protocol.make_client_capabilities()


capabilities = require('blink.cmp').get_lsp_capabilities()



-- SECTION: lualine
local lualine = require('lualine')
lualine.setup {["extensions"] = {},
["inactive_sections"] = {["lualine_a"] = {},
["lualine_b"] = {},
["lualine_c"] = {},
["lualine_x"] = {},
["lualine_y"] = {},
["lualine_z"] = {}},
["options"] = {["always_divide_middle"] = true,
["component_separators"] = {["left"] = "",
["right"] = ""},
["globalstatus"] = false,
["icons_enabled"] = true,
["refresh"] = {["statusline"] = 1000,
["tabline"] = 1000,
["winbar"] = 1000},
["section_separators"] = {["left"] = "",
["right"] = ""},
["theme"] = {["command"] = {["a"] = {["bg"] = "#ffb86c",
["fg"] = "#4a464d"}},
["insert"] = {["a"] = {["bg"] = "#50fa7b",
["fg"] = "#4a464d"}},
["normal"] = {["a"] = {["bg"] = "#ed333b",
["fg"] = "#bcbabe"},
["b"] = {["bg"] = "#4a464d",
["fg"] = "#bcbabe"},
["c"] = {["bg"] = "none"}},
["visual"] = {["a"] = {["bg"] = "#ff79c6",
["fg"] = "#4a464d"}}}},
["sections"] = {["lualine_a"] = {{ "mode" }},
["lualine_b"] = {{ "filename", file_status = true, symbols = {modified = '',readonly = '',unnamed = '',newfile = ''}}},
["lualine_c"] = {},
["lualine_x"] = {},
["lualine_y"] = {{ "branch", icon = '', }},
["lualine_z"] = {{ "location" }}}}


-- SECTION: mini-jump2d
require("mini.jump2d").setup({})


-- SECTION: mini-move
require("mini.move").setup({["mappings"] = {["down"] = "<M-down>",
["left"] = "<M-left>",
["right"] = "<M-right>",
["up"] = "<M-up>"}})


-- SECTION: mini-operators
require("mini.operators").setup({})


-- SECTION: mini-splitjoin
require("mini.splitjoin").setup({})


-- SECTION: mini-surround
require("mini.surround").setup({})


-- SECTION: noice-nvim
require("noice").setup({["cmdline"] = {["view"] = "cmdline"},
["format"] = {["cmdline"] = {["icon"] = "",
["lang"] = "vim",
["pattern"] = "^:"},
["filter"] = {["icon"] = "",
["lang"] = "bash",
["pattern"] = "^:%s*!"},
["help"] = {["icon"] = "󰋖",
["pattern"] = "^:%s*he?l?p?%s+"},
["lua"] = {["icon"] = "",
["lang"] = "lua",
["pattern"] = "^:%s*lua%s+"},
["search_down"] = {["icon"] = " ",
["kind"] = "search",
["lang"] = "regex",
["pattern"] = "^/"},
["search_up"] = {["icon"] = " ",
["kind"] = "search",
["lang"] = "regex",
["pattern"] = "^%?"}},
["lsp"] = {["override"] = {["cmp.entry.get_documentation"] = false,
["vim.lsp.util.convert_input_to_markdown_lines"] = true,
["vim.lsp.util.stylize_markdown"] = true},
["signature"] = {["enabled"] = false}},
["presets"] = {["bottom_search"] = true,
["command_palette"] = true,
["inc_rename"] = false,
["long_message_to_split"] = true,
["lsp_doc_border"] = true},
["routes"] = {{["filter"] = {["event"] = "msg_show",
["find"] = "written",
["kind"] = ""},
["opts"] = {["skip"] = true}}}})


-- SECTION: nvim-highlight-colors
require('nvim-highlight-colors').setup({["render"] = "background",
["virtual_symbol_position"] = "inline"})


-- SECTION: nvim-lint
require("lint").linters_by_ft = {["kotlin"] = {"ktlint"},
["markdown"] = {"markdownlint-cli2"},
["nix"] = {"statix",
"deadnix"},
["sh"] = {"shellcheck"},
["typescript"] = {"eslint_d"},
["typescriptreact"] = {"eslint_d"}}

local linters = require("lint").linters
local nvf_linters = {["deadnix"] = {["cmd"] = "/nix/store/zy3xwpryidfb7x1zbylm1w3x0hhfa73d-deadnix-1.3.1/bin/deadnix"},
["eslint_d"] = {["cmd"] = "/nix/store/ccdfv32ypw88h3ihhavbzszkzxhgx4ks-eslint_d-14.3.0/bin/eslint_d",
["required_files"] = {"eslint.config.js",
"eslint.config.mjs",
".eslintrc",
".eslintrc.cjs",
".eslintrc.json",
".eslintrc.js",
".eslintrc.yml"}},
["ktlint"] = {["cmd"] = "/nix/store/69i4x8nfdwlqka5a24nhahwrja0nh630-ktlint-1.7.1/bin/ktlint"},
["markdownlint-cli2"] = {["cmd"] = "/nix/store/h2s8byfi9wdnvl9jnzc2iirk3si7gwnx-markdownlint-cli2-0.18.1/bin/markdownlint-cli2"},
["shellcheck"] = {["cmd"] = "/nix/store/6nlfprmaac6r95sz7lgz2j3ikrni2ng2-shellcheck-0.11.0-bin/bin/shellcheck"},
["statix"] = {["cmd"] = "/nix/store/p8wg938ivnay43jkn3g97p0ypbg921fw-statix-0.5.8/bin/statix"}}
for linter, config in pairs(nvf_linters) do
  if linters[linter] == nil then
    linters[linter] = config
  else
    for key, val in pairs(config) do
      linters[linter][key] = val
    end
  end
end

nvf_lint = function(buf)
  local ft = vim.api.nvim_get_option_value("filetype", { buf = buf })
  local linters = require("lint").linters
  local linters_from_ft = require("lint").linters_by_ft[ft]

  -- if no linter is configured for this filetype, stops linting
  if linters_from_ft == nil then return end

  for _, name in ipairs(linters_from_ft) do
    local linter = linters[name]
    assert(linter, 'Linter with name `' .. name .. '` not available')

    if type(linter) == "function" then
      linter = linter()
    end
    -- for require("lint").lint() to work, linter.name must be set
    linter.name = linter.name or name
    local cwd = linter.required_files

    -- if no configuration files are configured, lint
    if cwd == nil then
      require("lint").lint(linter)
    else
      -- if configuration files are configured and present in the project, lint
      for _, fn in ipairs(cwd) do
        local path = vim.fs.joinpath(linter.cwd or vim.fn.getcwd(), fn);
        if vim.uv.fs_stat(path) then
          require("lint").lint(linter)
          break
        end
      end
    end
  end
end



-- SECTION: otter-nvim
-- Enable otter diagnostics viewer
require("otter").setup({["buffers"] = {["write_to_disk"] = false},
["handle_leading_whitespace"] = false,
["lsp"] = {["diagnostic_update_event"] = {"BufWritePost"}},
["strip_wrapping_quote_characters"] = {"'",
"\"",
"`"}})


-- SECTION: render-markdown-nvim
require("render-markdown").setup({})


-- SECTION: rustaceanvim
vim.g.rustaceanvim = {
-- LSP
tools = {
  hover_actions = {
    replace_builtin_hover = false
  },
},
server = {
  cmd = {"/nix/store/ycbpvrhf7zh1r4hzkm1dzy2adkkzrngq-rust-analyzer-2025-10-28/bin/rust-analyzer"},
  default_settings = {
    
  },
  on_attach = function(client, bufnr)
    default_on_attach(client, bufnr)
    local opts = { noremap=true, silent=true, buffer = bufnr }
    vim.keymap.set("n", "<localleader>rr", ":RustLsp runnables<CR>", opts)
    vim.keymap.set("n", "<localleader>rp", ":RustLsp parentModule<CR>", opts)
    vim.keymap.set("n", "<localleader>rm", ":RustLsp expandMacro<CR>", opts)
    vim.keymap.set("n", "<localleader>rc", ":RustLsp openCargo", opts)
    vim.keymap.set("n", "<localleader>rg", ":RustLsp crateGraph x11", opts)
    
  end
},


  
}


-- SECTION: treesitter
require('nvim-treesitter.configs').setup {
  -- Disable imperative treesitter options that would attempt to fetch
  -- grammars into the read-only Nix store. To add additional grammars here
  -- you must use the `config.vim.treesitter.grammars` option.
  auto_install = false,
  sync_install = false,
  ensure_installed = {},

  -- Indentation module for Treesitter
  indent = {
    enable = true,
    disable = {},
  },

  -- Highlight module for Treesitter
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  -- Indentation module for Treesitter
  -- Keymaps are set to false here as they are
  -- handled by `vim.maps` entries calling lua
  -- functions achieving the same functionality.
  incremental_selection = {
    enable = true,
    disable = {},
    keymaps = {
      init_selection = false,
      node_incremental = false,
      scope_incremental = false,
      node_decremental = false,

    },
  },
}


-- SECTION: ts-error-translator
require("ts-error-translator").setup({["auto_override_publish_diagnostics"] = true})


-- SECTION: whichkey
local wk = require("which-key")
wk.setup ({["notify"] = true,
["preset"] = "helix",
["replace"] = {["<cr>"] = "RETURN",
["<leader>"] = "SPACE",
["<space>"] = "SPACE",
["<tab>"] = "TAB"},
["win"] = {["border"] = "rounded"}})
wk.add({{{ '<leader>lw', desc = '+Workspace' }},
{{ '<leader>x', desc = '+Trouble' }}})




-- SECTION: augroups
local nvf_autogroups = {}
for _, group in ipairs({{["clear"] = true,
["enable"] = true,
["name"] = "nvf_nvim_lint"},
{["clear"] = true,
["enable"] = true,
["name"] = "nvf_lazy_file_hooks"},
{["clear"] = true,
["enable"] = true,
["name"] = "nvf_lsp"}}) do
  if group.name then
    nvf_autogroups[group.name] = { clear = group.clear }
  end
end

for group_name, options in pairs(nvf_autogroups) do
  vim.api.nvim_create_augroup(group_name, options)
end


-- SECTION: autocmds
local nvf_autocommands = {{["callback"] = function(args)
  nvf_lint(args.buf)
end
,
["enable"] = true,
["event"] = {"BufWritePost"},
["nested"] = false,
["once"] = false},
{["command"] = "doautocmd User LazyFile",
["enable"] = true,
["event"] = {"BufReadPost",
"BufNewFile",
"BufWritePre"},
["group"] = "nvf_lazy_file_hooks",
["nested"] = false,
["once"] = true},
{["callback"] = function(event)
  local bufnr = event.buf
  local client = vim.lsp.get_client_by_id(event.data.client_id)
  default_on_attach(client, bufnr)

  
end
,
["desc"] = "LSP on-attach add keybinds, enable inlay hints, and other plugin integrations",
["enable"] = true,
["event"] = {"LspAttach"},
["group"] = "nvf_lsp",
["nested"] = false,
["once"] = false}}
for _, autocmd in ipairs(nvf_autocommands) do
  vim.api.nvim_create_autocmd(
    autocmd.event,
    {
      group     = autocmd.group,
      pattern   = autocmd.pattern,
      buffer    = autocmd.buffer,
      desc      = autocmd.desc,
      callback  = autocmd.callback,
      command   = autocmd.command,
      once      = autocmd.once,
      nested    = autocmd.nested
    }
  )
end


-- SECTION: diagnostics
vim.diagnostic.config({["signs"] = false,
["underline"] = true,
["update_in_insert"] = true,
["virtual_lines"] = false,
["virtual_text"] = false})


-- SECTION: extraPluginConfigs
-- SECTION: actions-preview
require('actions-preview').setup({
          telescope = {
            sorting_strategy = 'ascending',
            layout_strategy = 'vertical',
            layout_config = {
              width = 0.8,
              height = 0.9,
              prompt_position = 'top',
              preview_cutoff = 20,
              preview_height = function(_, _, max_lines)
                return max_lines - 15
              end,
            },
          }
        })

-- SECTION: bafa
require('bafa').setup({
          method = 'last_used',
          sort = { focus_alternate_buffer = true },
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

-- SECTION: cheatsheet-nvim
require('cheatsheet').setup({
          bundled_cheatsheets = false,
          bundled_plugin_cheatsheets = false
        })

-- SECTION: tiny-inline-diagnostics
require('tiny-inline-diagnostic').setup({options = {multilines = {enabled = true, always_show = true, trim_whitespaces = true}}})

-- SECTION: transparent-nvim
require('transparent').setup({
          extra_groups = {
            'NormalFloat',
            'FloatBorder'
          }
        })

-- SECTION: ts-autotag
require('nvim-ts-autotag').setup()



-- SECTION: jdtls-util
local jdtls_handlers = require 'vim.lsp.handlers'

local jdtls_env = {
  HOME = vim.uv.os_homedir(),
  XDG_CACHE_HOME = os.getenv 'XDG_CACHE_HOME',
  JDTLS_JVM_ARGS = os.getenv 'JDTLS_JVM_ARGS',
}

local function get_cache_dir()
  return jdtls_env.XDG_CACHE_HOME and jdtls_env.XDG_CACHE_HOME or jdtls_env.HOME .. '/.cache'
end

local function get_jdtls_cache_dir()
  return get_cache_dir() .. '/jdtls'
end

local function get_jdtls_config_dir()
  return get_jdtls_cache_dir() .. '/config'
end

local function get_jdtls_workspace_dir()
  return get_jdtls_cache_dir() .. '/workspace'
end

local function get_jdtls_jvm_args()
  local args = {}
  for a in string.gmatch((jdtls_env.JDTLS_JVM_ARGS or ''), '%S+') do
    local arg = string.format('--jvm-arg=%s', a)
    table.insert(args, arg)
  end
  return unpack(args)
end

-- TextDocument version is reported as 0, override with nil so that
-- the client doesn't think the document is newer and refuses to update
-- See: https://github.com/eclipse/eclipse.jdt.ls/issues/1695
local function jdtls_fix_zero_version(workspace_edit)
  if workspace_edit and workspace_edit.documentChanges then
    for _, change in pairs(workspace_edit.documentChanges) do
      local text_document = change.textDocument
      if text_document and text_document.version and text_document.version == 0 then
        text_document.version = nil
      end
    end
  end
  return workspace_edit
end

local function jdtls_on_textdocument_codeaction(err, actions, ctx)
  for _, action in ipairs(actions) do
    -- TODO: (steelsojka) Handle more than one edit?
    if action.command == 'java.apply.workspaceEdit' then -- 'action' is Command in java format
      action.edit = jdtls_fix_zero_version(action.edit or action.arguments[1])
    elseif type(action.command) == 'table' and action.command.command == 'java.apply.workspaceEdit' then -- 'action' is CodeAction in java format
      action.edit = jdtls_fix_zero_version(action.edit or action.command.arguments[1])
    end
  end

  jdtls_handlers[ctx.method](err, actions, ctx)
end

local function jdtls_on_textdocument_rename(err, workspace_edit, ctx)
  jdtls_handlers[ctx.method](err, jdtls_fix_zero_version(workspace_edit), ctx)
end

local function jdtls_on_workspace_applyedit(err, workspace_edit, ctx)
  jdtls_handlers[ctx.method](err, jdtls_fix_zero_version(workspace_edit), ctx)
end

-- Non-standard notification that can be used to display progress
local function jdtls_on_language_status(_, result)
  local command = vim.api.nvim_command
  command 'echohl ModeMsg'
  command(string.format('echo "%s"', result.message))
  command 'echohl None'
end


-- SECTION: lsp-util
-- Port of nvim-lspconfig util
local util = { path = {} }

util.default_config = {
  log_level = vim.lsp.protocol.MessageType.Warning,
  message_level = vim.lsp.protocol.MessageType.Warning,
  settings = vim.empty_dict(),
  init_options = vim.empty_dict(),
  handlers = {},
  autostart = true,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
}

-- global on_setup hook
util.on_setup = nil

do
  local validate = vim.validate
  local api = vim.api
  local lsp = vim.lsp
  local nvim_eleven = vim.fn.has 'nvim-0.11' == 1

  local iswin = vim.uv.os_uname().version:match 'Windows'

  local function escape_wildcards(path)
    return path:gsub('([%[%]%?%*])', '\\%1')
  end

  local function is_fs_root(path)
    if iswin then
      return path:match '^%a:$'
    else
      return path == '/'
    end
  end

  local function traverse_parents(path, cb)
    path = vim.uv.fs_realpath(path)
    local dir = path
    -- Just in case our algo is buggy, don't infinite loop.
    for _ = 1, 100 do
      dir = vim.fs.dirname(dir)
      if not dir then
        return
      end
      -- If we can't ascend further, then stop looking.
      if cb(dir, path) then
        return dir, path
      end
      if is_fs_root(dir) then
        break
      end
    end
  end

  util.root_pattern = function(...)
    local patterns = util.tbl_flatten { ... }
    return function(startpath)
      startpath = util.strip_archive_subpath(startpath)
      for _, pattern in ipairs(patterns) do
        local match = util.search_ancestors(startpath, function(path)
          for _, p in ipairs(vim.fn.glob(table.concat({ escape_wildcards(path), pattern }, '/'), true, true)) do
            if vim.uv.fs_stat(p) then
              return path
            end
          end
        end)

        if match ~= nil then
          return match
        end
      end
    end
  end

  util.root_markers_with_field = function(root_files, new_names, field, fname)
    local path = vim.fn.fnamemodify(fname, ':h')
    local found = vim.fs.find(new_names, { path = path, upward = true })

    for _, f in ipairs(found or {}) do
      -- Match the given `field`.
      for line in io.lines(f) do
        if line:find(field) then
          root_files[#root_files + 1] = vim.fs.basename(f)
          break
        end
      end
    end

    return root_files
  end

  util.insert_package_json = function(root_files, field, fname)
    return util.root_markers_with_field(root_files, { 'package.json', 'package.json5' }, field, fname)
  end

  util.strip_archive_subpath = function(path)
    -- Matches regex from zip.vim / tar.vim
    path = vim.fn.substitute(path, 'zipfile://\\(.\\{-}\\)::[^\\\\].*$', '\\1', '')
    path = vim.fn.substitute(path, 'tarfile:\\(.\\{-}\\)::.*$', '\\1', '')
    return path
  end

  util.get_typescript_server_path = function(root_dir)
    local project_roots = vim.fs.find('node_modules', { path = root_dir, upward = true, limit = math.huge })
    for _, project_root in ipairs(project_roots) do
      local typescript_path = project_root .. '/typescript'
      local stat = vim.loop.fs_stat(typescript_path)
      if stat and stat.type == 'directory' then
        return typescript_path .. '/lib'
      end
    end
    return ''
  end

  util.search_ancestors = function(startpath, func)
    if nvim_eleven then
      validate('func', func, 'function')
    end
    if func(startpath) then
      return startpath
    end
    local guard = 100
    for path in vim.fs.parents(startpath) do
      -- Prevent infinite recursion if our algorithm breaks
      guard = guard - 1
      if guard == 0 then
        return
      end

      if func(path) then
        return path
      end
    end
  end

  util.path.is_descendant = function(root, path)
    if not path then
      return false
    end

    local function cb(dir, _)
      return dir == root
    end

    local dir, _ = traverse_parents(path, cb)

    return dir == root
  end

  util.tbl_flatten = function(t)
    --- @diagnostic disable-next-line:deprecated
    return nvim_eleven and vim.iter(t):flatten(math.huge):totable() or vim.tbl_flatten(t)
  end
end


-- SECTION: lsp-servers
-- Individual LSP configurations managed by nvf.
vim.lsp.config["*"] = {["capabilities"] = capabilities,
["enable"] = true}

vim.lsp.config["bash-ls"] = {["cmd"] = {"/nix/store/7yx2aj7z1gxy95bwy2k4ckwallryaavc-bash-language-server-5.6.0/bin/bash-language-server",
"start"},
["enable"] = true,
["filetypes"] = {"bash",
"sh"},
["root_markers"] = {".git"},
["settings"] = {["basheIde"] = {["globPattern"] = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)'}}}

vim.lsp.config["cssls"] = {["cmd"] = {"/nix/store/hz2xsxpki8sjn5ghri3saa4fvg7dp0f8-vscode-langservers-extracted-4.10.0/bin/vscode-css-language-server",
"--stdio"},
["enable"] = true,
["filetypes"] = {"vue",
"css",
"scss",
"less"},
["init_options"] = {["provideFormatter"] = true},
["root_markers"] = {".git",
"package.json"},
["settings"] = {["css"] = {["validate"] = true},
["less"] = {["validate"] = true},
["scss"] = {["validate"] = true}}}

vim.lsp.config["emmet_ls"] = {["enable"] = true}

vim.lsp.config["jdtls"] = {["cmd"] = {
  '/nix/store/c95ngf61wyqbxkvi7m4cxxc50cg36x9p-jdt-language-server-1.52.0/bin/jdtls',
  '-configuration',
  get_jdtls_config_dir(),
  '-data',
  get_jdtls_workspace_dir(),
  get_jdtls_jvm_args(),
}
,
["enable"] = true,
["filetypes"] = {"java"},
["handlers"] = {["language/status"] = vim.schedule_wrap(jdtls_on_language_status),
["textDocument/codeAction"] = jdtls_on_textdocument_codeaction,
["textDocument/rename"] = jdtls_on_textdocument_rename,
["workspace/applyEdit"] = jdtls_on_workspace_applyedit},
["init_options"] = {["jvm_args"] = {},
["os_config"] = nil,
["workspace"] = get_jdtls_workspace_dir()},
["root_markers"] = {".git",
"build.gradle",
"build.gradle.kts",
"build.xml",
"pom.xml",
"settings.gradle",
"settings.gradle.kts"}}

vim.lsp.config["kotlin-language-server"] = {["cmd"] = {"/nix/store/cg9wa41y8hrdq3n6cb40j1capfdc4f1n-kotlin-language-server-1.3.13/bin/kotlin-language-server"},
["enable"] = true,
["filetypes"] = {"kotlin"},
["init_options"] = {["storagePath"] = 
        vim.fs.root(vim.fn.expand '%:p:h',
          {
            'settings.gradle', -- Gradle (multi-project)
            'settings.gradle.kts', -- Gradle (multi-project)
            'build.xml', -- Ant
            'pom.xml', -- Maven
            'build.gradle', -- Gradle
            'build.gradle.kts', -- Gradle
          }
        )},
["root_markers"] = {"settings.gradle",
"settings.gradle.kts",
"build.xml",
"pom.xml",
"build.gradle",
"build.gradle.kts"}}

vim.lsp.config["marksman"] = {["cmd"] = {"/nix/store/c1zv3z94kvwg49lqym3ajp6sbk4xiya6-marksman-2024-12-18/bin/marksman",
"server"},
["enable"] = true,
["filetypes"] = {"markdown",
"markdown.mdx"},
["root_markers"] = {".marksman.toml",
".git"}}

vim.lsp.config["nixd"] = {["cmd"] = {"/nix/store/lb96pbjc0j539nsz1wj3kwdkhr6cj8l9-nixd-2.7.0/bin/nixd"},
["enable"] = true,
["filetypes"] = {"nix"},
["root_markers"] = {".git",
"flake.nix"},
["settings"] = {["nixd"] = {["formatting"] = {["command"] = {"nixfmt"}},
["nixpkgs"] = {["expr"] = "import <nixpkgs> { }"},
["options"] = {["home_manager"] = {["expr"] = "(builtins.getFlake \"/home/feyli/dotfiles\").nixosConfigurations.nixos.options.home-manager.users.type.getSubOptions []"},
["nixvim"] = {["expr"] = "(builtins.getFlake \"/home/feyli/dotfiles\").nixosConfigurations.nixos.options.programs.nixvim.type.getSubOptions []"}}}}}

vim.lsp.config["ts_ls"] = {["capabilities"] = capabilities,
["cmd"] = {"/nix/store/1pqi2vvq4mil843jbq66cdwcqnmlqzhp-typescript-language-server-5.1.3/bin/typescript-language-server",
"--stdio"},
["enable"] = true,
["filetypes"] = {"typescript",
"javascript",
"javascriptreact",
"typescriptreact",
"vue",
"javascript",
"javascriptreact",
"javascript.jsx",
"typescript",
"typescriptreact",
"typescript.tsx"},
["handlers"] = {["_typescript.rename"] = function(_, result, ctx)
  local client = assert(vim.lsp.get_client_by_id(ctx.client_id))
  vim.lsp.util.show_document({
    uri = result.textDocument.uri,
    range = {
      start = result.position,
      ['end'] = result.position,
    },
  }, client.offset_encoding)
  vim.lsp.buf.rename()
  return vim.NIL
end
},
["init_options"] = {["hostInfo"] = "neovim",
["plugins"] = {{["configNamespace"] = "typescript",
["languages"] = {"vue"},
["location"] = "/nix/store/kc7rjhwr7s8mzsafr3q0b8r7mrsf3b7x-vue-language-server-3.1.4/lib/language-tools/packages/language-server",
["name"] = "@vue/typescript-plugin"}}},
["on_attach"] = function(client, bufnr)
  -- ts_ls provides `source.*` code actions that apply to the whole file. These only appear in
  -- `vim.lsp.buf.code_action()` if specified in `context.only`.
  vim.api.nvim_buf_create_user_command(0, 'LspTypescriptSourceAction', function()
    local source_actions = vim.tbl_filter(function(action)
      return vim.startswith(action, 'source.')
    end, client.server_capabilities.codeActionProvider.codeActionKinds)

    vim.lsp.buf.code_action({
      context = {
        only = source_actions,
      },
    })
  end, {})
end
,
["root_markers"] = {"tsconfig.json",
"jsconfig.json",
"package.json",
".git"}}



-- Enable configured LSPs explicitly
vim.lsp.enable({"bash-ls",
"cssls",
"emmet_ls",
"jdtls",
"kotlin-language-server",
"marksman",
"nixd",
"ts_ls"})


-- SECTION: mappings
vim.keymap.set({"n"}, "<A-o>", ":lua require('nvim-treesitter.incremental_selection').init_selection()<CR>", {["desc"] = "Init selection [treesitter]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n"}, "<leader>lo", "<cmd>lua require'otter'.activate()<CR>", {["desc"] = "Activate LSP on Cursor Position [otter-nvim]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"x"}, "<A-O>", "<cmd>lua require('nvim-treesitter.incremental_selection').scope_incremental()<CR>", {["desc"] = "Increment selection by scope [treesitter]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"x"}, "<A-i>", "<cmd>lua require('nvim-treesitter.incremental_selection').node_decremental()<CR>", {["desc"] = "Decrement selection by node [treesitter]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"x"}, "<A-o>", "<cmd>lua require('nvim-treesitter.incremental_selection').node_incremental()<CR>", {["desc"] = "Increment selection by node [treesitter]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"i",
"x",
"n",
"s"}, "<C-s>", "<cmd>w<cr><esc>", {["desc"] = "Save File",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<C-q>", ":q<CR>", {["desc"] = "Quit Neovim",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>h", ":noh<CR>", {["desc"] = "Clear Selection",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"v"}, "ge", "G", {["desc"] = "Last line",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"v"}, "g<left>", "^", {["desc"] = "Start of line",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"v"}, "g<right>", "$", {["desc"] = "End of line",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"v"}, "vt", "ggVG", {["desc"] = "Select all",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "ga", "<cmd>lua require('actions-preview').code_actions()<CR>", {["desc"] = "Go to code actions",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader><tab>", "<cmd>lua require('bafa').toggle()<CR>", {["desc"] = "Open buffers",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "U", "<cmd>redo<CR>", {["desc"] = "Redo",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set({"n",
"v"}, "<leader>y", "\"+y", {["desc"] = "Copy to system clipboard",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("v", "<M-d>", "\"_d", {["desc"] = "Delete without yank",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<M-d>", "\"_dd", {["desc"] = "Delete line without yank",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>fd", "<cmd>FzfLua lsp_document_diagnostics<CR>", {["desc"] = "Diagnostics [fzf]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", {["desc"] = "Find files [fzf]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", {["desc"] = "Live grep [fzf]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>fi", "<cmd>FzfLua lsp_implementations<CR>", {["desc"] = "LSP Implementations [fzf]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua lsp_references<CR>", {["desc"] = "LSP References [fzf]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua builtin<CR>", {["desc"] = "Builtin [fzf]",
["expr"] = false,
["noremap"] = true,
["nowait"] = false,
["script"] = false,
["silent"] = true,
["unique"] = false})



