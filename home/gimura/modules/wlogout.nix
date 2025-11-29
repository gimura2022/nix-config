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
      				color: #bac2de;
              border-radius: 0;
              margin: 0;
              padding: 0;
              border-width: 3px;
      			}

      			window {
      				background: rgba(0.0, 0.0, 0.0, 0.7);
      			}

      			button {
      				background: #1e1e2e;
      				margin: 10px;
      			}

      			button.selected, button:hover {
      				background: #fab387;
              color: #313244;
      			}
      		'';
  };
}
