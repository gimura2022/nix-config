{
  programs.wofi = {
    enable = true;

    style = ''
      			* {
      				border-radius: 0;
      				border-color: transparent;
      				color: #bac2de;
      	      font-family: CaskaydiaCove Nerd Font;
      			}

      			#window, #input {
      				background: #1e1e2e;
      			}

      			#input {
      				font-style: italic;
      				font-weight: bold;
      			}

      			#scroll {
      				scroll-behavior: smooth;
      			}

      			#entry {
      				margin: 5px 10px 5px;
      				transition: all 0.1s ease-out;
      			}

      			.entry {
      				padding: 3px;
      			}

      			#entry:selected {
      				background: #fab387;
              color: #313244;
      				border-color: 0;
      				font-style: italic;
      				font-weight: bold;
      			}
      		'';
  };
}
