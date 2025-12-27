{
  #  lsp.inlayHints.enable = true;

  plugins.lsp = {
    enable = true;

    servers = {
      clangd.enable = true;
      ocamllsp.enable = true;
      ltex.enable = true;
      wgsl_analyzer.enable = true;

      nixd = {
        enable = true;
        settings.nixd = {
          formatting = {
            command = "nixfmt";
          };
        };
      };

      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;

        extraOptions.cargo.features = "all";
      };

      hls = {
        enable = true;
        installGhc = true;
      };

      glsl_analyzer = {
        enable = true;
        
        config = {
          filetypes = [ "glsl" "fsh" "vsh" ];
        };
      };
    };
  };
}
