// section team one, gunner and assistant
switch (_teamOne) do {

	// automatic rifle
	case "ar" : {
		_gunOne = "ar";
		_assOne = "aar";
	};

	// medium machinegun
	case "mmg" : {
		_gunOne = "mmg";
		_assOne = "mmgass";
	};

	// medium at
	case "mat" : {
		_gunOne = "matgun";
		_assOne = "matammo";
	};

	// heavy at
	case "hat" : {
		_gunOne = "hatgun";
		_assOne = "hatammo";
	};

	// heavy at
	case "aa" : {
		_gunOne = "aagun";
		_assOne = "aaammo";
	};

	// csw - heavy machinegun
	case "hmg" : {
		_gunOne = "hmggun";
		_assOne = "hmgass";
	};

	// csw - static heavy at
	case "shat" : {
		_gunOne = "shatgun";
		_assOne = "shatass";
	};

	// incorrect case
	default {
		systemChat format ["No or incorrectly defined Team One weaponry: %2, for unit: %1",_unit,toUpper (_teamOne)];
		_gunOne = "ar";
		_assOne = "aar";
	};
};

// section team two, gunner and assistant
switch (_teamTwo) do {
	case "ar" : {
		_gunTwo = "ar";
		_assTwo = "aar";
	};

	case "mmg" : {
		_gunTwo = "mmg";
		_assTwo = "mmgass";
	};

	case "mat" : {
		_gunTwo = "matgun";
		_assTwo = "matammo";
	};

	case "hat" : {
		_gunTwo = "hatgun";
		_assTwo = "hatammo";
	};

	case "hmg" : {
		_gunTwo = "hmggun";
		_assTwo = "hmgass";
	};

	case "shat" : {
		_gunTwo = "shatgun";
		_assTwo = "shatass";
	};

	default {
		systemChat format ["No or incorrectly defined Team Two weaponry: %2, for unit: %1",_unit,toUpper (_teamOne)];
		_gunTwo = "ar";
		_assTwo = "aar";
	};
};

// set applicable loadouts
if (_loadout in ["gunone","assone","guntwo","asstwo"]) then {
	switch (_loadout) do {

		// first team gunner
		case "gunone" : {
			_loadout = _gunOne;
		};

		// first team assistant
		case "assone" : {
			_loadout = _assOne;
		};

		// second team gunner
		case "guntwo" : {
			_loadout = _gunTwo;
		};

		// second team assistant
		case "asstwo" : {
			_loadout = _assTwo;
		};
	};
};

// ============================================================================================================================
// Define variable rifleman roles in section

// set applicable loadouts
if (_loadout in ["rmone","rmtwo"]) then {
	switch (_loadout) do {

		// first team rifleman
		case "rmone" : {
			_loadout = _rmOne;
		};

		// second team rifleman
		case "rmtwo" : {
			_loadout = _rmTwo;
		};
	};
};