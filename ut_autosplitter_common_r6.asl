/*
    UNDERTALE Autosplitter - passed down through generations

    Contributors:
    spaceglace
    antimYT
    Xargot
    LukeSaward
    deesoff
    HFK
    NERS
    Jujstme - Room ID Sigscan
    Ero - Room ID Sigscan, Text Component, Process Swap
*/

state("Undertale", "v1.001")
{
    double money : 0x39A148, 0x4, 0xE0;
    double plot : 0x39A148, 0x4, 0x100;
    double battle : 0x39A148, 0x4, 0x440;

    double start : 0x59C2AC, 0x84, 0x140, 0x140, 0x4, 0x520;
    double papyrus : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0x430;
    double chara : 0x59C2AC, 0x80, 0x4, 0x200;
    float handhold : 0x59E470, 0xA0, 0x7C;

    double kpointer : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0xC80;
    double cur_kills : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0xC90;
    double mdrcnt : 0x39A148, 0x4, 0x1E0;
    double kills_ruins : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0xCA0;
    double kills_tundra : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0xCB0;
    double kills_waterfall : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0xCC0;
    double kills_hotland : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0xCD0;

    double spears2_con : 0x399E64, 0x0, 0x10C, 0xC, 0xB0, 0x8, 0x140, 0x4, 0x200;
    double status_undyne : 0x39A148, 0x4, 0x40, 0x4, 0x4, 0x1850;
    double asgore_stage : 0x399E64, 0x0, 0xF68, 0xC, 0xB0, 0x8, 0x4, 0x200;
}

state("Undertale", "v1.001 Linux")
{
    double money : 0x39B1E8, 0x4, 0xE0;
    double plot : 0x39B1E8, 0x4, 0x100;
    double battle : 0x39B1E8, 0x4, 0x440;

    double start : 0x59D34C, 0x84, 0x140, 0x140, 0x4, 0x520;
    double papyrus : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0x430;
    double chara : 0x59D34C, 0x80, 0x4, 0x200;
    float handhold : 0x59F504, 0x8, 0x7C;

    double kpointer : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0xC80;
    double cur_kills : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0xC90;
    double mdrcnt : 0x39B1E8, 0x4, 0x1E0;
    double kills_ruins : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0xCA0;
    double kills_tundra : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0xCB0;
    double kills_waterfall : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0xCC0;
    double kills_hotland : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0xCD0;

    double spears2_con : 0x39AF04, 0x0, 0x10C, 0xC, 0xB0, 0x8, 0x140, 0x4, 0x200;
    double status_undyne : 0x39B1E8, 0x4, 0x40, 0x4, 0x4, 0x1850;
    double asgore_stage : 0x39AF04, 0x0, 0xF68, 0xC, 0xB0, 0x8, 0x4, 0x200;
}

state("Undertale", "v1.05")
{
    double money : 0x40894C, 0x44, 0x10, 0x8EC, 0x10;
    double plot : 0x40894C, 0x44, 0x10, 0xAC, 0x260;
    double battle : 0x40894C, 0x44, 0x10, 0xAC, 0x170;
    
    double start : 0x618EDC, 0x80, 0x44, 0x10, 0x5BC, 0x0;
    double papyrus : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0x430;
    double chara : 0x618EDC, 0x80, 0x44, 0x10, 0x34, 0x0;
    float handhold : 0x61B004, 0x8, 0x9C;
    
    double kpointer : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xC80;
    double mdrcnt : 0x40894C, 0x44, 0x10, 0xAC, 0x10;
    double kills_ruins : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCA0;
    double kills_tundra : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCB0;
    double kills_waterfall : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCC0;
    double kills_hotland : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCD0;

    double status_undyne : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0x1850;
}

state("Undertale", "v1.08")
{
    double money : 0x40894C, 0x44, 0x10, 0x8EC, 0x10;
    double plot : 0x40894C, 0x44, 0x10, 0x478, 0x10;
    double battle : 0x40894C, 0x44, 0x10, 0xBB0, 0x10;
    
    double start : 0x618EDC, 0x80, 0x44, 0x10, 0x5BC, 0x0;
    double papyrus : 0x40894C, 0x44, 0x10, 0x130, 0x0, 0x4, 0x4, 0x430;
    double chara : 0x618EDC, 0x80, 0x44, 0x10, 0xB8, 0x1A0;
    float handhold : 0x61B004, 0x8, 0x9C;
    
    double kpointer : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xC80;
    double mdrcnt : 0x40894C, 0x44, 0x10, 0xAC, 0x10;
    double kills_ruins : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCA0;
    double kills_tundra : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCB0;
    double kills_waterfall : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCC0;
    double kills_hotland : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCD0;

    double status_undyne : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0x1850;
}

