state("UndertaleDemo", "DEMO")
{
	uint room : "UndertaleDemo.exe", 0x2C73C8;
	double plot : "UndertaleDemo.exe", 0x18F124, 0x4, 0x498;
	
	double start : "UndertaleDemo.exe", 0x1895F8, 0x48;
}
state("Undertale", "v1.001")
{
	uint room : "Undertale.exe", 0x59C270;
	double money : "Undertale.exe", 0x39A148, 0x4, 0xE0;
	double plot : "Undertale.exe", 0x39A148, 0x4, 0x100;
	double battle : "Undertale.exe", 0x39A148, 0x4, 0x440;
	double helth : "Undertale.exe", 0x39A148, 0x4, 0x1D0;
	uint inv : "Undertale.exe", 0x39A148, 0x4, 0x80, 0x4, 0x4;

	double start : "Undertale.exe", 0x59C2AC, 0x84, 0x140, 0x140, 0x4, 0x520;
	double lesserdog : "Undertale.exe", 0x38DBD8, 0x2B4, 0x4, 0x7C0;
	
	uint duck : "Undertale.exe", 0x374A7C;
}
state("Undertale", "v1.05")
{
	uint room : "Undertale.exe", 0x618EA0;
	double money : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x8EC, 0x10;
	double plot : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xAC, 0x260;
	double battle : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xAC, 0x170;
	double helth : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x1C, 0x370;
	uint inv : "Undertale.exe", 0x4099B4, 0x1AC, 0x8, 0x50, 0x14, 0x3FC;
	
	double start : "Undertale.exe", 0x618EDC, 0x80, 0x44, 0x10, 0x5BC, 0x0;
	double lesserdog : "Undertale.exe", 0x3F9F44, 0x294, 0x44, 0x10, 0x10C, 0x10;
	
	uint duck : "Undertale.exe", 0x3DCFDC;
}
state("Undertale", "v1.08")
{
	uint room : "Undertale.exe", 0x618EA0;
	double money : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x8EC, 0x10;
	double plot : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x478, 0x10;
	double battle : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xBB0, 0x10;
	double helth : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x1C, 0x370;
	uint inv : "Undertale.exe", 0x4099B4, 0x1AC, 0x8, 0x50, 0x14, 0x3FC;
	
	double start : "Undertale.exe", 0x618EDC, 0x80, 0x44, 0x10, 0x5BC, 0x0;
	double lesserdog : "Undertale.exe", 0x3F9F44, 0x294, 0x44, 0x10, 0x10C, 0x10;
	
	uint duck : "Undertale.exe", 0x3DCFDC;
}

startup
{
	// If the log directory doesn't exist, create it
	Directory.CreateDirectory("uaslog");

	// Delete the oldest log
	if (File.Exists("uaslog/uaslog.9"))
		File.Delete("uaslog/uaslog.9");

	// Roll all logs over one
	for (int i=9; i>0; i--)
		if (File.Exists("uaslog/uaslog." + (i-1)))
			File.Move("uaslog/uaslog." + (i-1), "uaslog/uaslog." + i);

	// Set up user settings
	settings.Add("demo", true, "Demo");
	settings.Add("itemuse", true, "Item Acquisition");
	settings.Add("other", true, "Other");
	settings.Add("extra", true, "Extra");

	settings.Add("demo-longroom", false, "Exit Long Room", "demo");
	settings.Add("demo-trlhouse", false, "Enter Toriel's House", "demo");
	settings.Add("demo-finish", false, "Finish Demo", "demo");
	
	settings.Add("iu-duck", false, "Duck%", "itemuse");
	settings.Add("iu-ribbon", false, "Faded Ribbon", "itemuse");
	settings.Add("iu-fullinv", false, "Full Inventory", "itemuse");
	settings.Add("iu-quiche", false, "Quiche", "itemuse");
	settings.Add("iu-temmie", false, "Temmie Armor", "itemuse");
	
	settings.Add("o-lesserdog", false, "Lesser Dog", "other");
	settings.Add("o-temmie", false, "Temmie College", "other");
	settings.Add("o-die", false, "Die", "other");
	settings.Add("o-error", false, "Dance Of Dog (error screen)", "other");
	
	settings.Add("extra-load", false, "Start timer at game load", "extra");
	settings.Add("extra-ending", false, "Split at ending splash (undertale logo)", "extra");


	// object array structure
	vars.visited = 0;		// bool		have we triggered this split already?
	vars.maxplot = 1;		// double	maximum allowed plot, -1 if none
	vars.reqplot = 2;		// double	required exact plot, -1 if none
	vars.oldroom = 3;		// int 		required old (last frame) room, -1 if none
	vars.curroom = 4; 		// int 		required current room, -1 if none
	vars.opposer = 5; 		// int 		required enemy (battlegroup)
	vars.special = 6; 		// int 		required special logic function, -1 if none

	vars.goals = new Dictionary<string, object[]>() {
		//<name>							<0>		<1>		<2>		<3>		<4>		<5>		<6>
		// Demo
		{"demo-longroom",	new object[] {false,	-1,		-1,		23,		25,		-1,		-1	}},
		{"demo-trlhouse",	new object[] {false,	-1,		-1,		51,		56,		-1,		-1	}},
		{"demo-finish",		new object[] {false,	-1,		-1,		67,		71,		-1,		-1	}},
		
		// Item Acquisition
		{"iu-duck",			new object[] {false,	-1,		-1,		-1,		99,		-1,		30	}},
		{"iu-ribbon",		new object[] {false,	-1,		-1,		-1,		22,		-1,		31	}},
		{"iu-fullinv",		new object[] {false,	-1,		-1,		-1,		-1,		-1,		32	}},
		{"iu-quiche",		new object[] {false,	-1,		-1,		-1,		89,		-1,		33	}},
		{"iu-temmie",		new object[] {false,	-1,		-1,		-1,		315,	-1,		34	}},
		
		// Other
		{"o-lesserdog",		new object[] {false,	106,	-1,		-1,		-1,		24,		0	}},
		{"o-temmie",		new object[] {false,	-1,		-1,		-1,		315,	-1,		1	}},
		{"o-die",			new object[] {false,	-1,		-1,		-1,		-1,		-1,		2	}},
		{"o-error",			new object[] {false,	-1,		-1,		-1,		326,	-1,		-1	}},
		
		// Extra
		{"extra-ending",	new object[] {false,	-1,		-1,		-1,		239,	-1,		-1	}},
	};
}

