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

    style = ''
      			* {
      				font-size: 15px;
      				color: #e6e0ca;
      				border: none;
      			}

      			window {
      				background: rgba(98, 104, 128, 0.3);
      			}

      			button {
      				background: rgba(98, 104, 128, 0.6);
      				border-radius: 10px;
      				margin: 10px;
      			}

      			button.selected, button:hover {
      				border: none;
      				background: #e78284;
      			}
      		'';
  };
}