state("Undertale", "v1.08 GOG")
{
    double money : 0x40894C, 0x44, 0x10, 0x8EC, 0x10;
    double plot : 0x40894C, 0x44, 0x10, 0xAC, 0x260;
    double battle : 0x40894C, 0x44, 0x10, 0xBB0, 0x10;
    
    double start : 0x618EDC, 0x80, 0x44, 0x10, 0x5BC, 0x0;
    double papyrus : 0x40894C, 0x44, 0x10, 0x130, 0x0, 0x4, 0x4, 0x430;
    double chara : 0x618EDC, 0x84, 0x44, 0x10, 0xB8, 0xA0;
    float handhold : 0x61B004, 0x8, 0x9C;
    
    double kpointer : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xC80;
    double mdrcnt : 0x40894C, 0x44, 0x10, 0xAC, 0x10;
    double kills_ruins : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCA0;
    double kills_tundra : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCB0;
    double kills_waterfall : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCC0;
    double kills_hotland : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0xCD0;

    double status_undyne : 0x40894C, 0x44, 0x10, 0xA0, 0x0, 0x24, 0x4, 0x1850;
}

startup
{
    Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");

    // If the log directory doesn't exist, create it
    Directory.CreateDirectory("uaslog");

    // Delete the oldest log
    if(File.Exists("uaslog/uaslog.9"))
        File.Delete("uaslog/uaslog.9");

    // Roll all logs over one
    for(int i = 9; i > 0; i--)
        if(File.Exists("uaslog/uaslog." + (i-1)))
            File.Move("uaslog/uaslog." + (i-1), "uaslog/uaslog." + i);

    vars.unknownPopup = false;

    settings.Add("ruins", true, "Ruins");
    settings.Add("tundra", true, "Snowdin");
    settings.Add("waterfall", true, "Waterfall");
    settings.Add("hotlands", true, "Hotland/CORE");
    settings.Add("castle", true, "New Home");
    settings.Add("truepac", true, "True Pacifist");
    settings.Add("genokills", true, "Genocide");
    settings.Add("misc", true, "Text Display (updates on room changes)");

    settings.Add("r-singlerock", false, "Exit Single Rock Room", "ruins");
    settings.Add("b-endnapsta", false, "End Napstablook Fight", "ruins");
    settings.Add("r-torielhouse", false, "Enter Toriel's House", "ruins");
    settings.Add("b-starttoriel", false, "Start Toriel Fight", "ruins");
    settings.Add("b-endtoriel", false, "End Toriel Fight", "ruins");
    settings.Add("r-touchdoor", false, "Exit Toriel Battle Room", "ruins");
    settings.Add("p-exitruins", false, "Touch Ruins Exit Door", "ruins");

    settings.Add("b-enddoggo", false, "End Doggo Fight", "tundra");
    settings.Add("b-enddogi", false, "End Dogamy & Dogaressa Fight", "tundra");
    settings.Add("p-icepuzzle", false, "Complete Ice Puzzle", "tundra");
    settings.Add("b-greaterdog", false, "End Greater Dog Fight", "tundra");
    settings.Add("r-entersnow", false, "Enter Snowdin Town", "tundra");
    settings.Add("f-papyrus", false, "Spare or Kill Papyrus", "tundra");
    settings.Add("r-papdate", false, "Exit Papyrus Date", "tundra");
    settings.Add("r-exitsnow", false, "Exit Snowdin", "tundra");

    settings.Add("r-bridge", false, "Bridge Puzzle", "waterfall");
    settings.Add("r-spears1", false, "First Undyne Spears", "waterfall");
    settings.Add("r-epc", false, "Early Punch Card Ending", "waterfall");
    settings.Add("r-onionsan", false, "Exit Onion-san Room", "waterfall");
    settings.Add("f-spears2bridge", false, "Second Undyne Spears (bridge broken, works only in v1.001)", "waterfall");
    settings.Add("f-spears2cut", false, "Second Undyne Spears (cut to black, works only in v1.001)", "waterfall");
    settings.Add("r-spears2", false, "Second Undyne Spears (room change)", "waterfall");
    settings.Add("b-startdummy", false, "Start Mad Dummy Fight", "waterfall");
    settings.Add("b-enddummy", false, "End Mad Dummy Fight", "waterfall");
    settings.Add("r-exitdummy", false, "Exit Mad Dummy Room", "waterfall");
    settings.Add("b-endglad", false, "End Glad Dummy Fight", "waterfall");
    settings.Add("f-temmie", false, "Send Temmie to College", "waterfall");
    settings.Add("r-flowerflow", false, "Enter Flowerflow (Undyne Echo Flower) Room", "waterfall");
    settings.Add("r-flowerflow18k", false, "Enter Flowerflow Room with 18 kills", "waterfall");
    settings.Add("b-startundying", false, "Start Undyne the Undying Fight", "waterfall");
    settings.Add("b-endundying", false, "End Undyne the Undying Fight", "waterfall");
    settings.Add("r-exitmkbridge", false, "Exit Monster Kid Bridge", "waterfall");
    settings.Add("r-arena", false, "Enter Undyne Arena", "waterfall");
    settings.Add("r-exitwater", false, "Exit Waterfall", "waterfall");

    settings.Add("r-exitcooler", false, "Exit Watercooler Room", "hotlands");
    settings.Add("r-enterlab", false, "Enter Lab", "hotlands");
    settings.Add("r-eastwest", false, "Exit East/West Puzzle", "hotlands");
    settings.Add("r-cookingshow", false, "Exit Cooking Show", "hotlands");
    settings.Add("r-cookingmenu", false, "Regain menu after Cooking Show Skip", "hotlands");
    settings.Add("r-rf2", false, "Enter Right Floor 2", "hotlands");
    settings.Add("b-endrgfight", false, "End Royal Guards Fight", "hotlands");
    settings.Add("r-newsreport", false, "Exit News Report", "hotlands");
    settings.Add("r-newsmenu", false, "Regain menu after News Report Skip", "hotlands");
    settings.Add("r-lf3", false, "Enter Left Floor 3", "hotlands");
    settings.Add("r-northsouth", false, "Exit North/South Puzzle", "hotlands");
    settings.Add("b-startmuffet", false, "Start Muffet Fight", "hotlands");
    settings.Add("b-endmuffet", false, "End Muffet Fight", "hotlands");
    settings.Add("r-muffet", false, "Exit Muffet Room", "hotlands");
    settings.Add("r-operaskip", false, "Skip Opera", "hotlands");
    settings.Add("r-operamenu", false, "Regain menu after Opera Skip", "hotlands");
    settings.Add("r-rf3", false, "Enter Right Floor 3", "hotlands");
    settings.Add("r-entercore", false, "Enter CORE", "hotlands");
    settings.Add("b-startmtt", false, "Start Mettaton Fight", "hotlands");
    settings.Add("b-endmtt", false, "End Mettaton Fight", "hotlands");
    settings.Add("r-exitmtt", false, "Exit Mettaton Room", "hotlands");
    settings.Add("b-endneo", false, "End Mettaton NEO Fight", "hotlands");

    settings.Add("f-longelevator", false, "Exit Long Elevator", "castle");
    settings.Add("f-afterlongelevator", false, "After Long Elevator", "castle");
    settings.Add("f-enternewhome", false, "Enter New Home", "castle");
    settings.Add("r-entersanshall", false, "Enter Judgement Hall", "castle");
    settings.Add("b-startsans", false, "Start Sans Fight", "castle");
    settings.Add("b-endsans", false, "Finish Sans Fight", "castle");
    settings.Add("r-exitsanshall", false, "Exit Judgement Hall", "castle");
    settings.Add("f-genoend", false, "Genocide Ending", "castle");
    settings.Add("b-enterbarrier", false, "Enter The Barrier Room", "castle");
    settings.Add("b-startasgore", false, "Start Neutral Asgore Fight", "castle");
    settings.Add("b-killasgore", false, "Kill Asgore (works only in v1.001)", "castle");
    settings.Add("b-endasgore", false, "End Asgore Fight", "castle");
    settings.Add("p-neutralend", false, "Neutral Ending", "castle");

    settings.Add("r-undynedate", false, "Finish Undyne Date", "truepac");
    settings.Add("r-alphys", false, "Finish Alphys Date", "truepac");
    settings.Add("r-startlab", false, "Enter True Lab", "truepac");
    settings.Add("r-endlab", false, "Exit True Lab", "truepac");
    settings.Add("b-startasriel", false, "Start Asriel Fight", "truepac");
    settings.Add("b-onewingangel", false, "Asriel Dreemurr Final Form", "truepac");
    settings.Add("b-endasriel", false, "End Asriel Dreemurr Fight", "truepac");
    settings.Add("f-tpeend", false, "True Pacifist Ending", "truepac");
    
    settings.Add("g-ruins20", false, "Ruins - 20 Kills", "genokills");
    settings.Add("g-snowf16", false, "Snowdin Forest - 16 Kills", "genokills");
    settings.Add("g-water18", false, "Waterfall - 18 Kills", "genokills");
    settings.Add("g-hotland40", false, "Hotland - 40 Kills", "genokills");

    settings.Add("displaykillcount", false, "Display Total Kill Counter", "misc");
    settings.Add("displayruinskillcount", false, "Display Ruins Kill Counter", "misc");
    settings.Add("displaysnowdinkillcount", false, "Display Snowdin Kill Counter", "misc");
    settings.Add("displaywaterfallkillcount", false, "Display Waterfall Kill Counter", "misc");
    settings.Add("displayhotlandkillcount", false, "Display Hotland/CORE Kill Counter", "misc");
    settings.Add("displayareakillcount", false, "Display Current Area Kill Counter", "misc");
    settings.Add("displaycurroomnum", false, "Display Current Room Number", "misc");
    settings.Add("displayoldroomnum", false, "Display Old Room Number", "misc");

    // Object array structure
    vars.visited = 0; // (bool)   have we triggered this split already?
    vars.maxplot = 1; // (double) maximum allowed plot, -1 if none
    vars.reqplot = 2; // (double) required exact plot, -1 if none
    vars.oldroom = 3; // (int)    required old (last frame) room, -1 if none
    vars.curroom = 4; // (int)    required current room, -1 if none
    vars.opposer = 5; // (int)    required enemy (battlegroup)
    vars.special = 6; // (int)    required special logic function, -1 if none

    vars.goals = new Dictionary<string, object[]>()
    {
        // Ruins
        {"r-singlerock",  new object[] {false, 30, -1,  15,  16, -1, -1}},
        {"b-endnapsta",   new object[] {false, 30, -1, 306,  19, 20, -1}},
        {"r-torielhouse", new object[] {false, 30, -1,  31,  32, -1, -1}},
        {"b-starttoriel", new object[] {false, 30, -1,  41, 306, 22, -1}},
        {"b-endtoriel",   new object[] {false, 30, -1, 306,  41, 22, -1}},
        {"r-touchdoor",   new object[] {false, 30, -1,  41,  42, -1, -1}},
        {"p-exitruins",   new object[] {false, 30, 30,  -1,  43, -1, -1}},

        // Snowdin
        {"b-enddoggo",   new object[] {false, 106, -1, 306, 49, 23, -1}},
        {"b-enddogi",    new object[] {false, 106, -1, 306, 57, 25, -1}},
        {"p-icepuzzle",  new object[] {false, 106, 63,  -1, 63, -1, -1}},
        {"b-greaterdog", new object[] {false, 106, -1, 306, 66, 26, -1}},
        {"r-entersnow",  new object[] {false, 106, -1,  67, 68, -1, -1}},
        {"f-papyrus",    new object[] {false, 106, -1,  -1, 81, -1,  1}},
        {"r-papdate",    new object[] {false, 106, -1, 317, 77, -1, -1}},
        {"r-exitsnow",   new object[] {false, 106, -1,  81, 82, -1, -1}},

        // Waterfall
        {"r-bridge",        new object[] {false, 126, -1,  88,  90, -1, -1}},
        {"r-spears1",       new object[] {false, 126, -1,  93,  94, -1, -1}},
        {"r-epc",           new object[] {false, 126, -1,  95,  96, -1, -1}},
        {"r-onionsan",      new object[] {false, 126, -1, 100, 101, -1, -1}},
        {"f-spears2bridge", new object[] {false, 126, -1,  -1, 112, -1,  2}},
        {"f-spears2cut",    new object[] {false, 126, -1,  -1, 112, -1,  3}},
        {"r-spears2",       new object[] {false, 126, -1, 112, 113, -1, -1}},
        {"b-startdummy",    new object[] {false, 126, -1, 115, 306, 45, -1}},
        {"b-enddummy",      new object[] {false, 126, -1, 306, 115, 45, -1}},
        {"r-exitdummy",     new object[] {false, 126, -1, 115, 116, -1, -1}},
        {"b-endglad",       new object[] {false, 126, -1, 306, 115, 93, -1}},
        {"f-temmie",        new object[] {false, 126, -1,  -1, 315, -1,  4}},
        {"r-flowerflow",    new object[] {false, 126, -1, 129, 130, -1, -1}},
        {"r-flowerflow18k", new object[] {false, 126, -1, 129, 130, -1,  5}},
        {"b-startundying",  new object[] {false, 126, -1,  -1, 306, 92, -1}},
        {"b-endundying",    new object[] {false, 126, -1, 306, 132, 92, -1}},
        {"r-exitmkbridge",  new object[] {false, 126, -1, 132, 133, -1, -1}},
        {"r-arena",         new object[] {false, 126, -1, 133, 134, -1, -1}},
        {"r-exitwater",     new object[] {false, 126, -1, 136, 137, -1, -1}},

        // Hotland/CORE
        {"r-exitcooler",  new object[] {false, 199,  -1, 138, 139, -1, -1}},
        {"r-enterlab",    new object[] {false, 199,  -1, 139, 141, -1, -1}},
        {"r-eastwest",    new object[] {false, 199,  -1, 148, 153, -1, -1}},
        {"r-cookingshow", new object[] {false, 199,  -1, 154, 155, -1, -1}},
        {"r-cookingmenu", new object[] {false, 199, 137, 138, 137, -1, -1}},
        {"r-rf2",         new object[] {false, 199,  -1, 213, 157, -1, -1}},
        {"b-endrgfight",  new object[] {false, 199,  -1, 306,  -1, 49,  6}},
        {"r-newsreport",  new object[] {false, 199,  -1, 166, 167, -1, -1}},
        {"r-newsmenu",    new object[] {false, 199, 162, 138, 137, -1, -1}},
        {"r-lf3",         new object[] {false, 199,  -1, 213, 169, -1, -1}},
        {"r-northsouth",  new object[] {false, 199,  -1, 171, 176, -1, -1}},
        {"b-startmuffet", new object[] {false, 199,  -1, 177, 306, 56, -1}},
        {"b-endmuffet",   new object[] {false, 199,  -1, 306, 177, 56, -1}},
        {"r-muffet",      new object[] {false, 199,  -1, 177, 178, -1, -1}},
        {"r-operaskip",   new object[] {false, 199,  -1, 179, 181, -1, -1}},
        {"r-operamenu",   new object[] {false, 199, 176, 138, 137, -1, -1}},
        {"r-rf3",         new object[] {false, 199,  -1, 213, 187, -1, -1}},
        {"r-entercore",   new object[] {false, 199,  -1, 188, 189, -1, -1}},
        {"b-startmtt",    new object[] {false, 199,  -1, 211, 306, 80, -1}},
        {"b-endmtt",      new object[] {false, 199,  -1, 306, 211, -1,  7}},
        {"r-exitmtt",     new object[] {false, 199,  -1, 211, 212, -1, -1}},
        {"b-endneo",      new object[] {false, 199,  -1, 306, 211, 94, -1}},

        // New Home
        {"f-longelevator",      new object[] {false, -1, -1, 215, 216,  -1,  8}},
        {"f-afterlongelevator", new object[] {false, -1, -1, 216, 217,  -1, -1}},
        {"f-enternewhome",      new object[] {false, -1, -1, 219, 220,  -1, -1}},
        {"r-entersanshall",     new object[] {false, -1, -1, 230, 231,  -1, -1}},
        {"r-exitsanshall",      new object[] {false, -1, -1, 231, 232,  95, -1}},
        {"b-startsans",         new object[] {false, -1, -1, 231, 306,  95, -1}},
        {"b-endsans",           new object[] {false, -1, -1, 306, 231,  95, -1}},
        {"f-genoend",           new object[] {false, -1, -1,  -1, 306,  -1,  9}},
        {"b-enterbarrier",      new object[] {false, -1, -1, 236, 237,  -1, -1}},
        {"b-startasgore",       new object[] {false, -1, -1, 237, 306, 100, -1}},
        {"b-killasgore",        new object[] {false, -1, -1,  -1,  -1, 100, 10}},
        {"b-endasgore",         new object[] {false, -1, -1, 306, 322, 100, -1}},
        {"p-neutralend",        new object[] {false, -1, 30,  -1, 238,  -1, -1}},

        // True Pacifist
        {"r-undynedate",   new object[] {false, -1, -1, 117, 116,  -1, 11}},
        {"r-alphys",       new object[] {false, -1, -1, 318, 113,  -1, -1}},
        {"r-startlab",     new object[] {false, -1, -1, 243, 244,  -1, -1}},
        {"r-endlab",       new object[] {false, -1, -1, 261, 216,  -1, -1}},
        {"b-startasriel",  new object[] {false, -1, -1,  -1, 306, 255, -1}},
        {"b-onewingangel", new object[] {false, -1, -1,  -1, 306, 256, -1}},
        {"b-endasriel",    new object[] {false, -1, -1, 306, 331, 256, -1}},
        {"f-tpeend",       new object[] {false, -1, -1,  -1, 241,  -1, 12}},
        
        // Genocide
        {"g-ruins20",   new object[] {false, -1, -1, -1, -1, -1, 13}},
        {"g-snowf16",   new object[] {false, -1, -1, -1, -1, -1, 14}},
        {"g-water18",   new object[] {false, -1, -1, -1, -1, -1, 15}},
        {"g-hotland40", new object[] {false, -1, -1, -1, -1, -1, 16}}
    };

    var cache = new Dictionary<string, LiveSplit.UI.Components.ILayoutComponent>();
    vars.setText = (Action<string, object>)((text1, text2) =>
    {
        LiveSplit.UI.Components.ILayoutComponent lc;
        if(!cache.TryGetValue(text1, out lc))
        {
            lc = LiveSplit.UI.Components.ComponentManager.LoadLayoutComponent("LiveSplit.Text.dll", timer);
            cache[text1] = lc;
        }

        if(!timer.Layout.LayoutComponents.Contains(lc))
            timer.Layout.LayoutComponents.Add(lc);

        dynamic tc = lc.Component;
        tc.Settings.Text1 = text1;
        tc.Settings.Text2 = text2.ToString();
        tc.Settings.OverrideFont2 = true;
        tc.Settings.Font2 = timer.LayoutSettings.TimesFont;
    });

    vars.removeAllTexts = (Action)(() =>
    {
        foreach(var lc in cache.Values)
            timer.Layout.LayoutComponents.Remove(lc);
    });

    vars.log = (Action<string>)((message) =>
    {
        print("[UNDERTALE] " + message);

        using(StreamWriter sw = File.AppendText("uaslog/uaslog.0"))
            sw.WriteLine(DateTime.Now.ToString("HHmmssff  ") + message);
    });

    vars.reactivate = (Action)(() =>
    {
        foreach(string goal in vars.goals.Keys)
            vars.goals[goal][vars.visited] = false;

        vars.log("All splits have been reset");
    });
}

