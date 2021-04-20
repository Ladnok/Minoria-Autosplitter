state("Minoria", "v1.0")
{

	// Checks if the game is loading
	byte IsLoading:	"UnityPlayer.dll", 0x01442A68, 0x18, 0xE0, 0x158, 0x38;
	
	// Checks if player is selecting brightness level at the start of a run
	byte StartRun: "UnityPlayer.dll", 0x01442A68, 0x18, 0x160, 0x60, 0xA8, 0xD0, 0x28, 0x60;

	// Checks if the file goes from already in use to a clean start
	byte NewGame: "mono.dll", 0x264110, 0x1460, 0x118, 0xB0, 0x84;

	// Checks if a file is seleted on title screen
	byte IsSelected: "mono.dll", 0x264110, 0x1460, 0x118, 0x121;

	// Checks what option is selected inside the file (Load or Erase)
	int OptionSelected: "mono.dll", 0x264110, 0x1460, 0x118, 0xB0, 0x80;
	
	// Checks if the GameOver screen is hidden
	byte GameOver: "mono.dll", 0x0264110, 0xCA0, 0x278, 0x50, 0x420, 0x190, 0x28, 0xA8;

	// Player X and Y Coordinates (global, kinda, prevents false split on boss skips)
	float PlayerXPos: "mono.dll", 0x264A68, 0xA0, 0xDC4;
	float PlayerYPos: "mono.dll", 0x264A68, 0xA0, 0xDC8;

	// Checks which dialogue option is selected
	byte DialogueSelected: "UnityPlayer.dll", 0x01442BF8, 0x128, 0xD0, 0xA0, 0x8C;
	// Checks the ammount of option in a dialogue (Prevent false end split)
	byte DialogueChoices: "UnityPlayer.dll", 0x01442BF8, 0x128, 0xD0, 0xA0, 0x90;

	// Keeps track of the ammount of numbers introduced correctly on the catacombs password (0-4)
	int PasswordNPC: "UnityPlayer.dll", 0x01465B90, 0x8, 0xF8, 0x1A8, 0x98, 0x38, 0x60, 0x78;

	// Detects when the player talks to Pin in Garden
	byte PinCs2: "mono.dll", 0x264A28, 0xA0, 0x6F0, 0x98, 0x8, 0x28, 0x28, 0x40;

	// Checks how many Items the player has (not equiped)
	int Inventorysize: "UnityPlayer.dll", 0x0143D440, 0x10, 0x248, 0x8, 0xB8, 0x8, 0x10, 0x18;

	// Keeps track of the breakable obejct (garden crystal) max hp (Prevent false split)
	float GardenCrystalMaxHp: "UnityPlayer.dll", 0x014726F8, 0x0, 0x0, 0x30, 0xC8, 0x90, 0x90, 0xB8, 0x128, 0xDC;
	// Checks if the current tracked object is a graden Crystal
	int GardenCrystalFlag: "UnityPlayer.dll", 0x014726F8, 0x0, 0x0, 0x30, 0xC8, 0x90, 0x90, 0xB8, 0x128, 0xF8;

	// Boss Pointers
	byte LissetteDead: "UnityPlayer.dll", 0x01442BF8, 0x130, 0xD8, 0xC8, 0x90, 0x118, 0x208;
	// "BossName"MaxHp is used to prevent false splits since the pointers get reused for other common enemies randomly
	float LissetteMaxHp: "UnityPlayer.dll", 0x01442BF8, 0x130, 0xD8, 0xC8, 0x90, 0x118, 0x144;

	byte DevoirDead: "UnityPlayer.dll", 0x0146EB68, 0x60, 0x8, 0x60, 0x140, 0xA0, 0x60, 0x208;
	float DevoirMaxHp: "UnityPlayer.dll", 0x0146EB68, 0x60, 0x8, 0x60, 0x140, 0xA0, 0x60, 0x144;

	byte SaoraDead: "UnityPlayer.dll", 0x01442A68, 0x0, 0x88, 0xC0, 0x0, 0x68, 0x60, 0x208;
	float SaoraMaxHp: "UnityPlayer.dll", 0x01442A68, 0x0, 0x88, 0xC0, 0x0, 0x68, 0x60, 0x144;

	byte GridelinDead: "UnityPlayer.dll", 0x01445170, 0x30, 0x150, 0x28, 0x28, 0x90, 0x118, 0x208;
	float GridelinMaxHp: "UnityPlayer.dll", 0x01445170, 0x30, 0x150, 0x28, 0x28, 0x90, 0x118, 0x144;

	byte FrikkaDead: "UnityPlayer.dll", 0x01442BF8, 0x138, 0x8, 0xD8, 0x150, 0x118, 0x208;
	float FrikkaMaxHp: "UnityPlayer.dll", 0x01442BF8, 0x138, 0x8, 0xD8, 0x150, 0x118, 0x144;

	byte LustDead: "UnityPlayer.dll", 0x01465B90, 0x8, 0x2A8, 0xC8, 0xA0, 0x80, 0x208;
	float LustMaxHp: "UnityPlayer.dll", 0x01465B90, 0x8, 0x2A8, 0xC8, 0xA0, 0x80, 0x144;

	byte ParusheeDead: "UnityPlayer.dll", 0x01442A68, 0x0, 0x0, 0x88, 0xC8, 0x68, 0x60, 0x208;
	float ParusheeMaxHp: "UnityPlayer.dll", 0x01442A68, 0x0, 0x0, 0x88, 0xC8, 0x68, 0x60, 0x144;

	byte PoemeDead: "mono.dll", 0x002649C8, 0x100, 0x398, 0x10, 0x160, 0x80, 0x208;
	float PoemeMaxHp: "mono.dll", 0x002649C8, 0x100, 0x398, 0x10, 0x160, 0x80, 0x144;

	byte AmeliaDead: "UnityPlayer.dll", 0x013ADFE0, 0x80, 0xC0, 0x8, 0x90, 0xA0, 0x80, 0x208;
	float AmeliaMaxHp: "UnityPlayer.dll", 0x013ADFE0, 0x80, 0xC0, 0x8, 0x90, 0xA0, 0x80, 0x144;
}


