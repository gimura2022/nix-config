{
	programs.nixvim = {
		enable = true;

		defaultEditor = true;

		viAlias = true;
		vimAlias = true;

		opts = {
			number = true;
			relativenumber = true;

			shiftwidth = 8; 
		};

		colorschemes.catppuccin.enable = true;

		plugins.lualine.enable = true;
	};
}
