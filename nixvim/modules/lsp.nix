{
  lsp.inlayHints.enable = true;

  plugins.lsp = {
    enable = true;

    servers = {
      clangd.enable = true;
      ocamllsp.enable = true;
      ltex.enable = true;
      nixd = {
        enable = true;
        settings.nixd = {
          formatting = {
            command = "nixfmt";
          };
        };
      };
      wgsl_analyzer.enable = true;

      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };

      hls = {
        enable = true;
        installGhc = true;
      };
    };
  };
}
