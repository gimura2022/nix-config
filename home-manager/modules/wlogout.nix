{
	programs.wlogout = {
		enable = true;

		layout = [
			{
				label = "poweroff";
				action = "systemctl poweroff";
				text = "poweroff";
				keybind = "p";
			}
			{
				label = "reboot";
				action = "systemctl reboot";
				text = "reboot";
				keybind = "r";
			}
		];
	};
}