init
{
	vars.moduleSize = modules.First().ModuleMemorySize;
	vars.justStarted = true;

	vars.log = (Func<string, bool>)((message) =>
	{
		using (StreamWriter sw = File.AppendText("uaslog/uaslog.0"))
			sw.WriteLine(DateTime.Now.ToString("HHmmssff  ") + message);

		return true;
	});

	vars.reactivate =  (Func<bool>)(() =>
	{
		foreach (string goal in vars.goals.Keys)
			vars.goals[goal][vars.visited] = false;

		vars.log("ARMED  All splits have been armed");
		return true;
	});
	
	vars.checkInventory = (Func<uint, int, bool>)((inv, id) =>
	{
		for (int i = 0; i < 8; i++)
			if (memory.ReadValue<double>(new IntPtr(inv + i * 0x10)) == id)
				return true;
		return false;
	});
	vars.outputInventory = (Action<uint>)((inv) =>
	{
		System.Text.StringBuilder sb = new System.Text.StringBuilder();
		for (int i = 0; i < 8; i++)
			sb.Append("#" + i + ":" + memory.ReadValue<double>(new IntPtr(inv + i * 0x10)) + "; ");
		vars.log("EVENT inventory (" + inv + ") " + sb.ToString());
	});
	vars.countInventory = (Func<uint, int>)((inv) =>
	{
		int returnCount = 0;
		for (int i = 0; i < 8; i++)
			if (memory.ReadValue<double>(new IntPtr(inv + i * 0x10)) != 0)
				returnCount++;
		return returnCount;
	});
	
	if(vars.moduleSize == 6213632)
		version = "v1.001";
	else if(Path.GetFileNameWithoutExtension(modules.First().FileName) == "UndertaleDemo" && vars.moduleSize == 3543040)
		version = "DEMO";
	else
	{
		//1.05/1.08 have the same moduleSize
		using (System.Security.Cryptography.MD5 md5Hash = System.Security.Cryptography.MD5.Create())
		{
			string gamepath = Path.GetDirectoryName(modules.First().FileName);
			string dataspath = Path.Combine(gamepath, "data.win");
			FileStream stream = File.Open(dataspath, FileMode.Open, FileAccess.Read, FileShare.Read);
			byte[] data = md5Hash.ComputeHash(stream);
			System.Text.StringBuilder sb = new System.Text.StringBuilder();
			foreach(byte d in data)
				sb.Append(d.ToString("x2"));
			string hash = sb.ToString();
			string ver = string.Empty;
			switch(hash){
				case "856219e69dd39e76deca0586a7f44307":
					version = "v1.05";
					break;
				case "5903fc5cb042a728d4ad8ee9e949c6eb":
					version = "v1.08";
					break;
			}
		}
	}

	vars.log("autosplitter for extensions by antimyt");
	vars.log("INIT - " + version + " - ext r1 - Modulesize:" + vars.moduleSize);
}

