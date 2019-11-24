// ============================================================
// AssignGear Functions
// by Mr. Agnet
// - Defines all of the functions as used by the assignGear.sqf script.
// ============================================================
// Declares Variables

private ["_addClothes","_addBasics","_clearRuck","_addRuck","_addAttachments","_IFAK","_backpackToFront","_para","_postGearAssign","_removeScope","_removeMuzzle","_removePointer","_addSidearm","_addSquadRadio"];

// ============================================================
// AddClothes
// - Adds basic clothes/vest/helmet etc. to a unit
// - Possible Cases: commander, secco, teamleader, medic, gren, rflm, rpilot, rcrew, fpilot, crew, diver, sniper
// - Example: ["commander"] call _addClothes;

_addClothes = {
	private ["_type"];
	_type = toLower (_this select 0);
	if (_rflmUniform != "") then { _unit forceAddUniform _rflmUniform; };
	if (_goggles != "") then { _unit addGoggles _goggles; };

	switch (_type) do {
		case "commander" : {
			_unit forceAddUniform _leaderUniform;
			_unit addHeadgear _coyHelmet;
			_unit addVest _coyVest;
		};
		case "secco" : {
			_unit addHeadgear _slHelmet;
			_unit addVest _slVest;
		};
		case "teamleader" : {
			_unit addHeadgear _tlHelmet;
			_unit addVest _tlVest;
		};
		case "medic" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _medVest;
		};
		case "gunner" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _gunnerVest;
		};
		case "gren" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _glVest;
		};
		case "rflm" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmVest;
		};
		case "dmr" : {
			_unit addHeadgear _sniperHelmet;
			_unit addVest _sniperVest;
		};
		case "rpilot" : {
			removeUniform _unit;
			_unit forceAddUniform _rpilotUniform;
			_unit addHeadgear _rotaryPilotHelmet;
			_unit addVest _pilotVest;
		};
		case "rcrew" : {
			removeUniform _unit;
			_unit forceAddUniform _rpilotUniform;
			_unit addHeadgear _rotaryCrewHelmet;
			_unit addVest _pilotVest;
		};
		case "fpilot" : {
			removeUniform _unit;
			_unit forceAddUniform _fpilotUniform;
			_unit addHeadgear _fixedPilotHelmet;
		};
		case "crew" : {
			removeUniform _unit;
			_unit forceAddUniform _crewUniform;
			_unit addHeadgear _crewmanHelmet;
			_unit addVest _crewVest;
		};
		case "diver" : {
			removeUniform _unit;
			removeGoggles _unit;
			_unit forceAddUniform _diverUniform;
			_unit addGoggles _divingGoggles;
			_unit addVest _diverVest;
		};
		case "sniper" : {
			removeUniform _unit;
			_unit forceAddUniform _sniperUniform;
			_unit addHeadgear _sniperHelmet;
			_unit addVest _sniperVest;
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
// - Adds the basic items and tools of the loadouts to a unit, and adds binocular item depeding on parameters given
// - Possible Cases: westrangefinder, eastrangefinder, westdesignator, eastdesignator, binocular, none
// - Example: ["binocular"] call _addBasics;

_addBasics = {
	private ["_bino"];
	_bino = toLower(_this select 0);
	_dev = toLower(_this select 1);
	sleep _delay;
	if ((!isNil "_nightGear") && _nightGear) then {
		_basicTools = _basicTools + [_nightVision];
	};
	if ((!isNil "_nightGear") && _nightGear) then {
		_basicItems = _basicItems + [_strobe];
	};
	{ _unit linkItem _x } foreach _basicTools; 		// add and assign each of the basic tools
	{ _unit addItem _x } foreach _basicItems; 		// add each of the basic items, can't be assigned
	sleep _delay;
	switch (_bino) do {
		case "westrangefinder" : {
			_unit addWeapon _westrangeFinder;
		};
		case "eastrangefinder" : {
			_unit addWeapon _eastrangeFinder;
		};
		case "westdesignator" : {
			_unit addWeapon _westdesignator;
		};
		case "eastdesignator" : {
			_unit addWeapon _eastdesignator;
		};
		case "binocular" : {
			 _unit addWeapon _binos;
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
// - Adds ruck to the unit.
// - Adds a backpack and cargo to that backpack.
// - Note that these cases are mostly similar to the unit's loadout case.
// - Possible Cases: 	plt, medic, fac, uavop, tl, ar, aar, rm, brcr, rmammo, rmat, rmsc, dmr, gren, mmg, mmgass, matgun, matass, hat, hatass, aa, aaass, crew, crewman,
// 						pilot, aircrew, hmggun, hmgass, shatgun, shatass, mortgun, mortass, divertl, diver, sniper, amsniper, spotter, engi, demoman
// - Example: ["plt"] call _addRuck;

_addRuck = {
	private ["_pack"];
	_pack = toLower(_this select 0);
	switch (_pack) do {
		case "plt" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
		};
		case "medic" : {
			_unit addBackpack _medicRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,40];	// bandages
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,10];	// morphine
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,10];	// epinephrine
			(unitBackpack _unit) addItemCargoGlobal [_bloodThree,8];	// bloodbag 1000
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,2];		// bloodbag 500
			(unitBackpack _unit) addItemCargoGlobal [_bloodOne,2];		// bloodbag 250
		};
		case "fac" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_designatorBat,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,3];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeTwo,3];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeThree,3];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeFour,3];
		};
		case "uavop" : {
			_unit addBackpack _uavRuck;
			call _clearRuck;
		};
		case "tl" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeThree,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeFour,2];
		};
		case "ar" : {
			_unit addBackpack _armgRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_autoRifleMag,_arMagCount];
			(unitBackpack _unit) addMagazineCargoGlobal [_autoTracerMag,1];
			(unitBackpack _unit) addItemCargoGlobal [_spareBarrel,1];
		};
		case "aar" : {
			_unit addBackpack _armgRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_autoRifleMag,_arMagCount];
			(unitBackpack _unit) addMagazineCargoGlobal [_autoTracerMag,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,1];
			(unitBackpack _unit) addItemCargoGlobal [_etool,1];
		};
		case "rm" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "brcr" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_shottyBuck,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_shottySlug,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_flashbang,5];
		};
		case "rmammo" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,10];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleTracerMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "rmat" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			if (_latMag != "") then { (unitBackpack _unit) addMagazineCargoGlobal [_latMag,1]; };
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "rmsc" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleScopedMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "dmr" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "gren" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleGLMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,8];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeThree,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeFour,2];
		};
		case "mmg" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgMag,2];
			(unitBackpack _unit) addItemCargoGlobal [_spareBarrel,1];
		};
		case "mmgass" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgMag,4];
			(unitBackpack _unit) addItemCargoGlobal [_etool,1];
		};
		case "matgun" : {
			_unit addBackpack _atRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_matATMag,1];
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_matATMag,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_matHEMag,1];
			if (_matSpot != "") then { (unitBackpack _unit) addMagazineCargoGlobal [_matSpot,2]; };
		};
		case "matass" : {
			_unit addBackpack _atRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_matATMag,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_matHEMag,1];
		};
		case "hat" : {
			_unit addBackpack _largeRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_hatMag,1];
		};
		case "hatass" : {
			_unit addBackpack _largeRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_hatMag,2];
		};
		case "aa" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_aaMag,1];
		};
		case "aaass" : {
			_unit addBackpack _largeRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_aaMag,2];
		};
		case "crew" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
		};
		case "crewman" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_toolbox,1];
		};
		case "pilot" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
		};
		case "aircrew" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_carbineMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,4];
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,4];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,4];
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,2];
		};
		case "hmggun" : {
			_unit addBackpack _hmgBarrel;
		};
		case "hmgass" : {
			_unit addBackpack _hmgTripod;
		};
		case "shatgun" : {
			_unit addBackpack _shatBarrel;
		};
		case "shatass" : {
			_unit addBackpack _shatTripod;
		};
		case "mortgun" : {
			_unit addBackpack _mortBarrel;
		};
		case "mortass" : {
			_unit addBackpack _mortTripod;
		};
		case "divertl" : {
			_unit addBackpack _diverRadioRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagOne,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagTwo,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "diver" : {
			_unit addBackpack _diverRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagOne,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagTwo,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "sniper" : {
			_unit addBackpack _sniperRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "amsniper" : {
			_unit addBackpack _sniperRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "spotter" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_designatorBat,1];
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,6];	// bandages
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,2];	// morphine
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];	// epinephrine
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,1];		// bloodbag
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleGLMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeOne,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeTwo,1];
		};
		case "engi" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_toolbox,1];
			(unitBackpack _unit) addItemCargoGlobal [_wireCutters,1];
			(unitBackpack _unit) addItemCargoGlobal [_defuseKit,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "demoman" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_demoCharge,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_satchelCharge,1];
			(unitBackpack _unit) addItemCargoGlobal [_clackOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_defuseKit,1];
		};
		default {
			hint format ["[ERROR] Incorrect ruck call: %2, for unit: %1", _unit, _pack];
		};
	};
};

