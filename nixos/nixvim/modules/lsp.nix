{
	plugins.lsp = {
		enable = true;

		servers = {
			clangd.enable = true;
			ocamllsp.enable = true;
			ltex.enable = true;

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