update
{
	current.phase = timer.CurrentPhase;

	if (vars.justStarted)
	{
		vars.justStarted = false;
	}
	else
	{
		// Did the timer just start?
		if ((current.phase == TimerPhase.Running) && (old.phase == TimerPhase.NotRunning))
		{
			vars.reactivate();

			// Log what splits have been selected
			string splitState = "";

			foreach (string goal in vars.goals.Keys)
				splitState += (settings[goal]) ? "1" : "0";

			vars.log("STATE  " + splitState);
		}

		// Did the timer just stop?
		else if ((current.phase == TimerPhase.NotRunning) && (old.phase == TimerPhase.Running))
			vars.log("PHASE  " + old.phase.ToString() + " -> " + current.phase.ToString());
	}
}

start
{
	if (old.start != current.start || old.room != current.room){
		vars.log("EVENT room r{" + old.room + "," + current.room + "} s{" + old.start + "," + current.start + "}");
	}

	// with a new file, this gets set when player hits 'Yes' on confirm
	if ((old.start == 2) && (current.start == 4)){
		vars.log("EVENT start");
		return true;
	}

	// with a save file in the starting room, this triggers when you spawn (add 6.09 seconds)
	if ((old.room == 3) && (current.room == 4))
		return true;
	
	if (settings["extra-load"] && old.room == 3 && current.room > 3)
		return true;
}

split
{
	if(version == "DEMO")
	{
		if (old.room != current.room || old.plot != current.plot)
		{
			vars.log("EVENT game r{" + old.room + "," + current.room + "} " +
							"p{" + old.plot + "," + current.plot + "} ");
		}
	} 
	else 
	{
		if (old.room != current.room || old.money != current.money || old.plot != current.plot || old.battle != current.battle)
		{
			vars.log("EVENT game r{" + old.room + "," + current.room + "} " + 
							"m{" + old.money + "," + current.money + "} " + 
							"p{" + old.plot + "," + current.plot + "} " + 
							"b{" + old.battle + "," + current.battle + "} ");
			vars.outputInventory(current.inv);
		}
	}

	foreach (string goal in vars.goals.Keys)
	{
		// is this an enabled split that is armed?
		if ((settings[goal]) && (!vars.goals[goal][vars.visited]))
		{
			// is there a current room requirement?
			if ((vars.goals[goal][vars.curroom] != -1) && (current.room != vars.goals[goal][vars.curroom]))
				continue;

			// is there an old room requirement?
			if ((vars.goals[goal][vars.oldroom] != -1) && (old.room != vars.goals[goal][vars.oldroom]))
				continue;

			// is there an exact plot requirement?
			if ((vars.goals[goal][vars.reqplot] != -1) && (current.plot != vars.goals[goal][vars.reqplot]))
				continue;

			// is there a battlegroup requirement?
			if ((vars.goals[goal][vars.opposer] != -1) && (current.battle != vars.goals[goal][vars.opposer]))
				continue;

			// is there a maximum plot requirement?
			if ((vars.goals[goal][vars.maxplot] != -1) && (current.plot > vars.goals[goal][vars.maxplot]))
				continue;

			// is there a special flag requirement?
			if (vars.goals[goal][vars.special] != -1)
			{
				bool pass = false;

				switch((int)vars.goals[goal][vars.special])
				{
					case 0:		// o-lesserdog
						pass = current.lesserdog == 2700;
						break;
					case 1:		// o-temmie
						pass = (old.money - current.money == 1000);
						break;
					case 2:		// o-die
						pass = (current.helth == 0) && (current.room > 3);
						break;
					
					// Item Acquisition
					case 30:	// iu-duck
						pass = (old.duck == 0) && (current.duck == 1);
						break;
					case 31:	// iu-ribbon
						pass = vars.checkInventory(current.inv, 12);
						break;
					case 32:	// iu-fullinv
						pass = (vars.countInventory(current.inv) == 8);
						break;
					case 33:	// iu-quiche
						pass = vars.checkInventory(current.inv, 23);
						break;
					case 34:	// iu-temmie
						pass = vars.checkInventory(current.inv, 64);
						break;
						
				}

				if (!pass)
					continue;
			}

			// if we get to this point, all requirements are met
			vars.goals[goal][vars.visited] = true;

			vars.log("SPLIT  name:" + goal + 
				" oldroom:" + vars.goals[goal][vars.oldroom] + 
				" curroom:" + vars.goals[goal][vars.curroom] + 
				" reqplot:" + vars.goals[goal][vars.reqplot] + 
				" maxplot:" + vars.goals[goal][vars.maxplot] + 
				" opposer:" + vars.goals[goal][vars.opposer] + 
				" special:" + vars.goals[goal][vars.special]);

			return true;
		}
	}

	return false;
}