startup
{

	// Main Splits
	settings.Add("lissette", true, "Lissette");
	settings.Add("churchkey2", true, "Cathedral Key");
	settings.Add("devoir", true, "Devoir");
	settings.Add("itemthrust", true, "Charged Thrust");
	settings.Add("enterGarden", true, "Garden");
	settings.Add("gardenkey", true, "Royal Key");
	settings.Add("mist", true, "(Mist fragments)");
	settings.Add("saora", true, "Saora");
	settings.Add("catacombs", true, "Catacombs");
	settings.Add("itemuppercut", true, "Upper Dash");
	settings.Add("code", true, "Catacombs Code");
	settings.Add("frikka", true, "Frikka");
	settings.Add("gridelin", true, "Castle Mini-boss");
	settings.Add("itemdash", true, "Warp Dash");
	settings.Add("lust", true, "Lust");
	settings.Add("parushee", true, "Parushee");
	settings.Add("ending", true, "Ending");

	// Garden Mist Fragments
	settings.Add("fragment1", true, "Fragment 1", "mist");
	settings.Add("fragment2", true, "Fragment 2", "mist");
	settings.Add("fragment3", true, "Fragment 3", "mist");
	settings.Add("fragment4", true, "Fragment 4", "mist");

	// Catacomb Keys
	settings.Add("cellarkey1f", true, "B1F Key", "catacombs");
	settings.Add("cellarkey2f", true, "B2F Key", "catacombs");
	settings.Add("cellarkey3f", true, "B3F Key", "catacombs");
	settings.Add("cellarkey5f", true, "B5F Key", "catacombs");

	// ToolTips
	settings.SetToolTip("saora", "If checked it will split upon defeating Saora or performing the skip");
	settings.SetToolTip("lust", "If checked it will split upon defeating Lust or performing the skip");
	settings.SetToolTip("parushee", "If checked it will split upon defeating Boss2 or performing the skip");
	settings.SetToolTip("ending", "If checked it will split on Saint and Heretic endings");
}


init
{

	refreshRate = 60;

	string dll_path = modules.First().FileName + "\\..\\Minoria_Data\\Managed\\Assembly-CSharp.dll";
	
	long dll_size = new System.IO.FileInfo(dll_path).Length;
 
	print("Minoria: Version: " + dll_size.ToString());
	
	// Minoria: Version: 1280512  - 1.0

	switch (dll_size) {
	
		case 1280512:

			version = "v1.0";
			break;
		
		default:
		
			version = "Unrecognised";
			break;
	}

	// Once the Final boss dies there is a dialogue, this variable is to know if we are on that specific dialogue or not
	vars.PoemeDead = false;

	// Tracks if the player has collected a new item
	vars.NewItem = false;

	// Track if player has seen PinCs2
	vars.PinCs2Done = false;

	// Keeps track of how many garden crystals the player has destroyed
	vars.GardenCrystalsDone = 0;

	// Hashset to know on what items to split on
	vars.Items = new HashSet<string>() {
		/*Keys*/"churchkey2", "gardenkey", "cellarkey1f", "cellarkey2f", "cellarkey3f", "cellarkey5f",
		/*Upgrades*/"itemthrust", "itemuppercut", "itemdash"
	};

	// Hashset to hold the name of the Items collected
	vars.Inventory = new HashSet<string>();

	// HashSet to hold splits already hit
	// It prevents Livesplit from splitting on the same split multiple times
	vars.Splits = new HashSet<string>();
}