init
{
    vars.killAreaSet = false;
    vars.justStarted = true;

    var module = modules.First();
    var scanner = new SignatureScanner(game, module.BaseAddress, module.ModuleMemorySize);
    Func<int, string, IntPtr> scan = (o, sig) =>
    {
        IntPtr ptr = scanner.Scan(new SigScanTarget(o, sig) { OnFound = (p, s, addr) => p.ReadPointer(addr) });
        
        if(ptr == IntPtr.Zero)
            throw new NullReferenceException("[UNDERTALE] Signature scanning failed");
        
        vars.log("Room ID signature found at " + ptr.ToString("X"));
        return ptr;
    };
    vars.ptrRoomID = scan(7, "E8 ?? ?? ?? ?? 8B 0D ?? ?? ?? ?? 3B C8 75 1A 6A 01 68 ?? ?? ?? ?? E8");

    if(module.ModuleMemorySize == 6213632)
        version = "v1.001";

    string hash;
    using(var md5 = System.Security.Cryptography.MD5.Create())
        using(var fs = File.OpenRead(new FileInfo(module.FileName).DirectoryName + @"\data.win")) 
            hash = string.Concat(md5.ComputeHash(fs).Select(b => b.ToString("X2")));

    switch(hash)
    {
        case "88AE093AA1AE0C90DA0D3FF1E15AA724": // Vanilla
        case "8B95E1B4A6AF898FBD7E38EC70510159": // Half speed automasher
        case "A34F8D1244AE09277B814F4DC44CC7A2": // Full speed automasher
            version = "v1.001 Linux";
            break;

        case "856219E69DD39E76DECA0586A7F44307": // Vanilla
        case "114C2C37BC96FF5B694AD2E3C992A086": // Half speed automasher
        case "F2B828BD3B78217A1D3FA5C9591B00E4": // Full speed automasher
            version = "v1.05";
            break;

        case "5903FC5CB042A728D4AD8EE9E949C6EB": // Vanilla
        case "45E630A039887F3AF8810170B9247346": // Half speed automasher
        case "0EA02857528F7DF392C2306C484DF51A": // Full speed automasher
            version = "v1.08";
            break;

        case "627DA8A0368392204D2AF4B5B15F4F7F":
            version = "v1.08 GOG";
            break;
    }

    if(String.IsNullOrEmpty(version) && !vars.unknownPopup)
    {
        version = "Unknown";
        vars.unknownPopup = true;

        MessageBox.Show
        (
            "This version of UNDERTALE is not supported by the autosplitter.\n" +
            "If you are playing an older version, update your game.\n" +
            "If you are playing on Debug Mode or an unsupported mod, switch to the vanilla game or the automasher mod.\n\n" +

            "Make sure the game's executable is named \"UNDERTALE.exe\" and the data file is named \"data.win\".\n\n" +

            "You will not be notified again until the next time you start the autosplitter.",

            "LiveSplit | UNDERTALE", MessageBoxButtons.OK, MessageBoxIcon.Warning
        );
    }
    
    current.kills = 0;
    current.room = 0;
    vars.log("Found version " + version + " | process " + game.Id + " | module size " + module.ModuleMemorySize + " | data.win hash " + hash);
}

