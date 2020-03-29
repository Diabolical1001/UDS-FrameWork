private [
"_variant","_camoPattern","_headgear","_radioSelection",
"_delay","_delayRadio","_unit","_loadout",
"_rmOneAlpha","_teamOneAlpha","_rmTwoAlpha","_teamTwoAlpha","_rmOneBravo","_teamOneBravo","_rmTwoBravo","_teamTwoBravo","_rmOneCharlie","_teamOneCharlie","_rmTwoCharlie","_teamTwoCharlie","_rmOneDelta","_teamOneDelta","_rmTwoDelta","_teamTwoDelta",
"_gunOneAlpha","_assOneAlpha","_gunTwoAlpha","_assTwoAlpha","_gunOneBravo","_assOneBravo","_gunTwoBravo","_assTwoBravo","_gunOneCharlie","_assOneCharlie","_gunTwoCharlie","_assTwoCharlie","_gunOneDelta","_assOneDelta","_gunTwoDelta","_assTwoDelta"
];

// ============================================== Variables ===================================================================
// Enter desired default values here

_variant = "heer_early";     // weapon
_camoPattern = "m43_feld_grau";    // uniform
_headgear = "m42";	// helmet type
_radioSelection = "german";			// tfar radio selection

//Section Values

// Alpha
_rmOneAlpha = "rmone";					// rifleman loadout for first rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamOneAlpha = "mmg";					// weapons platform for first fireteam gunner/assistant - cases: mmg, mat, assault
_rmTwoAlpha = "rmtwo";					// rifleman loadout for second rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamTwoAlpha = "rmteamone";					// weapons platform for second fireteam gunner/assistant - cases: rmteamone, rmteamtwo, assault

// Bravo
_rmOneBravo = "rmone";					// rifleman loadout for first rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamOneBravo = "mmg";					// weapons platform for first fireteam gunner/assistant - cases: mmg, mat, assault
_rmTwoBravo = "rmtwo";					// rifleman loadout for second rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamTwoBravo = "rmteamone";					// weapons platform for second fireteam gunner/assistant - cases: rmteamone, rmteamtwo, assault

// Charlie
_rmOneCharlie = "rmone";					// rifleman loadout for first rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamOneCharlie = "mmg";					// weapons platform for first fireteam gunner/assistant - cases: mmg, mat, assault
_rmTwoCharlie = "rmtwo";					// rifleman loadout for second rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamTwoCharlie = "rmteamone";					// weapons platform for second fireteam gunner/assistant - cases: rmteamone, rmteamtwo, assault

// Delta
_rmOneDelta = "rmone";					// rifleman loadout for first rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamOneDelta = "mmg";					// weapons platform for first fireteam gunner/assistant - cases: mmg, mat, assault
_rmTwoDelta = "rmtwo";					// rifleman loadout for second rifleman - recommended cases: rmone, rmtwo, rmthree, rmfour, rmfive, gren, rmlat
_teamTwoDelta = "rmteamone";					// weapons platform for second fireteam gunner/assistant - cases: rmteamone, rmteamtwo, assault

// ============================================================================================================================
// Variable Assignment

_delay = 0.1;
_delayRadio = 8;
_unit = _this select 0;
_loadout = toLower (_this select 1);
if ((count _this > 2)) then { if (typeName (_this select 2) == "STRING") then { _team = _this select 2; }; };

// ============================================================================================================================
// Define variable gunner/assistant roles in section

#include "assignGear_sectionLoadouts_ger.sqf";

// ============================================================================================================================

// waits until mission has started, make sure unit exists, or wait until it does
waitUntil {time > 1};
if (_unit != _unit) then { waitUntil { !isNull _unit; }; };
if (!isDedicated && isMultiplayer) then { waitUntil { !isNull _unit; }; };
if ((!isDedicated && isMultiplayer) && (_unit isKindOf "Man")) then { waitUntil { !isNull _unit && isPlayer _unit; }; };

// disable AI stuffs
if ((_unit isKindOf "Man") && !(isPlayer _unit)) then { {_unit disableAI _x} forEach ["TARGET","AUTOTARGET","MOVE","FSM","ANIM"]; };

// script needs to run on the unit/player's computer - if the unit is a player, then server exits. If not, then player exits.
if (!(local _unit)) exitWith {};
if ((isMultiplayer && isServer) && isPlayer _unit) exitWith {};
if ((isMultiplayer && !isServer) && !isPlayer _unit) exitWith {};

// ============================================================================================================================
// Include files for weapons, uniforms, functions and tools

// variable includes, alter these for different equipment
#include "weapons\weapons_german.sqf";   		// weapons classes
#include "uniforms\uniforms_German.sqf"; 		// uniform classes

