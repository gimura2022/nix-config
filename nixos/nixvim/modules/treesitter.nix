{ pkgs, ... }:
let
  treesitter-wesl-grammar = pkgs.tree-sitter.buildGrammar {
    language = "wesl";
    version = "0.0.0+rev=0bb9a60";
    src = pkgs.fetchFromGitHub {
      owner = "wgsl-tooling-wg";
      repo = "tree-sitter-wesl";
      rev = "3fa2b96bf5c217dae9bf663e2051fcdad0762c19";
      hash = "sha256-O3n65StgGhxfdwYF/QPBTdkXEGjY2ajHeLpF5JWuTc8=";
    };
  };
in
{
  plugins.treesitter = {
    enable = true;

    grammarPackages =
      with pkgs.vimPlugins.nvim-treesitter.builtGrammars;
      [
        bash
        lua
        markdown
        nix
        python

        html
        css
        scss
        javascript
        typescript
        svelte

        dockerfile
        json
        toml
        yaml

        vim
        vimdoc
        tmux
        regex

        gitcommit
        gitignore

        rust
        c
        haskell
        ocaml

        wgsl
      ]
      ++ [
        treesitter-wesl-grammar
      ];

    luaConfig.post = ''
      		do
      			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      			parser_config.wesl = {
      				install_info = {
      					url = "${treesitter-wesl-grammar}",
              				files = {"src/parser.c"},
      				},
      				filetype = "wesl",
      			}
              	end
      		'';

    settings = {
      indent.enable = true;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
    };
  };
}