update
{
    if(version == "Unknown")
        return false;

    current.phase = timer.CurrentPhase;
    if(vars.justStarted)
    {
        vars.justStarted = false;
    }
    else
    {
        // Did the timer just start?
        if(current.phase == TimerPhase.Running && old.phase == TimerPhase.NotRunning)
        {
            vars.reactivate();

            // Log what splits have been selected
            string splitState = "";

            foreach(string goal in vars.goals.Keys)
                splitState += (settings[goal]) ? "1" : "0";

            vars.log("STATE  " + splitState);
        }

        // Did the timer just stop?
        else if(current.phase == TimerPhase.NotRunning && old.phase == TimerPhase.Running)
            vars.log("PHASE  " + old.phase.ToString() + " -> " + current.phase.ToString());
    }

    current.room = game.ReadValue<int>((IntPtr)vars.ptrRoomID);

    if(settings["p-neutralend"] && (current.room == 294 || current.room == 319))
    {
        // Previous 2 rooms before the Neutral Ending (room_floweyx, room_flowey_endchoice).
        // Won't check for the final one because, if it's detected,
        // it means the correct process is active and we don't have to search for others
        foreach(var p in Process.GetProcessesByName("Undertale"))
        {
            if(p.ReadValue<int>((IntPtr)vars.ptrRoomID) == 238) // Is in the final room (room_castle_exit)
            {
                vars.log("EVENT process swap {" + game.Id + "," + p.Id + "}");
                game.Dispose();
                vars.Helper.Game = p;
            }
            else
            {
                p.Dispose();
            }
        }
    }

    if(old.room != current.room)
    {
        switch((int)current.kpointer)
        {
            case 202:
                current.kills = current.kills_ruins;
                break;

            case 203:
                current.kills = current.kills_tundra;
                break;

            case 204:
                current.kills = current.kills_waterfall;
                break;

            case 205:
                current.kills = current.kills_hotland;
                break;
        }

        if(settings["displaykillcount"])
        {
            if(current.kills_ruins >= 20 && current.kills_tundra >= 16 && current.kills_waterfall >= 18 && current.kills_hotland >= 40)
                vars.setText("Kills", "(GENO ACHIEVED) " + current.mdrcnt);
            else
                vars.setText("Kills", current.mdrcnt);
        }

        if(settings["displayruinskillcount"])
            vars.setText("Ruins Kills", current.kills_ruins + "/20");

        if(settings["displaysnowdinkillcount"])
            vars.setText("Snowdin Kills", current.kills_tundra + "/16");

        if(settings["displaywaterfallkillcount"])
            vars.setText("Waterfall Kills", current.kills_waterfall + "/18");

        if(settings["displayhotlandkillcount"])
            vars.setText("Hotland/CORE Kills", current.kills_hotland + "/40");

        if(settings["displayareakillcount"])
        {
            switch((int)current.kpointer)
            {
                case 202:
                    vars.setText("Current Area Kills", current.kills_ruins + "/20");
                    break;

                case 203:
                    vars.setText("Current Area Kills", current.kills_tundra + "/16");
                    break;

                case 204:
                    vars.setText("Current Area Kills", current.kills_waterfall + "/18");
                    break;

                case 205:
                    vars.setText("Current Area Kills", current.kills_hotland + "/40");
                    break;
            
                default:
                    vars.setText("Current Area Kills", "Determination.");
                    break;
            }
        }

        if(settings["displaycurroomnum"])
            vars.setText("Room", current.room);

        if(settings["displayoldroomnum"])
            vars.setText("Old Room", old.room);
    }
}

