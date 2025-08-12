{
	services.zapret = {
		enable = false;

		params = [
			"--dpi-desync=syndata,fake,split2"
			"--dpi-desync-fooling=md5sig"
			"--dpi-desync-repeats=6"
		];
	};
}
