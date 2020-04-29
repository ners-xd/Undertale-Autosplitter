state("Undertale")
{
	uint room : "Undertale.exe", 0x618EA0;
	double money : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x8EC, 0x10;
	double plot : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x478, 0x10;
	double battle : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xBB0, 0x10;
	
	double start : "Undertale.exe", 0x618EDC, 0x80, 0x44, 0x10, 0x5BC, 0x0;
	double papyrus : "Undertale.exe", 0x40894C, 0x44, 0x10, 0x130, 0x0, 0x4, 0x4, 0x430;
	double chara : "Undertale.exe", 0x618EDC, 0x80, 0x44, 0x10, 0xB8, 0x410;
	
	double kpointer : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xC80;
	double kills_ruins : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCA0;
	double kills_tundra : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCB0;
	double kills_waterfall : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCC0;
	double kills_hotland : "Undertale.exe", 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCD0;
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
	settings.Add("ruins", true, "Ruins");
	settings.Add("tundra", true, "Tundra/Snowdin");
	settings.Add("waterfall", true, "Waterfall");
	settings.Add("hotlands", true, "Hotlands/Core");
	settings.Add("castle", true, "Asgore's Castle");
	settings.Add("truepac", true, "True Pacifist");

	settings.Add("r-singlerock", false, "Exit Single Rock Room", "ruins");
	settings.Add("b-endnapsta", false, "End Napstablook Fight", "ruins");
	settings.Add("r-torielhouse", false, "Enter Toriel's House", "ruins");
	settings.Add("b-starttoriel", false, "Start Toriel Fight", "ruins");
	settings.Add("b-endtoriel", false, "End Toriel Fight", "ruins");
	settings.Add("p-exitruins", false, "Exit the Ruins", "ruins");

	settings.Add("b-enddoggo", false, "End Doggo Fight", "tundra");
	settings.Add("b-enddogi", false, "End Dogamy & Dogaressa Fight", "tundra");
	settings.Add("p-icepuzzle", false, "Complete Ice Puzzle", "tundra");
	settings.Add("b-greaterdog", false, "End Greater Dog Fight", "tundra");
	settings.Add("r-entersnow", false, "Enter Snowdin", "tundra");
	settings.Add("f-papyrus", false, "Spare or Kill Papyrus", "tundra");
	settings.Add("r-papdate", false, "Exit Papyrus Date", "tundra");
	settings.Add("r-exitsnow", false, "Exit Snowdin", "tundra");

	settings.Add("r-bridge", false, "Bridge Puzzle", "waterfall");
	settings.Add("r-spears1", false, "First Undyne Spears", "waterfall");
	settings.Add("r-epc", false, "Early PunchCard Ending", "waterfall");
	settings.Add("r-onionsan", false, "Exit Onion-san Room", "waterfall");
	settings.Add("b-startdummy", false, "Start Mad Dummy Fight", "waterfall");
	settings.Add("b-enddummy", false, "End Mad Dummy Fight", "waterfall");
	settings.Add("b-endglad", false, "End Glad Dummy Fight", "waterfall");
	settings.Add("f-temmie", false, "Send Temmie to College", "waterfall");
	settings.Add("b-startundying", false, "Start Undyne the Undying Fight", "waterfall");
	settings.Add("b-endundying", false, "End Undyne the Undying Fight", "waterfall");
	settings.Add("r-arena", false, "Enter Undyne Arena", "waterfall");
	settings.Add("r-exitwater", false, "Exit Waterfall", "waterfall");

	settings.Add("r-exitcooler", false, "Exit Water Cooler Room", "hotlands");
	settings.Add("r-eastwest", false, "Exit East/West Puzzle", "hotlands");
	settings.Add("r-cookingshow", false, "Exit Cooking Show", "hotlands");
	settings.Add("r-cookingmenu", false, "Regain menu after Cooking Show Skip", "hotlands");
	settings.Add("b-endrgfight", false, "Exit Royal Guards Fight", "hotlands");
	settings.Add("r-newsreport", false, "Exit News Report", "hotlands");
	settings.Add("r-newsmenu", false, "Regain menu after News Report Skip", "hotlands");
	settings.Add("r-northsouth", false, "Exit North/South Puzzle", "hotlands");
	settings.Add("b-startmuffet", false, "Start Muffet Fight", "hotlands");
	settings.Add("b-endmuffet", false, "End Muffet Fight", "hotlands");
	settings.Add("r-muffet", false, "Exit Muffet Room", "hotlands");
	settings.Add("r-operaskip", false, "Skip Opera", "hotlands");
	settings.Add("r-operamenu", false, "Regain menu after Opera Skip", "hotlands");
	settings.Add("b-startmtt", false, "Start Mettaton Fight", "hotlands");
	settings.Add("b-endmtt", false, "End Mettaton Fight", "hotlands");
	settings.Add("b-endneo", false, "End Mettaton NEO Fight", "hotlands");

	settings.Add("f-longelevator", false, "Exit Long Elevator", "castle");
	settings.Add("b-startsans", false, "Start Sans Fight", "castle");
	settings.Add("b-endsans", false, "Finish Sans Fight", "castle");
	settings.Add("b-startasgore", false, "Start Neutral Asgore Fight", "castle");
	settings.Add("b-endasgore", false, "End Asgore Fight", "castle");
	settings.Add("p-neutralend", false, "Neutral Ending", "castle");
	settings.Add("f-genoend", false, "Genocide Ending", "castle");

	settings.Add("r-alphys", false, "Finish Alphys Date", "truepac");
	settings.Add("r-endlab", false, "Exit True Lab", "truepac");
	settings.Add("b-startasriel", false, "Start Asriel Fight", "truepac");
	settings.Add("b-onewingangel", false, "Asriel Dreemur Final Form", "truepac");
	settings.Add("b-endasriel", false, "End Asriel Dreemur Fight", "truepac");
	settings.Add("f-tpeend", false, "True Pacifist Ending", "truepac");


	// object array structure
	vars.visited = 0;		// bool		have we triggered this split already?
	vars.maxplot = 1;		// double	maximum allowed plot, -1 if none
	vars.reqplot = 2;		// double	required exact plot, -1 if none
	vars.oldroom = 3;		// int 		required old (last frame) room, -1 if none
	vars.curroom = 4; 		// int 		required current room, -1 if none
	vars.opposer = 5; 		// int 		required enemy (battlegroup)
	vars.special = 6; 		// int 		required special logic function, -1 if none

	vars.goals = new Dictionary<string, object[]>() {
		// Ruins
		{"r-singlerock",	new object[] {false,	30,		-1,		15,		16,		-1,		-1	}},
		{"b-endnapsta",		new object[] {false,	30,		-1,		306,	19,		20,		-1	}},
		{"r-torielhouse",	new object[] {false,	30,		-1,		31,		32,		-1,		-1	}},
		{"b-starttoriel",	new object[] {false,	30,		-1,		41,		306,	22,		-1	}},
		{"b-endtoriel",		new object[] {false,	30,		-1,		306,	41,		22,		-1	}},
		{"p-exitruins",		new object[] {false,	30,		30,		-1,		43,		-1,		-1	}},

		// Tundra
		{"b-enddoggo",		new object[] {false,	106,	-1,		306,	49,		23,		-1	}},
		{"b-enddogi",		new object[] {false,	106,	-1,		306,	57,		25,		-1	}},
		{"p-icepuzzle",		new object[] {false,	106,	63,		-1,		63,		-1,		-1	}},
		{"b-greaterdog",	new object[] {false,	106,	-1,		306,	66,		26,		-1	}},
		{"r-entersnow",		new object[] {false,	106,	-1,		67,		68,		-1,		-1	}},
		{"f-papyrus",		new object[] {false,	106,	-1,		-1,		81,		-1,		3	}},
		{"r-papdate",		new object[] {false,	106,	-1,		317,	77,		-1,		-1	}},
		{"r-exitsnow",		new object[] {false,	106,	-1,		81,		82,		-1,		-1	}},

		// Waterfall
		{"r-bridge",		new object[] {false,	126,	-1,		88,		90,		-1,		-1	}},
		{"r-spears1",		new object[] {false,	126,	-1,		93,		94,		-1,		-1	}},
		{"r-epc",			new object[] {false,	126,	-1,		95,		96,		-1,		-1	}},
		{"r-onionsan",		new object[] {false,	126,	-1,		100,	101,	-1,		-1	}},
		{"b-startdummy",	new object[] {false,	126,	-1,		115,	306,	45,		-1	}},
		{"b-enddummy",		new object[] {false,	126,	-1,		306,	115,	45,		-1	}},
		{"b-endglad",		new object[] {false,	126,	-1,		306,	115,	93,		-1	}},
		{"f-temmie",		new object[] {false,	126,	-1,		-1,		315,	-1,		5	}},
		{"b-startundying",	new object[] {false,	126,	-1,		-1,		306,	92,		-1	}},
		{"b-endundying",	new object[] {false,	126,	-1,		306,	132,	92,		-1	}},
		{"r-arena",			new object[] {false,	126,	-1,		133,	134,	-1,		-1	}},
		{"r-exitwater",		new object[] {false,	126,	-1,		136,	137,	-1,		-1	}},

		// Hotlands
		{"r-exitcooler",	new object[] {false,	199,	-1,		138,	139,	-1,		-1	}},
		{"r-eastwest",		new object[] {false,	199,	-1,		148,	153,	-1,		-1	}},
		{"r-cookingshow",	new object[] {false,	199,	-1,		154,	155,	-1,		-1	}},
		{"r-cookingmenu",	new object[] {false,	199,	137,	138,	137,	-1,		-1	}},
		{"b-endrgfight",	new object[] {false,	199,	-1,		306,	-1,		49,		7	}},
		{"r-newsreport",	new object[] {false,	199,	-1,		166,	167,	-1,		-1	}},
		{"r-newsmenu",		new object[] {false,	199,	162,	138,	137,	-1,		-1	}},
		{"r-northsouth",	new object[] {false,	199,	-1,		171,	176,	-1,		-1	}},
		{"b-startmuffet",	new object[] {false,	199,	-1,		177,	306,	56,		-1	}},
		{"b-endmuffet",		new object[] {false,	199,	-1,		306,	177,	56,		-1	}},
		{"r-muffet",		new object[] {false,	199,	-1,		177,	178,	-1,		-1	}},
		{"r-operaskip",		new object[] {false,	199,	-1,		179,	181,	-1,		-1	}},
		{"r-operamenu",		new object[] {false,	199,	176,	138,	137,	-1,		-1	}},
		{"b-startmtt",		new object[] {false,	199,	-1,		211,	306,	80,		-1	}},
		{"b-endmtt",		new object[] {false,	199,	-1,		306,	211,	-1,		8	}},
		{"b-endneo",		new object[] {false,	199,	-1,		306,	211,	94,		-1	}},

		// Castle
		{"f-longelevator",	new object[] {false,	-1,		-1,		215,	216,	-1,		9	}},
		{"b-startsans",		new object[] {false,	-1,		-1,		231,	306,	95,		-1	}},
		{"b-endsans",		new object[] {false,	-1,		-1,		306,	231,	95,		-1	}},
		{"b-startasgore",	new object[] {false,	-1,		-1,		237,	306,	100,	-1	}},
		{"b-endasgore",		new object[] {false,	-1,		-1,		306,	322,	100,	-1	}},
		{"p-neutralend",	new object[] {false,	-1,		30,		-1,		238,	-1,		-1	}},
		{"f-genoend",		new object[] {false,	-1,		-1,		-1,		306,	-1,		11	}},

		// Truepac
		{"r-alphys",		new object[] {false,	-1,		-1,		318,	113,	-1,		-1	}},
		{"r-endlab",		new object[] {false,	-1,		-1,		261,	216,	-1,		-1	}},
		{"b-startasriel",	new object[] {false,	-1,		-1,		-1,		306,	255,	-1	}},
		{"b-onewingangel",	new object[] {false,	-1,		-1,		-1,		306,	256,	-1	}},
		{"b-endasriel",		new object[] {false,	-1,		-1,		306,	331,	256,	-1	}},
		{"f-tpeend",		new object[] {false,	-1,		-1,		-1,		241,	-1,		13	}}
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

	current.kills = 0;
	vars.log("INIT - v1.08 - r4 - TEST - Modulesize:" + vars.moduleSize);
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

	// Set the current stage's kill count
	switch((int)current.kpointer)
	{
		case 202:	// ruins
			current.kills = current.kills_ruins;
			break;
		case 203:	// tundra
			current.kills = current.kills_tundra;
			break;
		case 204:	// waterfall
			current.kills = current.kills_waterfall;
			break;
		case 205:	// hotland
			current.kills = current.kills_hotland;
			break;
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
}

split
{
	if (old.room != current.room || old.money != current.money || old.plot != current.plot || old.battle != current.battle)
	{
		vars.log("EVENT game r{" + old.room + "," + current.room + "} " + 
						"m{" + old.money + "," + current.money + "} " + 
						"p{" + old.plot + "," + current.plot + "} " + 
						"b{" + old.battle + "," + current.battle + "} ");
	}
	
	if (old.room != current.room || old.money != current.money)
	{
		//Console.Beep(500, 100);
	}
	if(old.kpointer != current.kpointer || 
	old.kills_ruins != current.kills_ruins || old.kills_tundra != current.kills_tundra || 
	old.kills_waterfall != current.kills_waterfall || old.kills_hotland != current.kills_hotland)
	{
		vars.log("EVENT kpointer{" + old.kpointer + "," + current.kpointer + "} " +
				"kills_ruins{" + old.kills_ruins + "," + current.kills_ruins + "} " +
				"kills_tundra{" + old.kills_tundra + "," + current.kills_tundra + "} " +
				"kills_waterfall{" + old.kills_waterfall + "," + current.kills_waterfall + "} " +
				"kills_hotland{" + old.kills_hotland + "," + current.kills_hotland + "} ");
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
					case 3:	// f-papyrus
						pass = (((old.papyrus < 0) && (current.papyrus == 0)) || (current.papyrus == 1));
						break;
					case 5:		// f-temmie
						pass = (old.money - current.money > 999);
						break;
					case 7:		// b-endrgfight
						pass = (current.room == 153) || (current.room == 165);
						break;
					case 8:		// b-mettaton
						pass = (current.battle == 80) || (current.battle == 81);
						break;
					case 9:		// f-longelevator
						pass = (old.room == 215) && (current.room == 216);
						break;
					case 11:	// f-genoend
						pass = (old.chara == 8) && (current.chara > 8);
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