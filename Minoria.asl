state("Minoria", "v1.0") {

	// Checks if the game is loading
	byte IsLoading:	"UnityPlayer.dll", 0x1442A68, 0x18, 0xE0, 0x158, 0x38;

	// Checks if the player is inGame and not on the main menu
	byte inGame: "mono.dll", 0x264A68, 0xA0, 0xE60;
	
	// Checks if player is selecting brightness level at the start of a run
	byte StartRun: "UnityPlayer.dll", 0x1442A68, 0x18, 0x160, 0x60, 0xA8, 0xD0, 0x28, 0x60;

	// Checks if the file goes from already in use to a clean start
	byte NewGame: "mono.dll", 0x264110, 0x1460, 0x118, 0xB0, 0x84;

	// Checks if a file is seleted on title screen
	byte IsSelected: "mono.dll", 0x264110, 0x1460, 0x118, 0x121;

	// Base pointer for the flag array
	int FlagsPtr: "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x490, 0xF8, 0x8, 0x18, 0x0, 0x10;

	// Player X and Y Coordinates (global, kinda, prevents false split on boss skips)
	float PlayerXPos: "mono.dll", 0x264A68, 0xA0, 0xDC4;
	float PlayerYPos: "mono.dll", 0x264A68, 0xA0, 0xDC8;

	// Checks how many Items the player has (not equiped)
	int Inventorysize: "UnityPlayer.dll", 0x143D440, 0x10, 0x248, 0x8, 0xB8, 0x8, 0x10, 0x18;

	// Checks which dialogue option is selected
	byte DialogueSelected: "UnityPlayer.dll", 0x1442BF8, 0x128, 0xD0, 0xA0, 0x8C;
	// Checks the ammount of option in a dialogue (Prevent false end split)
	byte DialogueChoices: "UnityPlayer.dll", 0x1442BF8, 0x128, 0xD0, 0xA0, 0x90;

	// Boss Pointers
	byte PoemeDead: "mono.dll", 0x2649C8, 0x100, 0x398, 0x10, 0x160, 0x80, 0x208;
	// "BossName"MaxHp is used to prevent false splits since the pointers get reused for other common enemies randomly
	float PoemeMaxHp: "mono.dll", 0x2649C8, 0x100, 0x398, 0x10, 0x160, 0x80, 0x144;

	byte AmeliaDead: "UnityPlayer.dll", 0x13ADFE0, 0x80, 0xC0, 0x8, 0x90, 0xA0, 0x80, 0x208;
	float AmeliaMaxHp: "UnityPlayer.dll", 0x13ADFE0, 0x80, 0xC0, 0x8, 0x90, 0xA0, 0x80, 0x144;
}

state("Minoria", "v1.085") {

	byte IsLoading:	"UnityPlayer.dll", 0x1442A68, 0x18, 0xE0, 0x158, 0x38;

	byte inGame: "mono.dll", 0x264A68, 0xA0, 0xE60;
	
	byte StartRun: "UnityPlayer.dll", 0x1442A68, 0x18, 0x160, 0x60, 0xA8, 0xD0, 0x28, 0x60;

	byte NewGame: "mono.dll", 0x264110, 0x1550, 0x118, 0xB0, 0x84;

	byte IsSelected: "mono.dll", 0x264110, 0x1550, 0x118, 0x159;

	int FlagsPtr: "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x4A0, 0xF8, 0x8, 0x18, 0x0, 0x10;

	float PlayerXPos: "mono.dll", 0x264A68, 0xA0, 0xDC4;
	float PlayerYPos: "mono.dll", 0x264A68, 0xA0, 0xDC8;

	int Inventorysize: "UnityPlayer.dll", 0x143D440, 0x10, 0x248, 0x8, 0xB8, 0x8, 0x10, 0x18;

	byte DialogueSelected: "UnityPlayer.dll", 0x1442BF8, 0x128, 0xD0, 0xA0, 0x8C;
	byte DialogueChoices: "UnityPlayer.dll", 0x1442BF8, 0x128, 0xD0, 0xA0, 0x90;

	byte PoemeDead: "mono.dll", 0x2649C8, 0x100, 0x398, 0x10, 0x160, 0x80, 0x208;
	float PoemeMaxHp: "mono.dll", 0x2649C8, 0x100, 0x398, 0x10, 0x160, 0x80, 0x144;

	byte AmeliaDead: "UnityPlayer.dll", 0x13ADFE0, 0x80, 0xC0, 0x8, 0x90, 0xA0, 0x80, 0x208;
	float AmeliaMaxHp: "UnityPlayer.dll", 0x13ADFE0, 0x80, 0xC0, 0x8, 0x90, 0xA0, 0x80, 0x144;
}


