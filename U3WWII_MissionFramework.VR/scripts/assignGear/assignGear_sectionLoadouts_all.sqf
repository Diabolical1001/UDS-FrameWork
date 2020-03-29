// section team one, gunner and assistant
switch (_teamOneAlpha) do {

	// Machinegun Team
	case "mmg" : {
		_gunOneAlpha = "mmg";
		_assOneAlpha = "mmgass";
	};

	// Medium AT Team
	case "mat" : {
		_gunOneAlpha = "rmmat";
		_assOneAlpha = "rmmatass";
	};

	// Assault Team
	case "assault" : {
		_gunOneAlpha = "rmfour";
		_assOneAlpha = "rmthree";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAlpha)];
		_gunOneAlpha = "mmg";
		_assOneAlpha = "mmgass";
	};
};

// section team two, gunner and assistant
switch (_teamTwoAlpha) do {
	case "rmteamone" : {
		_gunTwoAlpha = "rmone";
		_assTwoAlpha = "rmtwo";
	};

	case "rmteamtwo" : {
		_gunTwoAlpha = "rmtwo";
		_assTwoAlpha = "rmthree";
	};

	case "assault" : {
		_gunTwoAlpha = "rmfour";
		_assTwoAlpha = "rmtwo";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAplha)];
		_gunTwoAlpha = "rmone";
		_assTwoAlpha = "rmtwo";
	};
};

// section team one, gunner and assistant
switch (_teamOneBravo) do {

	// Machinegun Team
	case "mmg" : {
		_gunOneBravo = "mmg";
		_assOneBravo = "mmgass";
	};

	// Medium AT Team
	case "mat" : {
		_gunOneBravo = "rmmat";
		_assOneBravo = "rmmatass";
	};

	// Assault Team
	case "assault" : {
		_gunOneBravo = "rmfour";
		_assOneBravo = "rmthree";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneBravo)];
		_gunOneBravo = "mmg";
		_assOneBravo = "mmgass";
	};
};

// section team two, gunner and assistant
switch (_teamTwoBravo) do {
	case "rmteamone" : {
		_gunTwoBravo = "rmone";
		_assTwoBravo = "rmtwo";
	};

	case "rmteamtwo" : {
		_gunTwoBravo = "rmtwo";
		_assTwoBravo = "rmthree";
	};

	case "assault" : {
		_gunTwoBravo = "rmfour";
		_assTwoBravo = "rmtwo";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAplha)];
		_gunTwoBravo = "rmone";
		_assTwoBravo = "rmtwo";
	};
};

// section team one, gunner and assistant
switch (_teamOneCharlie) do {

	// Machinegun Team
	case "mmg" : {
		_gunOneCharlie = "mmg";
		_assOneCharlie = "mmgass";
	};

	// Medium AT Team
	case "mat" : {
		_gunOneCharlie = "rmmat";
		_assOneCharlie = "rmmatass";
	};

	// Assault Team
	case "assault" : {
		_gunOneCharlie = "rmfour";
		_assOneCharlie = "rmthree";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneCharlie)];
		_gunOneCharlie = "mmg";
		_assOneCharlie = "mmgass";
	};
};

// section team two, gunner and assistant
switch (_teamTwoCharlie) do {
	case "rmteamone" : {
		_gunTwoCharlie = "rmone";
		_assTwoCharlie = "rmtwo";
	};

	case "rmteamtwo" : {
		_gunTwoCharlie = "rmtwo";
		_assTwoCharlie = "rmthree";
	};

	case "assault" : {
		_gunTwoCharlie = "rmfour";
		_assTwoCharlie = "rmtwo";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAplha)];
		_gunTwoCharlie = "rmone";
		_assTwoCharlie = "rmtwo";
	};
};

// section team one, gunner and assistant
switch (_teamOneDelta) do {

	// Machinegun Team
	case "mmg" : {
		_gunOneDelta = "mmg";
		_assOneDelta = "mmgass";
	};

	// Medium AT Team
	case "mat" : {
		_gunOneDelta = "rmmat";
		_assOneDelta = "rmmatass";
	};

	// Assault Team
	case "assault" : {
		_gunOneDelta = "rmfour";
		_assOneDelta = "rmthree";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneDelta)];
		_gunOneDelta = "mmg";
		_assOneDelta = "mmgass";
	};
};

