// section team one, gunner and assistant
switch (_teamOneAlpha) do {

	// automatic rifle
	case "ar" : {
		_gunOneAlpha = "ar";
		_assOneAlpha = "aar";
	};

	// medium machinegun
	case "mmg" : {
		_gunOneAlpha = "mmg";
		_assOneAlpha = "mmgass";
	};

	// medium at
	case "mat" : {
		_gunOneAlpha = "matgun";
		_assOneAlpha = "matammo";
	};

	// heavy at
	case "hat" : {
		_gunOneAlpha = "hatgun";
		_assOneAlpha = "hatammo";
	};

	// heavy at
	case "aa" : {
		_gunOneAlpha = "aagun";
		_assOneAlpha = "aaammo";
	};

	// csw - heavy machinegun
	case "hmg" : {
		_gunOneAlpha = "hmggun";
		_assOneAlpha = "hmgass";
	};

	// csw - static heavy at
	case "shat" : {
		_gunOneAlpha = "shatgun";
		_assOneAlpha = "shatass";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAlpha)];
		_gunOneAlpha = "ar";
		_assOneAlpha = "aar";
	};
};

// section team two, gunner and assistant
switch (_teamTwoAlpha) do {
	case "ar" : {
		_gunTwoAlpha = "ar";
		_assTwoAlpha = "aar";
	};

	case "mmg" : {
		_gunTwoAlpha = "mmg";
		_assTwoAlpha = "mmgass";
	};

	case "mat" : {
		_gunTwoAlpha = "matgun";
		_assTwoAlpha = "matammo";
	};

	case "hat" : {
		_gunTwoAlpha = "hatgun";
		_assTwoAlpha = "hatammo";
	};

	case "hmg" : {
		_gunTwoAlpha = "hmggun";
		_assTwoAlpha = "hmgass";
	};

	case "shat" : {
		_gunTwoAlpha = "shatgun";
		_assTwoAlpha = "shatass";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneAplha)];
		_gunTwoAlpha = "ar";
		_assTwoAlpha = "aar";
	};
};

switch (_teamOneBravo) do {

	// automatic rifle
	case "ar" : {
		_gunOneBravo = "ar";
		_assOneBravo = "aar";
	};

	// medium machinegun
	case "mmg" : {
		_gunOneBravo = "mmg";
		_assOneBravo = "mmgass";
	};

	// medium at
	case "mat" : {
		_gunOneBravo = "matgun";
		_assOneBravo = "matammo";
	};

	// heavy at
	case "hat" : {
		_gunOneBravo = "hatgun";
		_assOneBravo = "hatammo";
	};

	// heavy at
	case "aa" : {
		_gunOneBravo = "aagun";
		_assOneBravo = "aaammo";
	};

	// csw - heavy machinegun
	case "hmg" : {
		_gunOneBravo = "hmggun";
		_assOneBravo = "hmgass";
	};

	// csw - static heavy at
	case "shat" : {
		_gunOneBravo = "shatgun";
		_assOneBravo = "shatass";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneBravo)];
		_gunOneBravo = "ar";
		_assOneBravo = "aar";
	};
};

// section team two, gunner and assistant
switch (_teamTwoBravo) do {
	case "ar" : {
		_gunTwoBravo = "ar";
		_assTwoBravo = "aar";
	};

	case "mmg" : {
		_gunTwoBravo = "mmg";
		_assTwoBravo = "mmgass";
	};

	case "mat" : {
		_gunTwoBravo = "matgun";
		_assTwoBravo = "matammo";
	};

	case "hat" : {
		_gunTwoBravo = "hatgun";
		_assTwoBravo = "hatammo";
	};

	case "hmg" : {
		_gunTwoBravo = "hmggun";
		_assTwoBravo = "hmgass";
	};

	case "shat" : {
		_gunTwoBravo = "shatgun";
		_assTwoBravo = "shatass";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneBravo)];
		_gunTwoBravo = "ar";
		_assTwoBravo = "aar";
	};
};

