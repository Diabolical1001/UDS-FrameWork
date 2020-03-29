// ============================================================
// AssignGear Functions
// by Mr. Agnet
// - Defines all of the functions as used by the assignGear.sqf script.
// ============================================================
// Declares Variables

private ["_addClothes","_addBasics","_clearRuck","_addRuck","_IFAK","_postGearAssign","_addSidearm","_addSquadRadio"];

// ============================================================
// AddClothes
// - Adds basic clothes/vest/helmet etc. to a unit


_addClothes = {
	private ["_type"];
	_type = toLower (_this select 0);
	if (_rflmUniform != "") then { _unit forceAddUniform _rflmUniform; };
	if (_goggles != "") then { _unit addGoggles _goggles; };

	switch (_type) do {
		case "coy" : {
			removeUniform _unit;
			_unit forceAddUniform _coyUniform;
			_unit addHeadgear _coyHelmet;
			_unit addVest _coyVest;
		};
		case "sl" : {
			removeUniform _unit;
			_unit forceAddUniform _slUniform;
			_unit addHeadgear _slHelmet;
			_unit addVest _slVest;
		};
		case "tl" : {
			removeUniform _unit;
			_unit forceAddUniform _tlUniform;
			_unit addHeadgear _tlHelmet;
			_unit addVest _tlVest;
		};
		case "medic" : {
			removeUniform _unit;
			_unit forceAddUniform _medicUniform;
			_unit addHeadgear _medHelmet;
			_unit addVest _medicVest;
		};
		case "fo" : {
			removeUniform _unit;
			_unit forceAddUniform _tlUniform;
			_unit addHeadgear _slHelmet;
			_unit addVest _rflmvestOne;
		};
		case "expl" : {
			_unit addHeadgear _slHelmet;
			_unit addVest _rflmvestOne;
		};
		case "riflemanone" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmvestOne;
		};
		case "riflemantwo" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmvestTwo;
		};
		case "riflemanthree" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmvestThree;
		};
		case "riflemanfour" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmvestFour;
		};
		case "riflemanfive" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmvestFive;
		};
		case "riflemanfire" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _coyVest;
		};
		case "mg" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _gunnerVest;
		};
		case "spr" : {
			removeUniform _unit;
			_unit forceAddUniform _sniperUniform;
			_unit addHeadgear _sniperHelmet;
			_unit addVest _sniperVest;
		};
		case "sptr" : {
			removeUniform _unit;
			_unit forceAddUniform _sniperUniform;
			_unit addHeadgear _sniperHelmet;
			_unit addVest _rflmvestFive;
		};
		case "pilot" : {
			removeUniform _unit;
			_unit forceAddUniform _pilotUniform;
			_unit addHeadgear _pilotHelmet;
			_unit addVest _pilotVest;
		};
		case "crewcom" : {
			removeUniform _unit;
			_unit forceAddUniform _crewCommanderUniform;
			_unit addHeadgear _crewcomHelmet;
			_unit addVest _crewcomVest;
		};
		case "crew" : {
			removeUniform _unit;
			_unit forceAddUniform _crewUniform;
			_unit addHeadgear _crewHelmet;
			_unit addVest _crewVest;
		};
		default {
			hint format ["[ERROR] Incorrect clothes call: %2 for unit: %1", _unit, _type];
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmVest;
		};
	};
};

// ============================================================
// AddBasics

_addBasics = {
	private ["_bino"];
	_bino = toLower(_this select 0);
	_dev = toLower(_this select 1);
	sleep _delay;
	{ _unit linkItem _x } foreach _basicTools; 		// add and assign each of the basic tools
	{ _unit addItem _x } foreach _basicItems; 		// add each of the basic items, can't be assigned
	sleep _delay;
	switch (_bino) do {
		case "gerbino" : {
			_unit addWeapon _germanBinos;
		};
		case "rusbino" : {
			_unit addWeapon _russianBinos;
		};
		case "allbino" : {
			_unit addWeapon _alliedBinos;
		};
		case "none" : {
			// do nothing
		};
		default {
			hint format ["[ERROR] Incorrect binocular call: %2, for unit: %1", _unit, _bino];
		};
	};
};