start
{
    if((current.room == 3 && old.start != current.start) || old.room != current.room)
        vars.log("EVENT room r{" + old.room + "," + current.room + "} s{" + old.start + "," + current.start + "}");

    // With a new file, this gets set when player hits "Yes"
    if(current.room == 3 && old.start == 2 && current.start > 2)
    {
        vars.log("EVENT start (new file)");
        return true;
    }

    // With a save file in the starting room, this triggers when you spawn (-6.09 seconds)
    if(old.room == 3 && current.room == 4 && old.start == 3)
    {
        vars.log("EVENT start (with save file)");
        return true;
    }
}

reset
{
    if(current.room == 3 && old.start == 2 && current.start > 2)
    {
        vars.log("EVENT reset (new file)");
        return true;
    }

    if(old.room == 3 && current.room == 4 && old.start == 3)
    {
        vars.log("EVENT reset (with save file)");
        return true;
    }
}

split
{
    if(old.room != current.room ||
    old.money != current.money ||
    old.plot != current.plot ||
    old.battle != current.battle)
    {
        vars.log("EVENT game r{" + old.room + "," + current.room + "} " + 
                        "m{" + old.money + "," + current.money + "} " + 
                        "p{" + old.plot + "," + current.plot + "} " + 
                        "b{" + old.battle + "," + current.battle + "} ");
    }

    if(old.kpointer != current.kpointer || 
    old.kills_ruins != current.kills_ruins ||
    old.kills_tundra != current.kills_tundra || 
    old.kills_waterfall != current.kills_waterfall ||
    old.kills_hotland != current.kills_hotland)
    {
        vars.log("EVENT kpointer{" + old.kpointer + "," + current.kpointer + "} " +
                "kills_ruins{" + old.kills_ruins + "," + current.kills_ruins + "} " +
                "kills_tundra{" + old.kills_tundra + "," + current.kills_tundra + "} " +
                "kills_waterfall{" + old.kills_waterfall + "," + current.kills_waterfall + "} " +
                "kills_hotland{" + old.kills_hotland + "," + current.kills_hotland + "} ");
    }

    foreach(string goal in vars.goals.Keys)
    {
        if(settings[goal] && !vars.goals[goal][vars.visited])
        {
            if(vars.goals[goal][vars.curroom] != -1 && current.room != vars.goals[goal][vars.curroom])
                continue;

            if(vars.goals[goal][vars.oldroom] != -1 && old.room != vars.goals[goal][vars.oldroom])
                continue;

            if(vars.goals[goal][vars.reqplot] != -1 && current.plot != vars.goals[goal][vars.reqplot])
                continue;

            if(vars.goals[goal][vars.opposer] != -1 && current.battle != vars.goals[goal][vars.opposer])
                continue;

            if(vars.goals[goal][vars.maxplot] != -1 && current.plot > vars.goals[goal][vars.maxplot])
                continue;

            if(vars.goals[goal][vars.special] != -1)
            {
                bool pass = false;

                switch((int)vars.goals[goal][vars.special])
                {
                    case 1: // f-papyrus
                        pass = ((old.papyrus < 0 && current.papyrus == 0) || current.papyrus == 1);
                        break;

                    case 2: // f-spears2bridge
                        if(version == "v1.001" || version == "v1.001 Linux")
                            pass = (old.spears2_con == 9 && current.spears2_con > 9);

                        break;

                    case 3: // f-spears2cut
                        if(version == "v1.001" || version == "v1.001 Linux")
                            pass = (old.spears2_con == 14 && current.spears2_con > 14);

                        break;

                    case 4: // f-temmie
                        pass = (old.money - current.money > 999);
                        break;

                    case 5: // r-flowerflow18k
                        pass = (current.kills_waterfall >= 18);
                        break;

                    case 6: // b-endrgfight
                        pass = (current.room == 153 || current.room == 165);
                        break;

                    case 7: // b-endmtt
                        pass = (current.battle == 80 || current.battle == 81);
                        break;

                    case 8: // f-longelevator
                        pass = (old.room == 215 && current.room == 216);
                        break;

                    case 9: // f-genoend
                        pass = (old.chara == 8 && current.chara > 8);
                        break;

                    case 10: // b-killasgore
                        if(version == "v1.001" || version == "v1.001 Linux")
                            pass = (old.asgore_stage != 46 && current.asgore_stage == 46);

                        break;

                    case 11: // r-undynedate
                        pass = (old.status_undyne == 4 && current.status_undyne == 5);
                        break;

                    case 12: // f-tpeend
                        pass = (old.handhold == 69 && current.handhold > 69);
                        break;

                    case 13: // g-ruins20
                        pass = (current.kpointer == 202 && old.kills_ruins < 20 && current.kills_ruins >= 20);
                        break;

                    case 14: // g-snowf16
                        pass = (current.kpointer == 203 && old.kills_tundra < 16 && current.kills_tundra >= 16);
                        break;

                    case 15: // g-water18
                        pass = (current.kpointer == 204 && old.kills_waterfall < 18 && current.kills_waterfall >= 18);
                        break;

                    case 16: // g-hotland40
                        pass = (current.kpointer == 205 && old.kills_hotland < 40 && current.kills_hotland >= 40);
                        break;
                }

                if(!pass)
                    continue;
            }

            vars.log("EVENT split " + goal + 
                " oldroom: " + vars.goals[goal][vars.oldroom] + 
                " curroom: " + vars.goals[goal][vars.curroom] + 
                " reqplot: " + vars.goals[goal][vars.reqplot] + 
                " maxplot: " + vars.goals[goal][vars.maxplot] + 
                " opposer: " + vars.goals[goal][vars.opposer] + 
                " special: " + vars.goals[goal][vars.special]);

            vars.goals[goal][vars.visited] = true;
            return true;
        }
    }
    return false;
}

shutdown
{
    vars.removeAllTexts();
}

exit
{
    vars.removeAllTexts();
}
