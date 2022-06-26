// ============================================================
// CratePicker OPFOR Edition
// by Mr. Agnet
// - Cratepicker using Ares/Achilles dialogboxes
// - Uses the r_fnc_assignGear_OPF variable (from init.sqf) to determine which gear is assigned
// ============================================================

// Define variables
private ["_flag"];

// grab flag and add action
_flag = _this select 0;

// the whole script will be within the addaction command, since it doesn't need to rely on anything external
_flag addaction ["<t color='#dddd00'>" + "Spawn Crate" + "</t>", {

	private ["_dialog_title","_dialog_options","_dialogCount","_dialogResult","_loadoutArray","_loadoutstrings","_loadout","_location"];

	// Store caller (player) and action ID
	_player = _this select 1;
	_action = _this select 2;

	// define strings of loadout arrays - same as gear scripts
	// format is: [DISPLAY STRING,AMMOBOX CLASS,ASSIGNGEAR CASE]
	_loadoutArray = [
		["Resupply - Section", "section_o_ammo_f", "sectionammo"],
		["Resupply - Medical", "ace_medicalsupplycrate", "meds"],
		["Ammo - Rifle ", "rifle_ammo_o_f", "rifleammo"],
		["Ammo - GL", "gl_ammo_o_f", "glammo"],
		["Ammo - AR", "ar_ammo_o_f", "arammo"],
		["Ammo - MMG", "mg_ammo_o_f", "mmgammo"],
		["Ammo - DMR", "dmr_ammo_o_f", "dmrammo"],
		["Ammo - LAT", "lat_ammo_o_f", "latammo"],
		["Ammo - MAT", "mat_ammo_o_f", "matammo"],
		["Ammo - HAT", "hat_ammo_o_f", "hatammo"],
		["Ammo - AA", "aa_ammo_o_f", "aaammo"],
		["Ammo - Sniper", "Sniper_Ammo_o_F", "snipercrate"],
		["Ammo - AM Sniper", "Sniper_Ammo_b_F", "amsnipercrate"],
		["Explosives - Small", "sexplosives_ammo_o_f", "demosmall"],
		["Explosives - Large", "lexplosives_ammo_o_f", "demobig"],
		["Explosives - AP Mines", "apmines_ammo_o_f", "apmines"],
		["Explosives - AT Mines", "atmines_ammo_o_f", "atmines"],
		["Misc - Vehicle Ammo", "box_ind_ammoveh_f", "blank"]
	];

	// pull out the strings - to be used as option text
	_loadoutstrings = [];
	{ _loadoutstrings pushback (_x select 0); } foreach _loadoutArray;

	_dialog_title = "Resupply Crates";
	_dialog_options = [["COMBOBOX","Select Crate", _loadoutstrings]];

	_dialogResult = [_dialog_title, _dialog_options] call UDSI_fnc_createDialog;

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
	[[_location, _boxType, _loadout], { _crate = (_this select 1) createVehicle (_this select 0); [_crate, (_this select 2)] call r_fnc_cratePicker_OPF }] remoteExec ["spawn", 2, false];

}, [], 6, true, false, "", ""];


