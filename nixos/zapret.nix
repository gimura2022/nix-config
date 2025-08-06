{
	services.zapret = {
		enable = true;

		params = [
			"--dpi-desync=syndata,fake,split2"
			"--dpi-desync-fooling=md5sig"
			"--dpi-desync-repeats=6"
		];
	};
}
