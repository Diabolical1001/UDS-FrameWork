// ============================================================
// AssignGear Functions
// by Mr. Agnet
// - Kitpicker rewrite using Ares/Achilles dialogboxes
// - Uses the r_fnc_assignGear variable (from init.sqf) to determine which gear is assigned
// ============================================================

private ["_dialog_title","_dialog_options","_dialogCount","_dialogResult","_loadoutArray","_loadoutstrings","_loadout","_player","_action"];

// store caller (player) and action ID
_player = _this select 1;
_action = _this select 2;

// define strings of loadout arrays - same as gear scripts. Format is: [DISPLAY STRING,GEARSCRIPT STRING]
_loadoutArray = [

	// Platoon Roles
	["Platoon Commander","pltld"],
	["Platoon FAC","pltfac"],
	["Platoon Medic","pltmed"],

	// Section Roles
	["Squad Leader","secco"],
	["Team Leader","sectl"],
	["Rifleman One (Bolt)","rmone"],
	["Rifleman Two (Semi)","rmtwo"],
	["Rifleman Three (Semi)","rmthree"],
	["Rifleman Four (Assault)","rmfour"],
	["Rifleman Five (Sub)","rmfive"],
	["Grenadier","gren"],
	["Light Anti-Tank","rmlat"],
	["Medium Anti-Tank","rmmat"],
	["Mediaum Anti-Tank Ass","rmmatass"],
	["Machinegunner","mmg"],
	["Machinegunner Ass","mmgass"],
	["Sniper Spotter","spotter"],
	["Sniper","sniper"],

	// Vehicles
	["Crew Commander","crewmander"],
	["Crewman","crewman"],
	["Pilot","fixedpilot"]
];

// pull out the strings - to be used as option text
_loadoutstrings = [];
{_loadoutstrings pushback (_x select 0);} foreach _loadoutArray;

_dialog_title = "Kit Picker - Select your Role";
_dialog_options = [["Select Kit",_loadoutstrings]];

_dialogResult = [_dialog_title, _dialog_options] call Ares_fnc_ShowChooseDialog;

// selection is cancelled
_dialogCount = count _dialogResult;
if (_dialogCount == 0) exitWith {};

// selection is made
_ZNum = (_dialogResult select 0);

// the selection number is now stored in _ZNum. Apply to _loadoutArray to pull out loadout string
_loadout = (_loadoutArray select _ZNum) select 1;

// fire gear script
[_player,_loadout] call r_fnc_assignGear;
