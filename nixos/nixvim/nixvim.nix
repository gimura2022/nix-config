{
	programs.nixvim = {
		imports = [
			./modules/bundle.nix
		];

		enable = true;

		defaultEditor = true;

		viAlias = true;
		vimAlias = true;

		opts = {
			number = true;
			relativenumber = true;

			shiftwidth = 8; 

			clipboard = "unnamedplus";
		};

		keymaps = [
			{
				action = "<cmd>NvimTreeToggle<CR>";
				key = "<C-z>";
			}
		];
		
		clipboard.providers.wl-copy.enable = true;

		colorschemes.catppuccin.enable = true;

		plugins.lualine.enable = true;
		plugins.nvim-tree.enable = true;
		plugins.web-devicons.enable = true;
	};
}
