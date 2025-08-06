{ pkgs, ... }: {
	systemd.user.services.hyprland-service = {
		enable = true;
		wantedBy = [ "default.target" ];

		serviceConfig = {
			ExecStart = "${pkgs.hyprland}/bin/Hyprland";
		};
	};
}
