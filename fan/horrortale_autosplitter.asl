state("HorrorTale Chapter One", "v1.0.4")
{
	uint room : "HorrorTale Chapter One.exe", 0x6561E0;
	double start : "HorrorTale Chapter One.exe", 0x445C40, 0x60, 0x10, 0x22C, 0x230;
	double book : "HorrorTale Chapter One.exe", 0x445C40, 0x60, 0x10, 0x238, 0x20;
}

startup
{
	// If the log directory doesn't exist, create it
	Directory.CreateDirectory("u_htaulog");

	// Delete the oldest log
	if (File.Exists("u_htaulog/u_htaulog.9"))
		File.Delete("u_htaulog/u_htaulog.9");

	// Roll all logs over one
	for (int i=9; i>0; i--)
		if (File.Exists("u_htaulog/u_htaulog." + (i-1)))
			File.Move("u_htaulog/u_htaulog." + (i-1), "u_htaulog/u_htaulog." + i);

	// Set up user settings
	settings.Add("ruins", true, "Ruins");

	settings.Add("r-dummy", false, "Exit Dummy Room", "ruins");
	settings.Add("r-singlerock", false, "Exit Single Rock Room", "ruins");
	settings.Add("r-toriel", false, "Enter Toriel's House", "ruins");
	settings.Add("r-bookshelf", false, "Read Bookshelf", "ruins");


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
		{"r-dummy",			new object[] {false,	-1,		-1,		11,		12,		-1,		-1	}},
		{"r-singlerock",	new object[] {false,	-1,		-1,		16,		17,		-1,		-1	}},
		{"r-toriel",		new object[] {false,	-1,		-1,		32,		33,		-1,		-1	}},
		{"r-bookshelf",		new object[] {false,	-1,		-1,		-1,		34,		-1,		1	}}
	};
}

init
{
	vars.moduleSize = modules.First().ModuleMemorySize;
	vars.justStarted = true;
	vars.isDebugMode = false;

	vars.log = (Func<string, bool>)((message) =>
	{
		using (StreamWriter sw = File.AppendText("u_htaulog/u_htaulog.0"))
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
	
	string hash;
	using (System.Security.Cryptography.MD5 md5Hash = System.Security.Cryptography.MD5.Create())
	{
		string gamepath = Path.GetDirectoryName(modules.First().FileName);
		string dataspath = Path.Combine(gamepath, "data.win");
		FileStream stream = File.Open(dataspath, FileMode.Open, FileAccess.Read, FileShare.Read);
		byte[] data = md5Hash.ComputeHash(stream);
		System.Text.StringBuilder sb = new System.Text.StringBuilder();
		foreach(byte d in data)
			sb.Append(d.ToString("x2"));
		hash = sb.ToString();
		string ver = string.Empty;
		switch(hash){
			case "8c3bc112606b505c179d7ebef09edc77":
				version = "v1.04";
				break;
		}
	}

	vars.log("autosplitter for HorrorTale: Chapter One by antimyt");
	vars.log("INIT - " + version + (vars.isDebugMode ? " - Debug mode" : "") + " - ext r1");
	if(vars.isDebugMode)
		Console.Beep(2000, 100);
	if(string.IsNullOrEmpty(version)){
		Console.Beep(1000, 500);
		Console.Beep(37, 200);
		Console.Beep(1000, 500);
		vars.log("Version is not found! - Modulesize:" + vars.moduleSize + " - Hash:" + hash);
	}
}

update
{
	current.phase = timer.CurrentPhase;

	if (vars.justStarted)
		vars.justStarted = false;
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
	if ((old.room == 4) && (current.room == 5))
		return true;
}

split
{
	if (old.room != current.room || old.book != current.book)
	{
		vars.log("EVENT game r{" + old.room + "," + current.room + "} " +
						"b{" + old.book + "," + current.book + "} ");
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
					case 1:		// o-temmie
						pass = (old.book == 0) && (current.book == 1);
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