{
	boot.kernelModules = [ "thinkpad_acpi" ];

	services.thinkfan = {
		enable = true;

		sensors = [
			{
				query = "/sys/devices/platform/thinkpad_hwmon/hwmon/hwmon3/subsystem/hwmon4/temp1_input";
				type = "hwmon";
			}
			{
				query = "/sys/devices/platform/thinkpad_hwmon/hwmon/hwmon3/subsystem/hwmon4/temp2_input";
				type = "hwmon";
			}
			{
				query = "/sys/devices/platform/thinkpad_hwmon/hwmon/hwmon3/subsystem/hwmon4/temp3_input";
				type = "hwmon";
			}
		];

		levels = [
			[0		0	40]
			[1		40	43]
			[2		43	48]
			[5		48	55]
			[6		55	70]
			[7		70	999]
		];
	};
}
