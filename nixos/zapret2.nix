{
	services.zapert = {
		enable = true;
		whitelist = [
			.
		];
		params = [
			"--dpi-desync=fake,disorder2"
			"--dpi-desync-ttl=1"
			"--dpi-desync-autottl=2"
		];
	};
}