switch (_teamOneCharlie) do {

	// automatic rifle
	case "ar" : {
		_gunOneCharlie = "ar";
		_assOneCharlie = "aar";
	};

	// medium machinegun
	case "mmg" : {
		_gunOneCharlie = "mmg";
		_assOneCharlie = "mmgass";
	};

	// medium at
	case "mat" : {
		_gunOneCharlie = "matgun";
		_assOneCharlie = "matammo";
	};

	// heavy at
	case "hat" : {
		_gunOneCharlie = "hatgun";
		_assOneCharlie = "hatammo";
	};

	// heavy at
	case "aa" : {
		_gunOneCharlie = "aagun";
		_assOneCharlie = "aaammo";
	};

	// csw - heavy machinegun
	case "hmg" : {
		_gunOneCharlie = "hmggun";
		_assOneCharlie = "hmgass";
	};

	// csw - static heavy at
	case "shat" : {
		_gunOneCharlie = "shatgun";
		_assOneCharlie = "shatass";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneCharlie)];
		_gunOneCharlie = "ar";
		_assOneCharlie = "aar";
	};
};

// section team two, gunner and assistant
switch (_teamTwoCharlie) do {
	case "ar" : {
		_gunTwoCharlie = "ar";
		_assTwoCharlie = "aar";
	};

	case "mmg" : {
		_gunTwoCharlie = "mmg";
		_assTwoCharlie = "mmgass";
	};

	case "mat" : {
		_gunTwoCharlie = "matgun";
		_assTwoCharlie = "matammo";
	};

	case "hat" : {
		_gunTwoCharlie = "hatgun";
		_assTwoCharlie = "hatammo";
	};

	case "hmg" : {
		_gunTwoCharlie = "hmggun";
		_assTwoCharlie = "hmgass";
	};

	case "shat" : {
		_gunTwoCharlie = "shatgun";
		_assTwoCharlie = "shatass";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneCharlie)];
		_gunTwoCharlie = "ar";
		_assTwoCharlie = "aar";
	};
};

switch (_teamOneDelta) do {

	// automatic rifle
	case "ar" : {
		_gunOneDelta = "ar";
		_assOneDelta = "aar";
	};

	// medium machinegun
	case "mmg" : {
		_gunOneDelta = "mmg";
		_assOneDelta = "mmgass";
	};

	// medium at
	case "mat" : {
		_gunOneDelta = "matgun";
		_assOneDelta = "matammo";
	};

	// heavy at
	case "hat" : {
		_gunOneDelta = "hatgun";
		_assOneDelta = "hatammo";
	};

	// heavy at
	case "aa" : {
		_gunOneDelta = "aagun";
		_assOneDelta = "aaammo";
	};

	// csw - heavy machinegun
	case "hmg" : {
		_gunOneDelta = "hmggun";
		_assOneDelta = "hmgass";
	};

	// csw - static heavy at
	case "shat" : {
		_gunOneDelta = "shatgun";
		_assOneDelta = "shatass";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOneDelta)];
		_gunOneDelta = "ar";
		_assOneDelta = "aar";
	};
};

// section team two, gunner and assistant
switch (_teamTwoDelta) do {
	case "ar" : {
		_gunTwoDelta = "ar";
		_assTwoDelta = "aar";
	};

	case "mmg" : {
		_gunTwoDelta = "mmg";
		_assTwoDelta = "mmgass";
	};

	case "mat" : {
		_gunTwoDelta = "matgun";
		_assTwoDelta = "matammo";
	};

	case "hat" : {
		_gunTwoCharlie = "hatgun";
		_assTwoCharlie = "hatammo";
	};

	case "hmg" : {
		_gunTwoDelta = "hmggun";
		_assTwoDelta = "hmgass";
	};

	case "shat" : {
		_gunTwoDelta = "shatgun";
		_assTwoDelta = "shatass";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOneDelta)];
		_gunTwoDelta = "ar";
		_assTwoDelta = "aar";
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
if (_loadout in ["rmonealpha","rmtwoalpha","rmonebravo","rmtwoalphabravo","rmonecharlie","rmtwocharlie","rmonedelta","rmtwoalphadelta"]) then {
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