isLoading
{

	return (current.IsLoading == 1);
}


update
{

	// Clear any hit splits, Items collected and other variables if timer stops
	if (timer.CurrentPhase == TimerPhase.NotRunning)
	{

		vars.Splits.Clear();
		vars.Inventory.Clear();
		vars.PoemeDead = false;
		vars.PinCs2Done = false;
		vars.GardenCrystalsDone = 0;
	}


	// Update the number of items and add them to a HashSet if it's collected for the first time and the timer is running
	else
	{

		int i;
		if (current.Inventorysize > old.Inventorysize) {

			for (i = 0; i < current.Inventorysize; i++) {
				
				vars.ItemName = new StringWatcher(new DeepPointer("UnityPlayer.dll", 0x0143D440, 0x10, 0x248, 0x8, 0xB8, 0x8, 0x10, 0x10, 0x20 + i * 0x8, 0x10, 0x28, 0x26), 128);

				vars.ItemName.Update(game);

				if (!vars.Inventory.Contains(vars.ItemName.Current))
				{

					vars.NewItem = true;
					vars.Inventory.Add(vars.ItemName.Current);
				}
			}
		}
	}
}


start
{

	return (current.StartRun == 0 && old.StartRun == 1);
}


reset
{

    return (current.IsSelected == old.IsSelected && current.NewGame == 1 && old.NewGame == 0);
}