// section team two, gunner and assistant
switch (_teamTwoDelta) do {
	case "rmteamone" : {
		_gunTwoDelta = "rmone";
		_assTwoDelta = "rmtwo";
	};

	case "rmteamtwo" : {
		_gunTwoDelta = "rmtwo";
		_assTwoDelta = "rmthree";
	};

	case "assault" : {
		_gunTwoDelta = "rmfour";
		_assTwoDelta = "rmtwo";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAplha)];
		_gunTwoDelta = "rmone";
		_assTwoDelta = "rmtwo";
	};
};

// set applicable loadouts
if (_loadout in ["gunonealpha","assonealpha","guntwoalpha","asstwoalpha","gunonebravo","assonebravo","guntwobravo","asstwobravo","gunonecharlie","assonecharlie","guntwocharlie","asstwocharlie","gunonedelta","assonedelta","guntwodelta","asstwodelta"]) then {
	switch (_loadout) do {

		// first team gunner
		case "gunonealpha" : {
			_loadout = _gunOneAlpha;
		};

		// first team assistant
		case "assonealpha" : {
			_loadout = _assOneAlpha;
		};

		// second team gunner
		case "guntwoalpha" : {
			_loadout = _gunTwoAlpha;
		};

		// second team assistant
		case "asstwoalpha" : {
			_loadout = _assTwoAlpha;
		};

		// first team gunner
		case "gunonebravo" : {
			_loadout = _gunOneBravo;
		};

		// first team assistant
		case "assonebravo" : {
			_loadout = _assOneBravo;
		};

		// second team gunner
		case "guntwobravo" : {
			_loadout = _gunTwoBravo;
		};

		// second team assistant
		case "asstwobravo" : {
			_loadout = _assTwoBravo;
		};

		// first team gunner
		case "gunonecharlie" : {
			_loadout = _gunOneCharlie;
		};

		// first team assistant
		case "assonecharlie" : {
			_loadout = _assOneCharlie;
		};

		// second team gunner
		case "guntwocharlie" : {
			_loadout = _gunTwoCharlie;
		};

		// second team assistant
		case "asstwocharlie" : {
			_loadout = _assTwoCharlie;
		};

		// first team gunner
		case "gunonedelta" : {
			_loadout = _gunOneDelta;
		};

		// first team assistant
		case "assonedelta" : {
			_loadout = _assOneDelta;
		};

		// second team gunner
		case "guntwodelta" : {
			_loadout = _gunTwoDelta;
		};

		// second team assistant
		case "asstwodelta" : {
			_loadout = _assTwoDelta;
		};
	};
};

// ============================================================================================================================
// Define variable rifleman roles in section

// set applicable loadouts
if (_loadout in ["rmonealpha","rmtwoalpha","rmonebravo","rmtwobravo","rmonecharlie","rmtwocharlie","rmonedelta","rmtwoalphadelta"]) then {
	switch (_loadout) do {

		// first team rifleman
		case "rmonealpha" : {
			_loadout = _rmOneAlpha;
		};

		// second team rifleman
		case "rmtwoalpha" : {
			_loadout = _rmTwoAlpha;
		};
		// first team rifleman
		case "rmonebravo" : {
			_loadout = _rmOneBravo;
		};

		// second team rifleman
		case "rmtwobravo" : {
			_loadout = _rmTwoBravo;
		};

		case "rmonecharlie" : {
			_loadout = _rmOneCharlie;
		};

		// second team rifleman
		case "rmtwocharlie" : {
			_loadout = _rmTwoCharlie;
		};
		// first team rifleman
		case "rmonedelta" : {
			_loadout = _rmOneDelta;
		};

		// second team rifleman
		case "rmtwodelta" : {
			_loadout = _rmTwoDelta;
		};
	};
};