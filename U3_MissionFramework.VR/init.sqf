// ====================================================================================
// File: init.sqf
// Last Modified By: Mr. Agnet/Diabolical
// https://community.bistudio.com/wiki/init.sqf
// ====================================================================================
// Prevent mission exiting on zero tickets

bis_fnc_moduleRespawnTickets_end = false;

// ====================================================================================
// Wait until player exists

if (hasInterface) then { waitUntil { !isNull player && isPlayer player }; };

// ====================================================================================
// =============================== CONFIGURABLE VARIABLES =============================
// ====================================================================================
// Headless Client Parameter
// Dictates whether applicable scripts will run on the Headless Client or Server, primarily for testing purposes.

if (("HeadlessClient_Controller" call BIS_fnc_GetParamValue) == 1) then { r_var_headlessClient = true; } else { r_var_headlessClient = false; };

//=====================================================================================
// JIP Menu Scripts
// Needs to be changed to the respective gear script you are using, so JIP players can have the same gear as other players.

if (hasInterface) then {
	_side = toLower format ["%1", faction player];

	// BLUFOR
	if (_side == "BLU_F") then {
		r_fnc_assignGear = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_BLU.sqf";
	};
	// OPFOR
	if (_side == "OPF_F") then {
		r_fnc_assignGear = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_OPF.sqf";
	};
} else {
	// define for the assignGear script based spawner, which currently does not exist
	r_fnc_assignGear = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_BLU.sqf";
};

// ====================================================================================
// CratePicker
// defines for the cratepicker script based spawner, which currently exists via conveniently coloured flags

r_fnc_cratePicker_BLU = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_BLU.sqf";
r_fnc_cratePicker_OPF = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_OPF.sqf";

// ====================================================================================
// ========================== SCRIPTS AND FUNCTIONS ===================================
// ====================================================================================
// Mission Intro

["Mission Name", "Author", "Description | Terrain", ''] execVM "scripts\missionIntro.sqf";

// ====================================================================================
// Disable Saving and Auto Saving

enableSaving [false, false];

// ====================================================================================
// Mute Orders and Reports

enableSentences false;

//===================================================================================
// CLY remvoveDead disable for players

if (hasInterface) then { player setVariable ["CLY_removedead",false,true]; };

// ====================================================================================
// Briefing Script

[] execVM "u3_briefing.sqf";

//=====================================================================================
// Dead Cleanup
// [60,0,true] execVM "scripts\cly_removedead.sqf";
// [wait time for men,wait time for vehicles,remove units with gear (optional, default true)] execVM "scripts\cly_removedead.sqf";
// A wait time of 0 prevents that type from being removed.
// Prevent an individual unit from being removed:  this setVariable ["CLY_removedead",false,true]
// Remove an individual unit immediately upon death:  this setVariable ["CLY_removedead",true,true]

[300,0,true] execVM "scripts\cly_removeDead.sqf";

//=====================================================================================
//Change to opfor variables of using opfor framework (mhq_opf_#)
publicVariable "mhq_blu_1";
publicVariable "mhq_blu_2";