split
{

	// BOSSES
	if (current.LissetteMaxHp == 6000 && current.LissetteDead == 1 && old.LissetteDead == 0)
	{

		if (vars.Splits.Contains("Lissette"))
		{
			return false;
		}

		vars.Splits.Add("Lissette");
		return settings["lissette"];
	}


	if (current.DevoirMaxHp == 9500 && current.DevoirDead == 1 && old.DevoirDead == 0)
	{

		if (vars.Splits.Contains("Devoir"))
		{
			return false;
		}

		vars.Splits.Add("Devoir");
		return settings["devoir"];
	}

	if (current.SaoraMaxHp == 21000 && current.SaoraDead == 1 && old.SaoraDead == 0)
	{
		
		if (vars.Splits.Contains("Saora"))
		{
			return false;
		}

		vars.Splits.Add("Saora");
		return settings["saora"];
	}


	if (current.FrikkaMaxHp == 20000 && current.FrikkaDead == 1 && old.FrikkaDead == 0)
	{
		
		if (vars.Splits.Contains("Frikka"))
		{
			return false;
		}

		vars.Splits.Add("Frikka");
		return settings["frikka"];
	}

	if (current.GridelinMaxHp == 9000 && current.GridelinDead == 1 && old.GridelinDead == 0)
	{
		
		if (vars.Splits.Contains("Gridelin"))
		{
			return false;
		}

		vars.Splits.Add("Gridelin");
		return settings["gridelin"];
	}

	if (current.LustMaxHp == 30000 && current.LustDead == 1 && old.LustDead == 0)
	{
		
		if (vars.Splits.Contains("Lust"))
		{
			return false;
		}

		vars.Splits.Add("Lust");
		return settings["lust"];
	}

	if (current.ParusheeMaxHp == 31000 && current.ParusheeDead == 1 && old.ParusheeDead == 0)
	{
		
		if (vars.Splits.Contains("Parushee"))
		{
			return false;
		}

		vars.Splits.Add("Parushee");
		return settings["parushee"];
	}

	// Oversight: not resetting vars.PoemeDead value if player restarts the fight after defeating Poeme
	if (current.PoemeMaxHp == 25000 && current.PoemeDead == 1 && old.PoemeDead == 0 || vars.PoemeDead == true )
	{
	
		vars.PoemeDead = true;

		if (old.DialogueSelected == 0 && current.DialogueSelected == 0 && current.DialogueChoices == 1 && old.DialogueChoices == 2)
		{

			if (vars.Splits.Contains("Ending"))
			{
				return false;
			}

			vars.Splits.Add("Ending");
			return settings["ending"];
		}
	}

	if (current.AmeliaMaxHp == 13000 && current.AmeliaDead == 1 && old.AmeliaDead == 0)
	{
		
		if (vars.Splits.Contains("Ending"))
		{
			return false;
		}

		vars.Splits.Add("Ending");
		return settings["ending"];
	}
	// BOSSES END

	// MISC
	// Catacombs password
	if (current.PasswordNPC == 4 && old.PasswordNPC == 3)
	{
		
		if (vars.Splits.Contains("Code"))
		{
			return false;
		}

		vars.Splits.Add("Code");
		return settings["code"];
	}

	// Pin Garden Cutscene
	if (current.PinCs2 == 1 && old.PinCs2 == 0)
	{
		
		if (vars.Splits.Contains("Garden"))
		{
			return false;
		}

		vars.Splits.Add("Garden");
		vars.PinCs2Done = true;
		return settings["enterGarden"];
	}

	// Garden Crystal fragments
	if (vars.PinCs2Done == true && vars.GardenCrystalsDone < 4)
	{
		if (old. GardenCrystalFlag == 151 && old.GardenCrystalMaxHp == 400 && current.GardenCrystalMaxHp != 400)
		{
			
			if (vars.Splits.Contains("Fragment1"))
			{
				return false;
			}

			vars.Splits.Add("Fragment1");
			vars.GardenCrystalsDone++;
			return settings["fragment1"];
		}

		if (old. GardenCrystalFlag == 154 && old.GardenCrystalMaxHp == 500 && current.GardenCrystalMaxHp != 500)
		{
			
			if (vars.Splits.Contains("Fragment2"))
			{
				return false;
			}

			vars.Splits.Add("Fragment2");
			vars.GardenCrystalsDone++;
			return settings["fragment2"];
		}

		if (old. GardenCrystalFlag == 152 && old.GardenCrystalMaxHp == 500 && current.GardenCrystalMaxHp != 500)
		{
			
			if (vars.Splits.Contains("Fragment3"))
			{
				return false;
			}

			vars.Splits.Add("Fragment3");
			vars.GardenCrystalsDone++;
			return settings["fragment3"];
		}

		if (old. GardenCrystalFlag == 153 && old.GardenCrystalMaxHp == 400 && current.GardenCrystalMaxHp != 400)
		{
			
			if (vars.Splits.Contains("Fragment4"))
			{
				return false;
			}

			vars.Splits.Add("Fragment4");
			vars.GardenCrystalsDone++;
			return settings["fragment4"];
		}
	}

	// BOSS SKIPS
	// Check that the player has loaded a savefile or hit retry and is inside the desired location (Savepoint)
	if((current.GameOver == 1 && old.GameOver == 0) || (old.IsSelected == 1 && current.IsSelected == 0 && current.OptionSelected == 0 && old.OptionSelected == 0))
	{

		// Saora Skip
		if(current.PlayerXPos >= 868 && current.PlayerXPos <= 873 && current.PlayerYPos >= -8 && current.PlayerYPos <= -7)
		{
		
			if (vars.Splits.Contains("Saora"))
			{
				return false;
			}

			vars.Splits.Add("Saora");
			return settings["saora"];
		}

		// Lust Skip
		if(current.PlayerXPos >= -50 && current.PlayerXPos <= -45 && current.PlayerYPos >= 0 && current.PlayerYPos <= 1)
		{
		
			if (vars.Splits.Contains("Lust"))
			{
				return false;
			}

			vars.Splits.Add("Lust");
			return settings["lust"];
		}

		// Parushee Skip
		if(current.PlayerXPos >= 100 && current.PlayerXPos <= 105 && current.PlayerYPos >= 0 && current.PlayerYPos <= 1)
		{
		
			if (vars.Splits.Contains("Parushee"))
			{
				return false;
			}

			vars.Splits.Add("Parushee");
			return settings["parushee"];
		}
	}
	// BOSS SKIPS END

	// Items
	// Check if the collected item is the correct one
	if(vars.NewItem == true)
	{

		foreach (string Item in vars.Items) {

			if (vars.Inventory.Contains(Item))
			{

				if (!vars.Splits.Contains(Item))
				{

					vars.Splits.Add(Item);
					return settings[Item];
				}
			}
		}
		
		vars.NewItem = false;
	}
	// MISC END
}