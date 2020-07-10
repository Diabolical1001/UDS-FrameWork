private [
"_nightGear","_scopes","_muzzles","_pointers","_grips","_headgear","_parachutes","_flashbangs","_incendiarys","_cableTies","_radioSelection","_underwaterWeapons","_subSonicAmmo",
"_delay","_delayRadio","_unit","_loadout",
"_rmOneAlpha","_teamOneAlpha","_rmTwoAlpha","_teamTwoAlpha","_rmOneBravo","_teamOneBravo","_rmTwoBravo","_teamTwoBravo","_rmOneCharlie","_teamOneCharlie","_rmTwoCharlie","_teamTwoCharlie","_rmOneDelta","_teamOneDelta","_rmTwoDelta","_teamTwoDelta",
"_gunOneAlpha","_assOneAlpha","_gunTwoAlpha","_assTwoAlpha","_gunOneBravo","_assOneBravo","_gunTwoBravo","_assTwoBravo","_gunOneCharlie","_assOneCharlie","_gunTwoCharlie","_assTwoCharlie","_gunOneDelta","_assOneDelta","_gunTwoDelta","_assTwoDelta"
];

// ============================================== Variables ===================================================================
// Enter desired default values here

_nightGear = false;					// nvgs
_variant = "m16a4_carryhandle";     // weapon
_scopes = 0; 						// 0 - none, 1 - reflex, 2 - optic
_muzzles = 0;         				// 0 - none, 1 - muzzle, 2 - suppressor
_pointers = 0;						// 0 - none, 1 - lights, 2 - ir pointer
_grips = false;						// adds grips to most rhs weapons
_launcher = "usmc";					// launchers statics
_camoPattern = "usmc_marpat_wd";    // uniform
_headgear = "lwh_helmet_marpatwd";	// helmet type
_parachutes = "none";				// Available cases: "steerable", "nonsteerable", "none".
_flashbangs = 0;					// add number for amount
_incendiarys = 0;					// add number for amount
_cableTies = 0;						// add number for amount
_radioSelection = "rhs_us";			// tfar radio selection
_underwaterWeapons = true;
_subSonicAmmo = false;				// whether subsonic ammo gets assigned

//Section Values

// Alpha
_rmOneAlpha = "gren";					// rifleman loadout for first rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default gren
_teamOneAlpha = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar
_rmTwoAlpha = "rmat";					// rifleman loadout for second rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default rmat
_teamTwoAlpha = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar

// Bravo
_rmOneBravo = "gren";					// rifleman loadout for first rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default gren
_teamOneBravo = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar
_rmTwoBravo = "rmat";					// rifleman loadout for second rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default rmat
_teamTwoBravo = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar

// Charlie
_rmOneCharlie = "gren";					// rifleman loadout for first rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default gren
_teamOneCharlie = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar
_rmTwoCharlie = "rmat";					// rifleman loadout for second rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default rmat
_teamTwoCharlie = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar

// Delta
_rmOneDelta = "gren";					// rifleman loadout for first rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default gren
_teamOneDelta = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar
_rmTwoDelta = "rmat";					// rifleman loadout for second rifleman - recommended cases: rm, rmat, gren, brcr, dmr, rmsc - default rmat
_teamTwoDelta = "ar";					// weapons platform for first fireteam gunner/assistant - cases: ar, mmg, mat, hat, aa, hmg, shat - defaults to ar

// ============================================================================================================================
// Variable Assignment

_delay = 0.1;
_delayRadio = 8;
_unit = _this select 0;
_loadout = toLower (_this select 1);
if ((count _this > 2)) then { if (typeName (_this select 2) == "STRING") then { _team = _this select 2; }; };

// ============================================================================================================================
// Define variable gunner/assistant roles in section

#include "assignGear_sectionLoadouts.sqf";

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
#include "weapons\weapons_AR.sqf";   		// weapons classes
#include "uniforms\uniforms_USAF.sqf"; 		// uniform classes

// fixed includes, do not alter
#include "weapons\launchers_statics.sqf";  // launcher classes
#include "uniforms\tfar_radios.sqf"		   // radio classes

