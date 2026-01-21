{ pkgs, ... }:

{
  plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      astro
      bash
      cooklang
      css
      csv
      diff
      dockerfile
      gitignore
      html
      http
      java
      javadoc
      javascript
      jsdoc
      json
      json5
      jsonc
      jsonnet
      lua
      markdown
      markdown-inline
      markdown_inline
      nginx
      nix
      prisma
      pymanifest
      python
      qmldir
      qmljs
      ron
      scss
      sql
      svelte
      tsx
      typescript
      vue
      yaml
    ];

    settings = {
      highlight.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection   = "<A-o>";
          node_incremental = "<A-o>";
          node_decremental = "<A-i>";
        };
      };
    };
  };
}