startup {

	// Main Splits
	settings.Add("79", true, "Lissette");
	settings.Add("churchkey2", true, "Cathedral Key");
	settings.Add("82", true, "Devoir");
	settings.Add("itemthrust", true, "Charged Thrust");
	settings.Add("98", true, "Garden");
	settings.Add("gardenkey", true, "Royal Key");
	settings.Add("mist", true, "Mist fragments");
	settings.Add("109", true, "Saora");
	settings.Add("catacombs", true, "Catacombs");
	settings.Add("itemuppercut", true, "Upper Dash");
	settings.Add("72", true, "Catacombs Code");
	settings.Add("102", true, "Frikka");
	settings.Add("244", true, "Castle Mini-boss");
	settings.Add("itemdash", true, "Warp Dash");
	settings.Add("57", true, "Lust");
	settings.Add("273", true, "Parushee");
	settings.Add("ending", true, "Ending");

	// Garden Mist Fragments
	settings.Add("151", true, "Fragment 1", "mist");
	settings.Add("154", true, "Fragment 2", "mist");
	settings.Add("152", true, "Fragment 3", "mist");
	settings.Add("153", true, "Fragment 4", "mist");

	// Catacomb Keys
	settings.Add("cellarkey1f", true, "B1F Key", "catacombs");
	settings.Add("cellarkey2f", true, "B2F Key", "catacombs");
	settings.Add("cellarkey3f", true, "B3F Key", "catacombs");
	settings.Add("cellarkey5f", true, "B5F Key", "catacombs");

	// ToolTips
	settings.SetToolTip("109", "If checked it will split upon defeating Saora or performing the skip");
	settings.SetToolTip("57", "If checked it will split upon defeating Lust or performing the skip");
	settings.SetToolTip("273", "If checked it will split upon defeating Parushee or performing the skip");
	settings.SetToolTip("ending", "If checked it will split on Saint and Heretic endings");
	
	//timing method reminder from Amnesia TDD autosplitter, all credits to those guys (and ROR2 which is where I got this from)
	if (timer.CurrentTimingMethod == TimingMethod.GameTime) {
        	var timingMessage = MessageBox.Show (
          		"Minoria uses RTA (time with loads) as timing method.\n"+
          		"LiveSplit is currently set to show IGT (time without loads).\n"+
          		"Would you like the timing method to be set to RTA for you?\n"+
				"(This only works if the timer component is set to 'Current Timing Method')",
         		"Minoria Autosplitter | LiveSplit",
         		MessageBoxButtons.YesNo
       		);
		
        	if (timingMessage == DialogResult.Yes)
			timer.CurrentTimingMethod = TimingMethod.RealTime;
	}
}


init {

	refreshRate = 60;

	string dll_path = modules.First().FileName + "\\..\\Minoria_Data\\Managed\\Assembly-CSharp.dll";
	
	long dll_size = new System.IO.FileInfo(dll_path).Length;
 
	print("Minoria: Version: " + dll_size.ToString());

	switch (dll_size) {
		case 1280512:

			version = "v1.0";
			break;
		
		case 1283072:
		
			version = "v1.085";
			break;
		
		default:
		
			version = "Unrecognised";
			break;
	}

	// Once the Final boss dies there is a dialogue, this variable is to know if we are on that specific dialogue or not
	vars.PoemeKilled = false;

	//When game has loaded a level, check if the player has performed a skip
	vars.checkSkips = false;
	vars.CheckLoaded = 0;

	// Tracks if the player has collected a new item
	vars.NewItem = false;

	// List of items to split on
	vars.Items = new HashSet<string>() {
		/*Keys*/"churchkey2", "gardenkey", "cellarkey1f", "cellarkey2f", "cellarkey3f", "cellarkey5f",
		/*Upgrades*/"itemthrust", "itemuppercut", "itemdash"
	};

	// List of flags to split on
	vars.FlagList = new HashSet<int>() { 57, 72, 79, 82, 98, 102, 109, 151, 152, 153, 154, 244, 273	};

	// Hashset to hold the name of the Items collected
	vars.Inventory = new HashSet<string>();

	// HashSet to hold splits already hit
	// It prevents Livesplit from splitting on the same split multiple times
	vars.Splits = new HashSet<string>();

	// MemoryWatchers that correspond to each flag
	vars.Flags = new MemoryWatcherList();
}


isLoading {

	return (current.IsLoading == 1);
}


