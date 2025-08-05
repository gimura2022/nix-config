{ pkgs, ... }: {
	systemd.services.swww-daemon = {
		enable = true;

		serviceConfig = {
			ExecStart = "${pkgs.swww}/bin/swww-daemon";	
		};	
	};
}