// general includes
#include "assignGear_Functions.sqf";		// functions used by the gear script
#include "assignGear_GenericItems.sqf";		// tools and miscellaneous items assigned to players

// ============================================================================================================================

// swap ammo types to subsonic if suppressors are enabled
if ((_muzzles == 2) && _subSonicAmmo) then {
	_rifleMag = _rifleSubsonicMag;
	_rifleGLMag = _rifleSubsonicMag;
	_autoRifleMag = _autoSubsonicMag;
};

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
			["commander"] call _addClothes;
			["westrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			_unit addMagazines [_rifleMag,4];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifle;
			call _addSidearm;
			["plt"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Plt Medic - doubles for COY Medic
		case "pltmed" : {
			["medic"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 4 do {_unit addItemToUniform _smokeOne};
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag};
			for "_i" from 1 to 10 do {_unit addItemToVest _bandageOne};
			for "_i" from 1 to 10 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 4 do {_unit addItemToUniform _injectorOne};
			for "_i" from 1 to 4 do {_unit addItemToUniform _injectorTwo};
			_unit addWeapon _rifle;
			call _addSidearm;
			["medic"] call _addRuck;
			["general",false,false,false] call _addAttachments;
		};
		// Plt FAC/FO - doubles for COY FAC/FO
		case "pltfac" : {
			["rflm"] call _addClothes;
			["westdesignator"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			_unit addItemToVest _dagr;
			_unit addItemToVest _westrangefinder;
			_unit addMagazines [_rifleMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifleGL;
			["fac"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Plt UAV Operator
		case "pltuavop" : {
			["rflm"] call _addClothes;
			["westdesignator"] call _addBasics;
			_unit addItemToUniform _uavBat;
			_unit addItemToUniform _designatorBat;
			_unit addItemToVest _uavTool;
			_unit addItemToVest _dagr;
			_unit addItemToVest _westrangefinder;
			_unit addMagazines [_rifleMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifle;
			call _addSidearm;
			["uavop"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};

		// ========================================
		// ============ Section Roles =============
		// ========================================
		// Section Commander
		case "secco" : {
			["secco"] call _addClothes;
			["westrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			_unit addMagazines [_rifleMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifle;
			call _addSidearm;
			["plt"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Section Team Leader / 2iC
		case "sectl" : {
			["teamleader"] call _addClothes;
			["westrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			_unit addMagazines [_rifleGLMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addMagazines [_glExplody,4];
			_unit addMagazines [_glSmokeOne,2];
			_unit addWeapon _rifleGL;
			call _addSidearm;
			["tl"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Automatic Rifleman
		case "ar" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_autoRifleMag,_arMagCount];
			_unit addWeapon _autoRifle;
			_unit addMagazine _autoTracerMag;
			call _addSidearm;
			["ar"] call _addRuck;
			["ar",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Assistant Automatic Rifleman
		case "aar" : {
			["rflm"] call _addClothes;
			["binocular"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["aar"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Rifleman
		case "rm" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["rm"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		case "brcr" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_shottyBuck,6];
			_unit addMagazines [_shottySlug,6];
			_unit addWeapon _shotty;
			["brcr"] call _addRuck;
			["uniform"] call _IFAK;
		};
		// Rifleman
		case "rmammo" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["rmammo"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Rifleman (disposable light AT)
		case "rmat" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["rmat"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			_unit addWeapon _lat;
			["uniform"] call _IFAK;
		};
		// Scoped Rifleman
		case "rmsc" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifleScoped;
			["rmsc"] call _addRuck;
			["dmr",true,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Designated Marksman
		case "dmr" : {
			["dmr"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_dmrMag,8];
			_unit addWeapon _dmr;
			call _addSidearm;
			["dmr"] call _addRuck;
			["dmr",true,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Grenadier
		case "gren" : {
			["gren"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addMagazines [_glExplody,6];
			_unit addWeapon _rifleGL;
			["gren"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Machinegunner
		case "mmg" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			_unit addItemToVest [_mmgMag,2];
			_unit addWeapon _mmg;
			call _addSidearm;
			["mmg"] call _addRuck;
			["mmg",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Assistant Machinegunner
		case "mmgass" : {
			["rflm"] call _addClothes;
			["binocular"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["mmgass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};

		// ========================================
		// ============ Vehicle Crews =============
		// ========================================
		// Rotary Wing Pilot
		case "rotarypilot" : {
			["rpilot"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _smgMag};
			_unit addWeapon _smg;
			call _addSidearm;
			["pilot"] call _addRuck;
			["uniform"] call _IFAK;
		};
		case "rotarycrew" : {
			["rcrew"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _carbineMag};
			_unit addWeapon _carbine;
			call _addSidearm;
			["aircrew"] call _addRuck;
			["uniform"] call _IFAK;
		};
		// Fixed Wing Pilot
		case "fixedpilot" : {
			["fpilot"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			call _addSidearm;
			["pilot"] call _addRuck;
			["uniform"] call _IFAK;
		};
		// Crew Commander
		case "crewmander" : {
			["crew"] call _addClothes;
			["westrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _carbineMag};
			_unit addWeapon _carbine;
			call _addSidearm;
			["crew"] call _addRuck;
			["uniform"] call _IFAK;
		};
		// Crewman
		case "crewman" : {
			["crew"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit linkItem _x } foreach _ftlItems;
			for "_i" from 1 to 4 do {_unit addItemToVest _carbineMag};
			_unit addWeapon _carbine;
			call _addSidearm;
			["crewman"] call _addRuck;
			["uniform"] call _IFAK;
		};

		// ========================================
		// ========= Static Weapons Teams =========
		// ========================================
		// HMG Gunner
		case "hmggun" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			call _addSidearm;
			["hmggun"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// HMG Assistant
		case "hmgass" : {
			["rflm"] call _addClothes;
			["westrangefinder"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			call _addSidearm;
			["hmgass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// SHAT Gunner
		case "shatgun" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			call _addSidearm;
			["shatgun"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// SHAT Assistant
		case "shatass" : {
			["rflm"] call _addClothes;
			["westrangefinder"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			call _addSidearm;
			["shatass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// MORT Gunner
		case "mortgun" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			call _addSidearm;
			["mortgun"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// MORT Assistant
		case "mortgun" : {
			["rflm"] call _addClothes;
			["westrangefinder"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			call _addSidearm;
			["mortass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};

		// ========================================
		// ============ Launcher Teams ============
		// ========================================
		// MAT Gunner
		case "matgun" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["matgun"] call _addRuck;
			_unit addWeapon _matLaunch;
			["carlito",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// MAT Assisstant
		case "matammo" : {
			["rflm"] call _addClothes;
			["binocular"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["matass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// HAT Gunner
		case "hatgun" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["hat"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			_unit addWeapon _hatLaunch;
			["uniform"] call _IFAK;
		};
		// HAT Assistant
		case "hatammo" : {
			["rflm"] call _addClothes;
			["westrangefinder"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["hatass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// AA Gunner
		case "aagun" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["aa"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			_unit addWeapon _aaLaunch;
			["uniform"] call _IFAK;
		};
		// AA Assistant
		case "aaammo" : {
			["rflm"] call _addClothes;
			["westrangefinder"] call _addBasics;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["aaass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};

		// ========================================
		// =========== Specialist Roles ===========
		// ========================================
		// Sniper
		case "sniper" : {
			["sniper"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x } foreach _sniperItems;
			for "_i" from 1 to 9 do {_unit addItemToVest _boltRifleMag};
			_unit addWeapon _boltRifle;
			call _addSidearm;
			["sniper"] call _addRuck;
			["sniper",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Anti-Material Sniper
		case "amsniper" : {
			["sniper"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x } foreach _sniperItems;
			for "_i" from 1 to 9 do {_unit addItemToVest _amRifleMag};
			_unit addWeapon _amRifle;
			call _addSidearm;
			["amsniper"] call _addRuck;
			["amsniper",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Spotter
		case "spotter" : {
			["sniper"] call _addClothes;
			["westdesignator"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x } foreach _sniperItems;
			_unit addMagazines [_rifleGLMag,8];
			_unit addMagazines [_glExplody,5];
			_unit addMagazines [_glSmokeOne,2];
			_unit addMagazines [_glSmokeTwo,2];
			_unit addWeapon _rifleGL;
			["spotter"] call _addRuck;
			["general",false,true,false] call _addAttachments;
		};
		// Diver Team Leader
		case "divertl" : {
			["diver"] call _addClothes;
			["westrangefinder"] call _addBasics;
			{ _unit addItem _x } foreach _secItems;
			_unit addMagazines [_rifleDiverMagOne,3];
			_unit addMagazines [_rifleDiverMagTwo,3];
			_unit addWeapon _rifleDiver;
			["divertl"] call _addRuck;
			["diver",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Diver General
		case "diver" : {
			["diver"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleDiverMagOne,3];
			_unit addMagazines [_rifleDiverMagTwo,3];
			_unit addWeapon _rifleDiver;
			["diver"] call _addRuck;
			["diver",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Engineer
		case "engi" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["engi"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};
		// Demo Man
		case "demoman" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["demoman"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["uniform"] call _IFAK;
		};

		// ========================================
		// if undefined or incorrectly defined, give hint and assign standard rifleman gear
		default {
			_unit groupChat format ["No or incorrectly defined loadout: %2, for unit: %1",_unit,toUpper (_loadout)];
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			for "_i" from 1 to 9 do {_unit addItemToVest _rifleMag};
			_unit addWeapon _rifle;
			["rm"] call _addRuck;
			["general",false,false,false] call _addAttachments;
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
			_unit addMagazineCargoGlobal [_rifleMag,40];
			_unit addMagazineCargoGlobal [_autoRifleMag,_arboxMagCount];
			_unit addMagazineCargoGlobal [_autoTracerMag,2];
			_unit addMagazineCargoGlobal [_dmrMag,8];
			_unit addMagazineCargoGlobal [_grenade,16];
			_unit addMagazineCargoGlobal [_smokeOne,24];
			_unit addMagazineCargoGlobal [_smokeTwo,4];
			_unit addMagazineCargoGlobal [_smokeThree,4];
			_unit addMagazineCargoGlobal [_glExplody,12];
			_unit addMagazineCargoGlobal [_glSmokeOne,8];
			_unit addMagazineCargoGlobal [_glSmokeTwo,3];
			_unit addMagazineCargoGlobal [_glSmokeThree,3];
			_unit addMagazineCargoGlobal [_shottyBuck,6];
			_unit addMagazineCargoGlobal [_shottySlug,6];
			_unit addItemCargoGlobal [_bandageOne,16];
			_unit addItemCargoGlobal [_injectorOne,4];
			_unit addItemCargoGlobal [_designatorBat,1];
			_unit addItemCargoGlobal [_tourniquet,5];
			_unit addItemCargoGlobal [_splint,5];
		};
		case "rifleammo" : {
			_unit addMagazineCargoGlobal [_rifleMag,30];
			_unit addMagazineCargoGlobal [_grenade,5];
			_unit addMagazineCargoGlobal [_smokeOne,5];
		};
		case "glammo" : {
			_unit addMagazineCargoGlobal [_rifleGLMag,10];
			_unit addMagazineCargoGlobal [_glExplody,12];
			_unit addMagazineCargoGlobal [_glSmokeOne,6];
			_unit addMagazineCargoGlobal [_glSmokeTwo,6];
			_unit addMagazineCargoGlobal [_glSmokeThree,4];
		};
		case "arammo" : {
			_unit addMagazineCargoGlobal [_autoRifleMag,_arboxMagCount];
			_unit addMagazineCargoGlobal [_autoTracerMag,2];
			_unit addMagazineCargoGlobal [_grenade,4];
			_unit addMagazineCargoGlobal [_smokeOne,4];
		};
		case "mmgammo" : {
			_unit addMagazineCargoGlobal [_mmgMag,_mmgboxMagCount];
			_unit addMagazineCargoGlobal [_mmgTracerMag,2];
			_unit addMagazineCargoGlobal [_grenade,4];
			_unit addMagazineCargoGlobal [_smokeOne,4];
		};
		case "dmrammo" : {
			_unit addMagazineCargoGlobal [_dmrMag,8];
			_unit addMagazineCargoGlobal [_grenade,2];
			_unit addMagazineCargoGlobal [_smokeOne,2];
		};
		case "latammo" : {
			_unit addWeaponCargoGlobal [_lat,4];
			if (_latMag != "") then { _unit addMagazineCargoGlobal [_latMag,4]; };
		};
		case "matammo" : {
			if (_matATMag != "") then { _unit addMagazineCargoGlobal [_matATMag,5]; };
			if (_matHEMag != "") then { _unit addMagazineCargoGlobal [_matHEMag,5]; };
			if (_matTHERMag != "") then { _unit addMagazineCargoGlobal [_matTHERMag,5]; };
			if (_matTANDMag != "") then { _unit addMagazineCargoGlobal [_matTANDMag,5]; };
			if (_matSpot != "") then { _unit addMagazineCargoGlobal [_matSpot,5]; };
		};
		case "hatammo" : {
			_unit addMagazineCargoGlobal [_hatMag,2];
		};
		case "aaammo" : {
			_unit addMagazineCargoGlobal [_aaMag,2];
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
			_unit addItemCargoGlobal [_tourniquet,15];
			_unit addItemCargoGlobal [_splint,15];
		};

		// ========================================
		// ============== Weapons Teams ===========
		// ========================================

		case "snipercrate" : {
			_unit addWeaponCargoGlobal [_boltRifle,1];
			_unit addWeaponCargoGlobal [_designator,1];
			_unit addMagazineCargoGlobal [_designatorBat,2];
			_unit addMagazineCargoGlobal [_boltRifleMag,10];
			{ _unit addItemCargoGlobal [_x,2]; } forEach _sniperItems;
			{ _unit addItemCargoGlobal [_x,1]; } forEach _sniperAttachments;
			{ _unit addItemCargoGlobal [_x,2]; } forEach _secItems;
		};
		case "matcrate" : {
			_unit addWeaponCargoGlobal [_matLaunch,1];
			if (!isNil"_matAttachments") then { { _unit addItemCargoGlobal [_x,1] } forEach _matAttachments; };
			_unit addWeaponCargoGlobal [_designator,1];
			_unit addMagazineCargoGlobal [_designatorBat,2];
			if (_matATMag != "") then { _unit addMagazineCargoGlobal [_matATMag,4]; };
			if (_matHEMag != "") then { _unit addMagazineCargoGlobal [_matHEMag,4]; };
		};
		case "hatteam" : {
			_unit addWeaponCargoGlobal [_hatLaunch,1];
			_unit addWeaponCargoGlobal [_designator,1];
			_unit addMagazineCargoGlobal [_designatorBat,2];
			_unit addMagazineCargoGlobal [_hatMag,4];
		};
		case "aateam" : {
			_unit addWeaponCargoGlobal [_aaLaunch,1];
			_unit addWeaponCargoGlobal [_designator,1];
			_unit addMagazineCargoGlobal [_designatorBat,2];
			_unit addMagazineCargoGlobal [_aaMag,4];
		};
		case "diverpair" : {
			_unit addWeaponCargoGlobal [_rifleDiver,2];
			_unit addMagazineCargoGlobal [_rifleDiverMagOne,20];
			_unit addMagazineCargoGlobal [_rifleDiverMagTwo,20];
			_unit addMagazineCargoGlobal [_grenade,8];
			_unit addMagazineCargoGlobal [_smokeOne,8];
			_unit addItemCargoGlobal [_diverUniform,2];
			_unit addItemCargoGlobal [_diverVest,2];
			_unit addBackpackCargoGlobal [_diverRuck,2];
			{ _unit addItemCargoGlobal [_x ,2]; } forEach _basicTools;
			{ _unit addItemCargoGlobal [_x ,2]; } forEach _basicItems;
			{ _unit addItemCargoGlobal [_x,2]; } forEach _secItems;
		};

		// ========================================
		// ============== Explosives ==============
		// ========================================

		case "atmines" : {
			_unit addItemCargoGlobal [_atMine,6];
		};
		case "apmines" : {
			_unit addItemCargoGlobal [_apersMine,5];
			_unit addItemCargoGlobal [_apersBound,5];
			_unit addItemCargoGlobal [_apersTrip,5];
			_unit addItemCargoGlobal [_claymore,5];
			_unit addItemCargoGlobal [_clackOne,2];
		};
		case "demosmall" : {
			_unit addItemCargoGlobal [_demoCharge,6];
			_unit addItemCargoGlobal [_clackOne,2];
		};
		case "demobig" : {
			_unit addItemCargoGlobal [_satchelCharge,4];
			_unit addItemCargoGlobal [_clackOne,2];
		};

		// ========================================
		// =========== Heavy Weapons Teams ========
		// ========================================

		case "hmgweapon" : {
			_unit addBackpackCargoGlobal [_hmgBarrel,1];
			_unit addBackpackCargoGlobal [_hmgTripod,1];
		};
		case "shatweapon" : {
			_unit addBackpackCargoGlobal [_shatBarrel,1];
			_unit addBackpackCargoGlobal [_shatTripod,1];
		};

		// ========================================
		// ================= Tools ================
		// ========================================

		case "engitools" : {
			_unit addItemCargoGlobal [_toolbox,2];
			_unit addItemCargoGlobal [_wireCutters,2];
			_unit addBackpackCargoGlobal [_medRuck,2];
		};
		case "nightvisions" : {
			_unit addItemCargoGlobal [_nightVision,8];
		};
		case "nightgear" : {
			_unit addMagazineCargoGlobal [_glFlareOne,30];
			_unit addMagazineCargoGlobal [_glFlareTwo,30];
			_unit addMagazineCargoGlobal [_chemlightOne,30];
			_unit addMagazineCargoGlobal [_chemlightTwo,30];
			_unit addMagazineCargoGlobal [_handFlareOne,30];
			_unit addMagazineCargoGlobal [_handFlareTwo,30];
		};
		case "radiogear" : {
			_unit addItemCargoGlobal [_squadRadio,20];
			_unit addBackpackCargoGlobal [_airRadioRuck,8];
			_unit addBackpackCargoGlobal [_radioRuck,8];
		};
		case "uavgear" : {
			_unit addItemCargoGlobal [_uavTool,1];
			_unit addBackpackCargoGlobal [_uavRuck,1];
		};
		case "attachments" : {
			{ _unit addItemCargoGlobal [_x ,10]; } forEach _generalAttachments;
			{ _unit addItemCargoGlobal [_x ,5]; } forEach _autoRifleAttachments;
			{ _unit addItemCargoGlobal [_x ,5]; } forEach _mmgAttachments;
			{ _unit addItemCargoGlobal [_x ,10]; } forEach _pistolAttachments;
		};
		case "cableties" : {
			_unit addItemCargoGlobal [_cableTieItem,40];
		};
		case "flashabangs" : {
			_unit addItemCargoGlobal [_flashbang,40];
		};
		case "wetsuits" : {
			_unit addItemCargoGlobal [_diverUniform,8];
			_unit addItemCargoGlobal [_diverVest,8];
			_unit addBackpackCargoGlobal [_diverRadioRuck ,2];
			_unit addBackpackCargoGlobal [_diverRuck ,8];
		};

		// ========================================
		// =================== Misc ===============
		// ========================================

		case "steerchutes" : {
			_unit addBackpackCargoGlobal [_steerableChute,30];
		};
		case "nonsteerchutes" : {
			_unit addBackpackCargoGlobal [_nonsteerableChute,30];
		};
		case "bananas" : {
			_unit addItemCargoGlobal [_bananas,10];
		};
		case "blank" : {
			// empties the crate if necessary, doesn't add anything.
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