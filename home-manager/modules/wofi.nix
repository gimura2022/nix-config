{
	programs.wofi = {
		enable = true;

		style = ''
			* {
				border-radius: 0;
				border-color: transparent;
				color: #e6e0ca;
			}

			#window, #input {
				background: rgba(98, 104, 128, 0.3);
			}

			#input {
				color: #e6e0ca;
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
				border-radius: 5px;
				background-color: #e78284;
				border-color: 0;
				font-style: italic;
				font-weight: bold;
			}
		'';
	};
}
