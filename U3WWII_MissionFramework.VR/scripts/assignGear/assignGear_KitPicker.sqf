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
	["Platoon Sergeant","secco"],
	["Platoon FAC","pltfac"],
	["Platoon UAV Operator","pltuavop"],
	["Platoon Medic","pltmed"],

	// Section Roles
	["Section Commander","secco"],
	["Team Leader (2iC)","sectl"],
	["Automatic Rifleman","ar"],
	["Asst. Automatic Rifleman","aar"],
	["Rifleman","rm"],
	["Rifleman (AT)","rmat"],
	["Grenadier","gren"],
	["Designated Marksman","dmr"],
	["Machinegunner","mmg"],
	["Asst. Machinegunner","mmgass"],
		
	// Vehicles
	["Crew Commander","crewmander"],
	["Crewman","crewman"],
	["Rotary Wing Pilot","rotarypilot"],
	["Rotary Wing Aircrew","rotarycrew"],
	["Fixed Wing Pilot","fixedpilot"],
		
	// CSW and Weapons
	["MAT Gunner","matgun"],
	["MAT Assistant","matammo"],
	["HAT Gunner","hatgun"],
	["HAT Assistant","hatammo"],
	["AA Gunner","aagun"],
	["AA Assistant","aaammo"],
	["HMG Gunner","hmggun"],
	["HMG Assistant","hmgass"],
	["SHAT Gunner","shatgun"],
	["SHAT Assistant","shatass"],
		
	// Specialist Roles
	["Scoped Rifleman","rmsc"],
	["Breacher","brcr"],
	["Engineer","engi"],
	["Demo Specialist","demoman"],
	["Sniper","sniper"],
	["AM Sniper","amsniper"],
	["Spotter","spotter"],
	["Diver Team Leader","divertl"],
	["Diver","diver"]
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