update {

	// Clear any hit splits, Items collected and other variables if timer stops
	if (timer.CurrentPhase == TimerPhase.NotRunning) {
		vars.Splits.Clear();
		vars.Inventory.Clear();
		vars.PoemeKilled = false;
		vars.checkSkips = false;
		vars.CheckLoaded = 0;
	}

	// Initialize flags when the flags pointer gets initialized/changes, or we load up LiveSplit while in-game
	if(old.FlagsPtr != current.FlagsPtr || (current.FlagsPtr != 0 && vars.Flags.Count == 0)) {
		vars.Flags.Clear();

		foreach (int i in vars.FlagList) {
			if(version == "v1.0")
				vars.Flags.Add(new MemoryWatcher<int>(new DeepPointer("mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x490, 0xF8, 0x8, 0x18, 0x0, 0x10, 0x20 + 0x4 * i)) { Name = i.ToString() });
			else if (version == "v1.085")
				vars.Flags.Add(new MemoryWatcher<int>(new DeepPointer("mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x4A0, 0xF8, 0x8, 0x18, 0x0, 0x10, 0x20 + 0x4 * i)) { Name = i.ToString() });
		}
	}

	// Check if a new item was found and get its name
	if (current.Inventorysize > old.Inventorysize) {
		for (int i = 0; i < current.Inventorysize; i++) {
			vars.ItemName = new StringWatcher(new DeepPointer("UnityPlayer.dll", 0x0143D440, 0x10, 0x248, 0x8, 0xB8, 0x8, 0x10, 0x10, 0x20 + i * 0x8, 0x10, 0x28, 0x26), 128);

			vars.ItemName.Update(game);

			if (!vars.Inventory.Contains(vars.ItemName.Current)) {
				vars.NewItem = true;
				vars.Inventory.Add(vars.ItemName.Current);
			}
		}
	}

	// Check if Poeme was defeated and reset its flag if necessary
	if (current.PoemeMaxHp == 25000 && current.PoemeDead == 1 && old.PoemeDead == 0)
		vars.PoemeKilled = true;
	else if (current.IsLoading == 1 || current.inGame == 0)
		vars.PoemeKilled = false;

	// Check if the game has loaded a level and set checkSKips to true
	if(vars.CheckLoaded > 0)
		vars.CheckLoaded--;
	else {
		vars.checkSkips = false;
		if(old.IsLoading == 1 && current.IsLoading == 0) {
			vars.checkSkips = true;
			vars.CheckLoaded = 30;
		}
	}

	// Update flags
	vars.Flags.UpdateAll(game);
}


start {
	return (current.StartRun == 0 && old.StartRun == 1);
}


reset {
    return (current.IsSelected == old.IsSelected && current.NewGame == 1 && old.NewGame == 0);
}


split {
	// FLAGS
	foreach (var watcher in vars.Flags) {
		if (watcher.Changed && watcher.Current == 1) {
			if (vars.Splits.Contains(watcher.Name))
				return false;

			vars.Splits.Add(watcher.Name);
			return settings[watcher.Name];
		}
	}
	
	// BOSS SKIPS
	// Check that the game has loaded a level(for example after retrying or loading a savefile) and the player is in the desired location
	if(vars.checkSkips == true && current.inGame == 1) {
		// Saora Skip
		if(current.PlayerXPos >= 868 && current.PlayerXPos <= 873 && current.PlayerYPos >= -8 && current.PlayerYPos <= -7) {
			if (vars.Splits.Contains("109"))
				return false;

			vars.Splits.Add("109");
			return settings["109"];
		}

		// Lust Skip
		if(current.PlayerXPos >= -50 && current.PlayerXPos <= -45 && current.PlayerYPos >= 0 && current.PlayerYPos <= 1) {
			if (vars.Splits.Contains("57"))
				return false;

			vars.Splits.Add("57");
			return settings["57"];
		}

		// Parushee Skip
		if((current.PlayerXPos >= 100 && current.PlayerXPos <= 105 && current.PlayerYPos >= 0 && current.PlayerYPos <= 1) || (current.PlayerXPos >= -105 && current.PlayerXPos <= -102 && current.PlayerYPos >= -44 && current.PlayerYPos <= -43)) {
			if (vars.Splits.Contains("273"))
				return false;

			vars.Splits.Add("273");
			return settings["273"];
		}
	}

	// ENDINGS
	// Oversight: not resetting vars.PoemeDead value if player restarts the fight after defeating Poeme
	if (vars.PoemeKilled == true) {
		if (old.DialogueSelected == 0 && current.DialogueSelected == 0 && current.DialogueChoices == 1 && old.DialogueChoices == 2) {
			if (vars.Splits.Contains("Ending"))
				return false;

			vars.Splits.Add("Ending");
			return settings["ending"];
		}
	}

	if (current.AmeliaMaxHp == 13000 && current.AmeliaDead == 1 && old.AmeliaDead == 0) {
		if (vars.Splits.Contains("Ending"))
			return false;

		vars.Splits.Add("Ending");
		return settings["ending"];
	}

	// ITEMS
	// Check if the collected item is the correct one
	if(vars.NewItem == true) {
		foreach (string Item in vars.Items) {
			if (vars.Inventory.Contains(Item) && !vars.Splits.Contains(Item)) {
				print("New item: " + Item);
				vars.Splits.Add(Item);
				return settings[Item];
			}
		}
		
		vars.NewItem = false;
	}
	// MISC END
}
