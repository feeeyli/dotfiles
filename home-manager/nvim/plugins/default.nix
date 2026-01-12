{ pkgs, lib, ... }:

{
  imports = [
    ./lualine.nix
    ./mini.nix
    ./alpha.nix
  ];

  programs.nvf.settings.vim = {
    # telescope.enable = true;
    fzf-lua = {
      enable = true;
      setupOpts.fzf_colors = {
        "bg+" = "#1d1d1d";
        pointer = "#ed333b";
        prompt = "#ed333b";
      };
    };
    binds.whichKey = {
      enable = true;
      setupOpts.preset = "helix";
    };
    autopairs.nvim-autopairs.enable = true;
    autocomplete = {
      blink-cmp = {
        enable = true;
        sourcePlugins.emoji.enable = true;
        setupOpts = {
          signature.enabled = true;
          completion = {
            menu = {
              border = "rounded";
            };
            documentation = {
              window = {
                border = "rounded";
              };
            };
          };
          signature = {
            window = {
              border = "rounded";
            };
          };
        };
      };
    };
    snippets.luasnip.enable = true;
    ui.nvim-highlight-colors.enable = true;

    ui.noice = {
      enable = true;
      setupOpts = {
        cmdline = {
          view = "cmdline";
        };
      };
    };

    treesitter = {
      autotagHtml = true;
      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        vue
        scss
        kotlin
      ];
      mappings.incrementalSelection = {
        init = "<A-o>";
        incrementByNode = "<A-o>";
        incrementByScope = "<A-O>";
        decrementByNode = "<A-i>";
      };
    };

    utility.yazi-nvim = {
      enable = true;
      mappings = {
        openYazi = "<leader>e";
      };
    };

    comments.comment-nvim = {
      enable = true;
      # mappings = {
      #   toggleSelectedLine = "<C-c>";
      # };
    };

    # visuals.fidget-nvim.enable = true;

    extraPlugins = with pkgs.vimPlugins; {
      ts-autotag = {
        package = nvim-ts-autotag;
        setup = "require('nvim-ts-autotag').setup()";
      };

      cheatsheet-nvim = {
        package = cheatsheet-nvim;
        setup = "require('cheatsheet').setup({
          bundled_cheatsheets = false,
          bundled_plugin_cheatsheets = false
        })";
      };
      tiny-inline-diagnostics = {
        package = tiny-inline-diagnostic-nvim;
        setup = "require('tiny-inline-diagnostic').setup({options = {multilines = {enabled = true, always_show = true, trim_whitespaces = true}}})";
      };
      transparent-nvim = {
        package = transparent-nvim;
        setup = "require('transparent').setup({
          extra_groups = {
            'NormalFloat',
            'FloatBorder'
          }
        })";
      };
      actions-preview = {
        package = actions-preview-nvim;
        setup = "require('actions-preview').setup({
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
        })";
      };
      bafa = {
        package = pkgs.vimUtils.buildVimPlugin {
          name = "bafa.nvim";
          src = pkgs.fetchFromGitHub {
            owner = "mistweaverco";
            repo = "bafa.nvim";
            rev = "7526f5fd61dba671c5fd571fb5351a031caf7b1a";
            sha256 = "sha256-K+KxhEVHru8K3IOByfIDe8ekTvdi9bcrAE4cHJLDFCE=";
          };
        };
        setup = "require('bafa').setup({
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
        })";
      };
    };
  };
}
