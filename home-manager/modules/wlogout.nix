{
	programs.wlogout = {
		enable = true;

		layout = [
			{
				label = "shutdown";
				action = "systemctl poweroff";
				text = "shutdown";
				keybind = "s";
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