// ============================================================
// ClearRuck
// - Empties a unit's ruck
// - Example: call _clearRuck;

_clearRuck = {
	clearWeaponCargoGlobal (unitBackpack _unit);
	clearMagazineCargoGlobal (unitBackpack _unit);
	clearItemCargoGlobal (unitBackpack _unit);
	sleep _delay;
};

// ============================================================
// AddRuck


_addRuck = {
	private ["_pack"];
	_pack = toLower(_this select 0);
	switch (_pack) do {
		case "coyruck" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeTwo,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeThree,1];
		};
		case "medicruck" : {
			_unit addBackpack _medicRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,30];	// bandages
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,10];	// morphine
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,10];	// epinephrine
			(unitBackpack _unit) addItemCargoGlobal [_bloodThree,6];	// bloodbag 1000
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,2];		// bloodbag 500
			(unitBackpack _unit) addItemCargoGlobal [_splint,10];		// splint 250
			(unitBackpack _unit) addItemCargoGlobal [_tourniquet,4];	// tourniquet 250
		};
		case "facruck" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeTwo,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeThree,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_riflefiveMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
		};

		case "slruck" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeTwo,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeThree,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_riflefiveMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
		};

		case "tlruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_riflefiveMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
		};
		case "tlusaruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_riflethreeMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
		};
		case "rmoneruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleoneMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "rmtworuck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifletwoMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "rmthreeruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_riflethreeMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "rmfourruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_riflefourMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "rmfiveruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_riflefiveMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "grenoneger" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleoneMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,10];
		};
		case "grenonerus" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleoneMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,10];
			(unitBackpack _unit) addItemCargoGlobal [_glattacment,1];
		};
		case "grenoneusa" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifletwoMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,10];
		};
		case "rmlatruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleoneMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "rmmatruck" : {
			_unit addBackpack _atRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_riflefiveMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_matMag,2];
		};
		case "mgruck" : {
			_unit addBackpack _mediumRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgTracerMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "mgassruck" : {
			_unit addBackpack _mediumRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgTracerMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifletwoMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "sniperruck" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_sniperMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenadeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokeOne,1];
		};
		case "pararuck" : {
			_unit addBackpack _parachute;
		};
		default {
			hint format ["[ERROR] Incorrect ruck call: %2, for unit: %1", _unit, _pack];
		};
	};
};

// ============================================================
// IFAK

_IFAK = {
	private ["_location"];
	_location = toLower(_this select 0);
	switch (_location) do {
		case "leader" : {
			for "_i" from 1 to 8 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _injectorOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _injectorTwo};
			for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet};
			for "_i" from 1 to 2 do {_unit addItemToUniform _splint};
		};
		case "general" : {
			for "_i" from 1 to 8 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _injectorOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet};
			for "_i" from 1 to 2 do {_unit addItemToUniform _splint};
		};
		default {
			for "_i" from 1 to 8 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _injectorOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet};
			for "_i" from 1 to 2 do {_unit addItemToUniform _splint};
		};
	};
};

// ============================================================
// Add Sidearm
// Adds loaded sidearm to unit
// Call: call _addSidearm;

_addSidearm = {
	_unit addMagazines [_pistolMag,4];
	_unit addWeapon _pistol;
};

// ============================================================
// Add Radio
// Waits for a bit, then adds TFAR radio
// Call: call _addSquadRadio;

_addSquadRadio = {
	sleep _delayRadio;
	_unit linkItem _squadRadio;
};

// ============================================================
// Post GearAssign
// Handles extra stuff, like cable ties, flashbangs and parachutes.
// Call: call_postGearAssign;

_postGearAssign = {

	// Radio Function
	call _addSquadRadio;

	// Display ACE Map Tools
	ace_maptools_mapTool_Shown = 2;

	// Reset Stamina
	_unit setStamina 200;
};

// ============================================================