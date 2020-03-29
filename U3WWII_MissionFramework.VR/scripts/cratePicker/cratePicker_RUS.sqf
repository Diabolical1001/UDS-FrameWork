// ============================================================
// CratePicker BLUFOR Edition
// by Mr. Agnet
// - Cratepicker using Ares/Achilles dialogboxes
// - Uses the r_fnc_assignGear_BLU variable (from init.sqf) to determine which gear is assigned
// ============================================================

// Define variables
private ["_flag"];

// grab flag and add action
_flag = _this select 0;

// the whole script will be within the addaction command, since it doesn't need to rely on anything external
_flag addaction ["<t color='#dddd00'>" + "Spawn Crate" + "</t>", {

	private ["_dialog_title","_dialog_options","_dialogCount","_dialogResult","_loadoutArray","_loadoutstrings","_loadout","_location"];

	// store caller (player) and action ID
	_player = _this select 1;
	_action = _this select 2;

	// define strings of loadout arrays - same as gear scripts
	// format is: [DISPLAY STRING,AMMOBOX CLASS,ASSIGNGEAR CASE]
	_loadoutArray = [
		["Resupply - Squad", "Section_ru_Ammo_F", "sectionammo"],
		["Resupply - Medical", "ace_medicalsupplycrate", "meds"],
		["Ammo - Rifle ", "Rifle_Ammo_ru_F", "rifleammo"],
		["Ammo - MMG", "MG_Ammo_ru_F", "mmgammo"],
		["Ammo - LAT", "LAT_Ammo_ru_F", "latammo"],
		["Ammo - MAT", "MAT_Ammo_ru_F", "matammo"],
		["Explosives - Demo", "LExplosives_Ammo_ru_F", "demo"],
		["Explosives - AP Mines", "LExplosives_Ammo_ru_F", "apmines"],
		["Explosives - AT Mines", "LExplosives_Ammo_ru_F", "atmines"]
	];

	// pull out the strings - to be used as option text
	_loadoutstrings = [];
	{ _loadoutstrings pushback (_x select 0); } foreach _loadoutArray;

	_dialog_title = "Crate Picker";
	_dialog_options = [["Select Crate", _loadoutstrings]];

	_dialogResult = [_dialog_title, _dialog_options] call Ares_fnc_ShowChooseDialog;

	// selection is cancelled
	_dialogCount = count _dialogResult;
	if (_dialogCount == 0) exitWith {};

	// selection is made
	_ZNum = (_dialogResult select 0);

	// the selection number is now stored in _ZNum. Apply to _loadoutArray to pull out box type string
	_boxType = (_loadoutArray select _ZNum) select 1;

	// and the loadout string, for assigngear function
	_loadout = (_loadoutArray select _ZNum) select 2;

	// spawn crate and run the loadout script on it - execute on server
	_location = player modeltoworld [1, 0, 0];
	[[_location, _boxType, _loadout], { _crate = (_this select 1) createVehicle (_this select 0); [_crate, (_this select 2)] call r_fnc_cratePicker_RUS }] remoteExec ["spawn", 2, false];

}, [], 6, true, false, "", ""];


