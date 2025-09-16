{
	plugins.lsp = {
		enable = true;

		servers = {
			clangd.enable = true;

			rust_analyzer = {
				enable = true;
				installCargo = true;
				installRustc = true;
			};

			hls = {
				enable = true;
				installGhc = true;
			};
		};
	};
}