// fixed includes, do not alter
#include "uniforms\tfar_radios.sqf"		   // radio classes

// general includes
#include "assignGear_Functions.sqf";		// functions used by the gear script
#include "assignGear_GenericItems.sqf";		// tools and miscellaneous items assigned to players

// ============================================================================================================================
// Gear Roles/Cargo Contents
// - Uses a Switch Statement to define roles.
// - Includes roles both for players and things like ammo crates and vehicles.
// - Peforms a check to see if the unit is a man or not.
// - NOTE: roles intended for players ('man' entities) may not work correctly on crates or vehicles, and vice versa.
// ================================================================================================================================================================
// If unit is a man then use this switch

if (_unit isKindOf "Man") then {

	// Gear Removal
	if (_rflmUniform != "") then { removeUniform _unit; };
	if (_goggles != "") then { removeGoggles _unit; };
	removeAllItems _unit;
	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeVest _unit;
	removeHeadgear _unit;
	removeBackpack _unit;

	switch (_loadout) do {
		// ========================================
		// =========== Platoon HQ Roles ===========
		// ========================================
		// PltCO/PltSGT
		case "pltld" : {
			["coy"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _riflefiveMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _riflefiveMagt};
			_unit addWeapon _rifleFive;
			call _addSidearm;
			["coyruck"] call _addRuck;
			["leader"] call _IFAK;
		};
		// Plt Medic - doubles for COY Medic
		case "pltmed" : {
			["medic"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _smokeOne};
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleoneMag};
			for "_i" from 1 to 20 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 8 do {_unit addItemToUniform _injectorOne};
			for "_i" from 1 to 4 do {_unit addItemToUniform _injectorTwo};
			for "_i" from 1 to 4 do {_unit addItemToUniform _tourniquet};
			for "_i" from 1 to 6 do {_unit addItemToUniform _splint};
			_unit addWeapon _rifleOne;
			_unit addItemToVest _rifleoneBayo;
			call _addSidearm;
			["medicruck"] call _addRuck;
		};
		// Plt FAC/FO - doubles for COY FAC/FO
		case "pltfac" : {
			["fo"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 8 do {_unit addItemToVest _riflefiveMag};
			_unit addWeapon _rifleFive;
			call _addSidearm;
			["facruck"] call _addRuck;
			["leader"] call _IFAK;
		};

		// ========================================
		// ============ Section Roles =============
		// ========================================
		// Section Commander
		case "secco" : {
			["sl"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 6 do {_unit addItemToVest _riflefiveMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _riflefiveMagt};
			_unit addWeapon _rifleFive;
			call _addSidearm;
			["slruck"] call _addRuck;
			["leader"] call _IFAK;
		};
		// Section Team Leader / 2iC
		case "sectl" : {
			["tl"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 6 do {_unit addItemToVest _riflefiveMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _riflefiveMagt};
			_unit addWeapon _rifleFive;
			call _addSidearm;
			["tlruck"] call _addRuck;
			["leader"] call _IFAK;
		};
		// Rifleman One Bolt
		case "rmone" : {
			["riflemanone"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleoneMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleoneMagt};
			_unit addWeapon _rifleOne;
			_unit addItemToVest _rifleoneBayo;
			["rmoneruck"] call _addRuck;
			["general"] call _IFAK;
		};
		// Rifleman Two semi one
		case "rmtwo" : {
			["riflemantwo"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 6 do {_unit addItemToVest _rifletwoMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifletwoMagt};
			_unit addWeapon _rifleTwo;
			["rmtworuck"] call _addRuck;
			["general"] call _IFAK;
		};
		// Rifleman Three semi two
		case "rmthree" : {
			["riflemanthree"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 6 do {_unit addItemToVest _riflethreeMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _riflethreeMagt};
			_unit addWeapon _rifleThree;
			["rmthreeruck"] call _addRuck;
			["general"] call _IFAK;
		};
		// Rifleman Four Assault
		case "rmfour" : {
			["riflemanfour"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 6 do {_unit addItemToVest _riflefourMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _riflefourMagt};
			_unit addWeapon _rifleFour;
			["rmfourruck"] call _addRuck;
			["general"] call _IFAK;
		};
		// Rifleman Five PDW
		case "rmfive" : {
			["riflemanfive"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 6 do {_unit addItemToVest _riflefiveMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _riflefiveMagt};
			_unit addWeapon _rifleFive;
			["rmfiveruck"] call _addRuck;
			["general"] call _IFAK;
		};
		// Grenadier 1
		case "gren" : {
			["riflemanone"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleoneMag};
			_unit addWeapon _rifleOne;
			_unit addPrimaryWeaponItem _glattacment;
			["grenoneger"] call _addRuck;
			["general"] call _IFAK;
		};
		// rifleman LAT
		case "rmlat" : {
			["riflemanone"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleoneMag};
			_unit addWeapon _rifleOne;
			_unit addWeapon _lat;
			["rmlatruck"] call _addRuck;
			["general"] call _IFAK;
		};
		// rifleman MAT
		case "rmmat" : {
			["riflemanfive"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 8 do {_unit addItemToVest _riflefiveMag};
			_unit addWeapon _rifleFive;
			_unit addWeapon _mat;
			["rmmatruck"] call _addRuck;
			["general"] call _IFAK;
		};
		// rifleman MAT ASS
		case "rmmatass" : {
			["riflemantwo"] call _addClothes;
			["gerbino"] call _addBasics;
			for "_i" from 1 to 8 do {_unit addItemToVest _rifletwoMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifletwoMagt};
			_unit addWeapon _rifleTwo;
			["rmmatruck"] call _addRuck;
			["general"] call _IFAK;
		};
		case "mmg" : {
			["mg"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 2 do {_unit addItemToVest _mmgMag};
			for "_i" from 1 to 1 do {_unit addItemToVest _mmgTracerMag};
			_unit addWeapon _mmg;
			call _addSidearm;
			["mgruck"] call _addRuck;
			["general"] call _IFAK;
		};
		case "mmgass" : {
			["riflemantwo"] call _addClothes;
			["gerbino"] call _addBasics;
			for "_i" from 1 to 6 do {_unit addItemToVest _rifletwoMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifletwoMagt};
			_unit addWeapon _rifleTwo;
			["mgassruck"] call _addRuck;
			["general"] call _IFAK;
		};
		case "spotter" : {
			["sptr"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 6 do {_unit addItemToVest _rifletwoMag};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifletwoMagt};
			_unit addWeapon _rifleTwo;
			["facruck"] call _addRuck;
			["leader"] call _IFAK;
		};
		case "sniper" : {
			["spr"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 8 do {_unit addItemToVest _sniperMag};
			_unit addWeapon _sniper;
			call _addSidearm;
			["sniperruck"] call _addRuck;
			["general"] call _IFAK;
		};
		case "crewmander" : {
			["crewcom"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _riflefiveMag};
			_unit addWeapon _rifleFive;
			call _addSidearm;
			["coyruck"] call _addRuck;
			["leader"] call _IFAK;
		};
		case "crewman" : {
			["crew"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 6 do {_unit addItemToVest _riflefiveMag};
			_unit addWeapon _rifleFive;
			["general"] call _IFAK;
		};
		case "fixedpilot" : {
			["pilot"] call _addClothes;
			["gerbino"] call _addBasics;
			{ _unit linkItem _x } foreach _leaderItems;
			call _addSidearm;
			["pararuck"] call _addRuck;
			["leader"] call _IFAK;
		};

		// ========================================
		// if undefined or incorrectly defined, give hint and assign standard rifleman gear
		default {
			_unit groupChat format ["No or incorrectly defined loadout: %2, for unit: %1",_unit,toUpper (_loadout)];
			["riflemanone"] call _addClothes;
			["none"] call _addBasics;
		};
		// ========================================
	};
	// ========================================
	// Post Gear Assign Function, handles misc stuff.

	call _postGearAssign;

	// ========================================
	// AssignGear Finisher

	_unit setVariable ["Ace_medical_medicClass", 1, true];				// sets unit as medic
	[_unit,_insignia] call bis_fnc_setUnitInsignia;						// sets unit uniform insignia
	_unit selectWeapon (primaryWeapon _unit);							// selects unit's primary weapon
	_unit switchMove "AmovPercMstpSlowWrflDnon";						// sets stance with weapon lowered
	sleep _delay;														// wait a sec
	_unit groupChat format ["%1 completed gear assign.", name _unit];	// hint that unit has finished gear assign

	// ========================================
};

// ================================================================================================================================================================
// If unit isn't a man, then fill it with this stuff.

if (!(_unit isKindOf "Man")) then {

	// clear crate cargo
	clearMagazineCargoGlobal _unit;
	clearWeaponCargoGlobal _unit;
	clearBackpackCargoGlobal _unit;
	clearItemCargoGlobal _unit;

	switch (_loadout) do {
		// ========================================
		// ============= Ammo Only Crates =========
		// ========================================

		case "sectionammo" : {
			_unit addMagazineCargoGlobal [_rifleoneMag,30];
			_unit addMagazineCargoGlobal [_rifleoneMagt,6];
			_unit addMagazineCargoGlobal [_rifletwoMag,20];
			_unit addMagazineCargoGlobal [_rifletwoMagt,4];
			_unit addMagazineCargoGlobal [_riflethreeMag,20];
			_unit addMagazineCargoGlobal [_riflethreeMagt,2];
			_unit addMagazineCargoGlobal [_riflefourMag,16];
			_unit addMagazineCargoGlobal [_riflefourMagt,2];
			_unit addMagazineCargoGlobal [_riflefiveMag,16];
			_unit addMagazineCargoGlobal [_riflefiveMagt,2];
			_unit addMagazineCargoGlobal [_fireMag,4];
			_unit addMagazineCargoGlobal [_glExplody,10];
			_unit addMagazineCargoGlobal [_grenadeOne,16];
			_unit addMagazineCargoGlobal [_grenadeTwo,2];
			_unit addMagazineCargoGlobal [_smokeOne,16];
			_unit addMagazineCargoGlobal [_smokeTwo,4];
			_unit addMagazineCargoGlobal [_smokeThree,4];
			_unit addMagazineCargoGlobal [_grenadeAt,2];
			_unit addMagazineCargoGlobal [_pistolMag,12];
			_unit addMagazineCargoGlobal [_sniperMag,12];
			_unit addItemCargoGlobal [_bandageOne,20];
			_unit addItemCargoGlobal [_injectorOne,4];
			_unit addItemCargoGlobal [_tourniquet,6];
			_unit addItemCargoGlobal [_splint,6];
		};
		case "rifleammo" : {
			_unit addMagazineCargoGlobal [_rifleoneMag,30];
			_unit addMagazineCargoGlobal [_rifleoneMagt,6];
			_unit addMagazineCargoGlobal [_rifletwoMag,20];
			_unit addMagazineCargoGlobal [_rifletwoMagt,4];
			_unit addMagazineCargoGlobal [_riflethreeMag,20];
			_unit addMagazineCargoGlobal [_riflethreeMagt,2];
			_unit addMagazineCargoGlobal [_riflefourMag,16];
			_unit addMagazineCargoGlobal [_riflefourMagt,2];
			_unit addMagazineCargoGlobal [_riflefiveMag,16];
			_unit addMagazineCargoGlobal [_riflefiveMagt,2];
			_unit addMagazineCargoGlobal [_grenadeOne,4];
			_unit addMagazineCargoGlobal [_smokeOne,2];
		};
		case "mmgammo" : {
			_unit addMagazineCargoGlobal [_mmgMag,_mmgboxMagCount];
			_unit addMagazineCargoGlobal [_mmgTracerMag,4];
			_unit addMagazineCargoGlobal [_grenadeOne,4];
			_unit addMagazineCargoGlobal [_smokeOne,4];
		};
		case "latammo" : {
			_unit addWeaponCargoGlobal [_lat,3];
			if (_latMag != "") then { _unit addMagazineCargoGlobal [_latMag,4]; };
		};
		case "matammo" : {
			_unit addMagazineCargoGlobal [_matMag,4];
			_unit addMagazineCargoGlobal [_grenadeOne,4];
			_unit addMagazineCargoGlobal [_smokeOne,2];
		};

		// ========================================
		// =========== Medical Supplies ===========
		// ========================================

		case "meds" : {
			_unit addItemCargoGlobal [_injectorOne,25];
			_unit addItemCargoGlobal [_injectorTwo,18];
			_unit addItemCargoGlobal [_bandageOne,60];
			_unit addItemCargoGlobal [_bloodOne,12];
			_unit addItemCargoGlobal [_bloodTwo,12];
			_unit addItemCargoGlobal [_bloodThree,12];
			_unit addItemCargoGlobal [_tourniquet,8];
			_unit addItemCargoGlobal [_splint,20];
		};

		// ========================================
		// ============== Explosives ==============
		// ========================================

		case "atmines" : {
			_unit addItemCargoGlobal [_atmineMag,8];
		};
		case "apmines" : {
			_unit addItemCargoGlobal [_apmineoneMag,8];
			_unit addItemCargoGlobal [_apminetwoMag,6];
		};
		case "demo" : {
			_unit addItemCargoGlobal [_demoMag,4];
			_unit addItemCargoGlobal [_detonator,2];
			_unit addItemCargoGlobal [_fuseCord,2];
			_unit addItemCargoGlobal [_sapperTools,1];
		};

		// ========================================
		// If no or incorrect case, present message.
		default {
			 systemChat format ["No or incorrectly defined loadout: %2,for box: %1",_unit,toUpper (_loadout)];
		};
		// ========================================
	};
};

// ================================================================================================================================================================