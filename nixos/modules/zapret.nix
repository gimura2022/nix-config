{
	services.zapret = {
		enable = true;

		params = [
			"--dpi-desync=syndata,fake,split2"
			"--dpi-desync-fooling=md5sig"
			"--dpi-desync-repeats=6"
		];

		# that isn't working
#		whitelist = [
#			"discord.gg"
#			"discord.com"
#			"discordapp.com"
#			"discord.media"
#			"discordapp.net"
#			"discordcdn.com"
#			"discord.dev"
#			"discord.new"
#			"discord.gift"
#			"discordstatus.com"
#			"dis.gd"
#			"discord.co"
#		];
	};
}