// ============================================================
// AddAttachments
// - Addition of Attachments to a Unit's weapon
// - Follows ["case", scopes, suppressors, muzzle, pointer] call _addAttachments;
// - Possible Cases: general, ar, mmg, dmr, sniper, amsniper, diver, carlito
// - Note that pistol attachments are done regardless of what is called.
// - Parameters dictate attachments for all instances of that role.

_addAttachments = {
	private ["_type","_sco","_muz","_ptr","_primaryAttachments","_secondaryAttachments","_handgunAttachments"];

	// handle call from main switch case, if passed true, override existing values
	_type =  toLower (_this select 0);
	_sco = _this select 1;
	_muz = _this select 2;
	_ptr = _this select 3;
	if (_sco) then {_scopes = 2};
	if (_muz) then {_muzzles = 2};
	if (_ptr) then {_pointers = 2};

	// remove any existing attachments
	_primaryAttachments = primaryWeaponItems _unit;
	_secondaryAttachments = secondaryWeaponItems _unit;
	_handgunAttachments = handgunItems _unit;
	if (!isNil "_primaryAttachments") then { { _unit removePrimaryWeaponItem _x } forEach _primaryAttachments; };
	if (!isNil "_secondaryAttachments") then { { _unit removeSecondaryWeaponItem _x } forEach _secondaryAttachments; };
	if (!isNil "_handgunAttachments") then { { _unit removeHandgunItem _x } forEach _handgunAttachments; };

	switch (_type) do {
		// ===================================================================================================
		case "general" : {
			switch (_scopes) do {
				case 0 : {};
				case 1 : { if (!isNil "_generalAttachments_reflex") then { _unit addPrimaryWeaponItem _generalAttachments_reflex; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
				case 2 : { if (!isNil "_generalAttachments_scoped") then { _unit addPrimaryWeaponItem _generalAttachments_scoped; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
			};
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_generalAttachments_muzz") then { _unit addPrimaryWeaponItem _generalAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
				case 2 : { if (!isNil "_generalAttachments_supp") then { _unit addPrimaryWeaponItem _generalAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
			switch (_pointers) do {
				case 0 : {};
				case 1 : { if (!isNil "_generalAttachments_gunLight") then { _unit addPrimaryWeaponItem _generalAttachments_gunLight; }; if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
				case 2 : { if (!isNil "_generalAttachments_gunIR") then { _unit addPrimaryWeaponItem _generalAttachments_gunIR; }; if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
			};
			if (((!isNil "_grips") && _grips) && (!isNil "_generalAttachments_grip")) then { _unit addPrimaryWeaponItem _generalAttachments_grip; };
		};
		// ===================================================================================================
		case "ar" : {
			switch (_scopes) do {
				case 0 : {};
				case 1 : { if (!isNil "_autoRifleAttachments_reflex") then { _unit addPrimaryWeaponItem _autoRifleAttachments_reflex; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
				case 2 : { if (!isNil "_autoRifleAttachments_scoped") then { _unit addPrimaryWeaponItem _autoRifleAttachments_scoped; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
			};
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_autoRifleAttachments_muzz") then { _unit addPrimaryWeaponItem _autoRifleAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
				case 2 : { if (!isNil "_autoRifleAttachments_supp") then { _unit addPrimaryWeaponItem _autoRifleAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
			switch (_pointers) do {
				case 0 : {};
				case 1 : { if (!isNil "_autoRifleAttachments_gunLight") then { _unit addPrimaryWeaponItem _autoRifleAttachments_gunLight; }; if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
				case 2 : { if (!isNil "_autoRifleAttachments_gunIR") then { _unit addPrimaryWeaponItem _autoRifleAttachments_gunIR; }; if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
			};
			if (!isNil "_autoRifleAttachments_grip") then { _unit addPrimaryWeaponItem _autoRifleAttachments_grip; };
		};
		// ===================================================================================================
		case "mmg" : {
			switch (_scopes) do {
				case 0 : {};
				case 1 : { if (!isNil "_mmgAttachments_reflex") then { _unit addPrimaryWeaponItem _mmgAttachments_reflex; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
				case 2 : { if (!isNil "_mmgAttachments_scoped") then { _unit addPrimaryWeaponItem _mmgAttachments_scoped; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
			};
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_mmgAttachments_muzz") then { _unit addPrimaryWeaponItem _mmgAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
				case 2 : { if (!isNil "_mmgAttachments_supp") then { _unit addPrimaryWeaponItem _mmgAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
			switch (_pointers) do {
				case 0 : {};
				case 1 : { if (!isNil "_mmgAttachments_gunLight") then { _unit addPrimaryWeaponItem _mmgAttachments_gunLight; }; if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
				case 2 : { if (!isNil "_mmgAttachments_gunIR") then { _unit addPrimaryWeaponItem _mmgAttachments_gunIR; }; if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
			};
			if (!isNil "_mmgAttachments_grip") then { _unit addPrimaryWeaponItem _mmgAttachments_grip; };
		};
		// ===================================================================================================
		case "dmr" : {
			switch (_scopes) do {
				case 0 : {};
				case 1 : { if (!isNil "_dmrAttachments_reflex") then { _unit addPrimaryWeaponItem _dmrAttachments_reflex; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
				case 2 : { if (!isNil "_dmrAttachments_scoped") then { _unit addPrimaryWeaponItem _dmrAttachments_scoped; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
			};
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_dmrAttachments_muzz") then { _unit addPrimaryWeaponItem _dmrAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
				case 2 : { if (!isNil "_dmrAttachments_supp") then { _unit addPrimaryWeaponItem _dmrAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
			switch (_pointers) do {
				case 0 : {};
				case 1 : { if (!isNil "_dmrAttachments_gunLight") then { _unit addPrimaryWeaponItem _dmrAttachments_gunLight; }; if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
				case 2 : { if (!isNil "_dmrAttachments_gunIR") then { _unit addPrimaryWeaponItem _dmrAttachments_gunIR; }; if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
			};
			if (!isNil "_dmrAttachments_grip") then { _unit addPrimaryWeaponItem _dmrAttachments_grip; };
		};
		// ===================================================================================================
		case "sniper" : {
			if (!isNil "_boltRifleAttachments_base") then { { _unit addPrimaryWeaponItem _x } forEach _boltRifleAttachments_base; };
			if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; };
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_boltRifleAttachments_muzz") then { _unit addPrimaryWeaponItem _boltRifleAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
				case 2 : { if (!isNil "_boltRifleAttachments_supp") then { _unit addPrimaryWeaponItem _boltRifleAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
		};
		// ===================================================================================================
		case "amsniper" : {
			if (!isNil "_amRifleAttachments_base") then { { _unit addPrimaryWeaponItem _x } forEach _amRifleAttachments_base; };
			if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; };
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; };};
				case 2 : { if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
			switch (_pointers) do {
				case 0 : {};
				case 1 : { if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
				case 2 : { if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
			};
		};
		// ===================================================================================================
		case "diver" : {
			if (!_underwaterWeapons) then {
				switch (_scopes) do {
					case 0 : {};
					case 1 : { if (!isNil "_generalAttachments_reflex") then { _unit addPrimaryWeaponItem _generalAttachments_reflex; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
					case 2 : { if (!isNil "_generalAttachments_scoped") then { _unit addPrimaryWeaponItem _generalAttachments_scoped; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
				};
				switch (_muzzles) do {
					case 0 : {};
					case 1 : { if (!isNil "_generalAttachments_muzz") then { _unit addPrimaryWeaponItem _generalAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
					case 2 : { if (!isNil "_generalAttachments_supp") then { _unit addPrimaryWeaponItem _generalAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
				};
				switch (_pointers) do {
					case 0 : {};
					case 1 : { if (!isNil "_generalAttachments_gunLight") then { _unit addPrimaryWeaponItem _generalAttachments_gunLight; }; if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
					case 2 : { if (!isNil "_generalAttachments_gunIR") then { _unit addPrimaryWeaponItem _generalAttachments_gunIR; }; if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
				};
				if (((!isNil "_grips") && _grips) && (!isNil "_generalAttachments_grip")) then { _unit addPrimaryWeaponItem _generalAttachments_grip; };
			};
		};
		// ===================================================================================================
		case "carlito" : {
			if (!isNil "_matAttachments") then { { _unit addSecondaryWeaponItem _x } forEach _matAttachments; };
			switch (_scopes) do {
				case 0 : {};
				case 1 : { if (!isNil "_generalAttachments_reflex") then { _unit addPrimaryWeaponItem _generalAttachments_reflex; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
				case 2 : { if (!isNil "_generalAttachments_scoped") then { _unit addPrimaryWeaponItem _generalAttachments_scoped; }; if (!isNil "_pistolAttachments_reflex") then { _unit addPrimaryWeaponItem _pistolAttachments_reflex; }; };
			};
			switch (_muzzles) do {
				case 0 : {};
				case 1 : { if (!isNil "_generalAttachments_muzz") then { _unit addPrimaryWeaponItem _generalAttachments_muzz; }; if (!isNil "_pistolAttachments_muzz") then { _unit addHandgunItem _pistolAttachments_muzz; }; };
				case 2 : { if (!isNil "_generalAttachments_supp") then { _unit addPrimaryWeaponItem _generalAttachments_supp; }; if (!isNil "_pistolAttachments_supp") then { _unit addHandgunItem _pistolAttachments_supp; }; };
			};
			switch (_pointers) do {
				case 0 : {};
				case 1 : { if (!isNil "_generalAttachments_gunLight") then { _unit addPrimaryWeaponItem _generalAttachments_gunLight; }; if (!isNil "_pistolAttachments_gunLight") then { _unit addHandgunItem _pistolAttachments_gunLight; }; };
				case 2 : { if (!isNil "_generalAttachments_gunIR") then { _unit addPrimaryWeaponItem _generalAttachments_gunIR; }; if (!isNil "_pistolAttachments_gunIR") then { _unit addHandgunItem _pistolAttachments_gunIR; }; };
			};
			if (((!isNil "_grips") && _grips) && (!isNil "_generalAttachments_grip")) then { _unit addPrimaryWeaponItem _generalAttachments_grip; };
		};
		// ===================================================================================================
		default {
			hint format ["[ERROR] Incorrect attachment call: %2 for unit: %1", _unit, _type];
		};
		// ===================================================================================================
	};
};

// ============================================================
// IFAK
// - Basic Meds for the unit
// - Example: ["vest"] call _IFAK;
// - Example: ["pack"] call _IFAK;
// - Array parameter dictates whether meds go into backpack or vest for all instances of that role.
// - Use "pack"/"vest"/"uniform"
// - default is pack

_IFAK = {
	private ["_location"];
	_location = toLower(_this select 0);
	switch (_location) do {
		case "pack" : {
			if (!isNull (unitBackpack _unit)) then {
				(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
				(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			};
		};
		case "vest" : {
			for "_i" from 1 to 4 do {_unit addItemToVest _bandageOne};
		};
		case "uniform" : {
			for "_i" from 1 to 8 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _injectorOne};
		};
		default {
			if (!isNull (unitBackpack _unit)) then {
				(unitBackpack _unit) addItemCargoGlobal [_bandageOne,6];
				(unitBackpack _unit) addItemCargoGlobal [_injectorOne,2];
			};
		};
	};
};

// ============================================================
// BackpackToFront
// - Backpack becomes Frontpack, thanks to @backpackonchest
// - Example: call _backpackToFront;
// - Automatically calls this function before adding parachutes, if parachutes are enabled.

_backpackToFront = {
	waitUntil {!isNil "Zade_BOC_fnc_BackpackOnChest"};
	[_unit] call Zade_BOC_fnc_BackpackOnChest;
};


// ============================================================
// Para
// - If parachutes enabled, place backpack on front, then add the parachute.
// - "steerable" - adds steerable chutes.
// - "nonsteerable" - adds nonsteerable chutes.
// - "none" - adds no chutes.
// - wow

_para = {
	switch (_parachutes) do {
		case "steerable" : {
			// roles in this array will not receive parachutes.
			if !(_loadout in ["rotarypilot","fixedpilot","crewmander","crewman"]) then {
				 call _backpackToFront;
				 sleep _delay;
				 _unit addBackpack _steerableChute;
			};
		};
		case "nonsteerable" : {
			// roles in this array will not receive parachutes.
			if !(_loadout in ["rotarypilot","fixedpilot","crewmander","crewman"]) then {
				 call _backpackToFront;
				 sleep _delay;
				 _unit addBackpack _nonsteerableChute;
			};
		};
		case "none" : {
			// do nothing
		};
		default {
			hint format ["[ERROR] Incorrect parachute call: %2, for unit: %1", _unit, _parachutes];
		};
	};
};

// ============================================================
// Add Sidearm
// Adds loaded sidearm to unit
// Call: call _addSidearm;

_addSidearm = {
	_unit addMagazines [_pistolMag,2];
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
	// Parachute Function
	// See variable @ top for more details. If false, does nothing.
	call _para;

	// Radio Function
	call _addSquadRadio;

	// Flashbang Stuff
	// add/remove roles to/from this array for them to be/not be equipped with cableties, when enabled.
	if (_loadout in ["pltld","secco","sectl","ar","aar","rm","rmat","rmsc","dmr","gren","mmg","mmgass","divertl","diver"]) then {
		if (!isNil "_flashbangs" && _flashbangs > 0) then {
			for "_i" from 1 to (round _flashbangs) do { (unitBackpack _unit) addMagazineCargoGlobal [_flashbang,1]; };
		};
	};

	// Incendiary Stuff
	// add/remove roles to/from this array for them to be/not be equipped with cableties, when enabled.
	if (_loadout in ["pltld","secco","sectl","ar","aar","rm","rmat","rmsc","dmr","gren","mmg","mmgass","divertl","diver"]) then {
		if (!isNil "_incendiarys" && _incendiarys > 0) then {
			for "_i" from 1 to (round _incendiarys) do { (unitBackpack _unit) addMagazineCargoGlobal [_incendiary,1]; };
		};
	};

	// Cable Tie Stuff
	// Add/remove roles to/from this array for them to be/not be equipped with cableties, when enabled.
	if (_loadout in ["pltld","secco","sectl","ar","aar","rm","rmat","rmsc","dmr","gren","mmg","mmgass","divertl","diver"]) then {
		if (!isNil "_cableTies" && _cableTies > 0) then {
			for "_i" from 1 to (round _cableTies) do { _unit addItemToUniform _cableTieItem };
		};
	};

	// Display ACE Map Tools
	ace_maptools_mapTool_Shown = 2;

	// Reset Stamina
	_unit setStamina 200;
};

// ============================================================