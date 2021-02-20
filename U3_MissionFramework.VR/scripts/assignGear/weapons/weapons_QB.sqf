// =======================================================================
// AssignGear - AR
// by UDS
// - Defines all of the weapon, magazine and weaponItem classes to be used by the assignGear script.
// - In the case of using a random weapon array make sure that the weapons can use the same ammo and attachments.
// - To remove weapon randomization only use one array entry instead of many eg. _rifleArray = ["class"];, _rifleGLArray = ["class"];

// - Weapons: USAF Weaponry
// - Cases: m4a1_carryhandle, m16a4_carryhandle, m4a1_blockII, hk416, mk18
// =======================================================================
// Declares variables

private [
"_rifleArray","_rifleRandom","_rifle","_rifleGLArray","_rifleGLRandom","_rifleGL","_rifleScoped","_autoRifle","_carbine","_dmr","_mmg","_smg","_pistol","_shotty","_boltRifle","_amRifle",
"_rifleMag","_rifleTracerMag","_rifleSubsonicMag","_rifleGLMag","_rifleScopedMag","_autoRifleMag","_autoTracerMag","_autoSubsonicMag","_carbineMag","_dmrMag","_mmgMag","_mmgTracerMag","_smgMag","_pistolMag","_shottyBuck","_shottySlug","_boltRifleMag","_amRifleMag",
"_glExplody","_glSmokeOne","_glSmokeTwo","_glSmokeThree","_glSmokeFour","_glFlareOne","_glFlareTwo","_grenade","_flashbang","_smokeOne","_smokeTwo","_smokeThree",
"_arMagCount","_arboxMagCount","_mmgMagCount","_mmgboxMagCount",
"_generalAttachments_reflex","_generalAttachments_scoped","_generalAttachments_muzz","_generalAttachments_supp","_generalAttachments_gunLight","_generalAttachments_gunIR","_generalAttachments_grip",
"_autoRifleAttachments_reflex","_autoRifleAttachments_scoped","_autoRifleAttachments_muzz","_autoRifleAttachments_supp","_autoRifleAttachments_gunLight","_autoRifleAttachments_gunIR","_autoRifleAttachments_grip",
"_mmgAttachments_reflex","_mmgAttachments_scoped","_mmgAttachments_muzz","_mmgAttachments_supp","_mmgAttachments_gunLight","_mmgAttachments_gunIR","_mmgAttachments_grip",
"_dmrAttachments_reflex","_dmrAttachments_scoped","_dmrAttachments_muzz","_dmrAttachments_supp","_dmrAttachments_gunLight","_dmrAttachments_gunIR","_dmrAttachments_grip",
"_boltRifleAttachments_base","_boltRifleAttachments_muzz","_boltRifleAttachments_supp",
"_amRifleAttachments_base",
"_pistolAttachments_reflex","_pistolAttachments_muzz","_pistolAttachments_supp","_pistolAttachments_gunLight","_pistolAttachments_gunIR",
"_rifleDiver","_rifleDiverMagOne","_rifleDiverMagTwo"
];

// =======================================================================

switch (_variant) do {

	// PLA - QB
	case "qb" :  {

		// ============ Weaponry ===========

		_rifleArray = ["vme_pla_qbz95_1"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["vme_pla_qbz95_1GL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "vme_pla_qbz95_1";
		_carbine = "vme_pla_qbz95B_1";
		_smg = "vme_pla_qcw05";
		_pistol = "vme_pla_qsw06";

		_autoRifle = "vme_pla_qjb95_1";
		_mmg = "VME_PLA_QJY88";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "vme_pla_qbu88";
		_boltRifle = "vme_pla_LR4";
		_amRifle = "VME_M99_Base";

		// =========== Ammunition ==========

		_rifleMag = "30Rnd_580x42_Mag_F";
		_rifleTracerMag = "30Rnd_580x42_Mag_Tracer_F";
		_rifleSubsonicMag = "30Rnd_580x42_Mag_F";
		_rifleGLMag = "30Rnd_580x42_Mag_F";
		_rifleScopedMag = "30Rnd_580x42_Mag_F";
		_carbineMag = "30Rnd_580x42_Mag_F";
		_smgMag = "VME_QCW05_50Rnd_DCV05";
		_pistolMag = "VME_QSZ92_20Rnd_DAP92";

		_autoRifleMag = "100Rnd_580x42_Mag_F";
		_autoTracerMag = "100Rnd_580x42_Mag_Tracer_F";
		_autoSubsonicMag = "100Rnd_580x42_Mag_F";
		_arMagCount = 3;
		_arboxMagCount = 6;

		_mmgMag = "VME_QJY88_200Rnd_DVP88_Heavy";
		_mmgTracerMag = "VME_QJY88_200Rnd_DBP10_Tracer_Green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 3;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "VME_QBU88_10Rnd_DVP88_Sniper";
		_boltRifleMag = "VME_LR4_5Rnd_M61_AP";
		_amRifleMag = "VME_M99_5Rnd_MK263_AP_Mag";

		_glExplody = "1Rnd_HE_Grenade_shell";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeOrange_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokeBlue_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokeYellow_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "rhs_mag_f1";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "SmokeShell";
		_smokeTwo = "SmokeShellOrange";
		_smokeThree = "SmokeShellBlue";

		// ========== Attachments ==========

		_generalAttachments_reflex = "VME_Eotech553";
		_generalAttachments_scoped = "VME_95_1_PST";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "VME_QBZ95_1_Silencer";
		_generalAttachments_gunLight = "VME_QBZ95_flashlight";
		_generalAttachments_gunIR = "VME_QBZ95_laser_IR";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "VME_Eotech553";
		_autoRifleAttachments_scoped = "VME_95_1_PST";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "VME_QBZ95_1_Silencer";
		_autoRifleAttachments_gunLight = "VME_QBZ95_flashlight";
		_autoRifleAttachments_gunIR = "VME_QBZ95_laser_IR";
		_autoRifleAttachments_grip = "VME_QJB95_1_bipod";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "VME_QJY88_Scope";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "VME_95_1_PST";
		_dmrAttachments_scoped = "VME_QBU88_Scope";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "VME_QBZ95_1_Silencer";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "VME_qbu88_bipod";

		_boltRifleAttachments_base = ["VME_LR4_Scope"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "VME_LR4_Silencer";

		_amRifleAttachments_base = ["VME_LR4_Scope"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "VME_QSW06_Silencer";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

#include "default.sqf"
};

// ==================== Diver Equipment ====================
// Equips diver with underwater rifle, if variable set to true

if (_underwaterWeapons) then {
	_rifleDiver = "arifle_SDAR_F";
} else {
	_rifleDiver = _rifle;
};
if (_underwaterWeapons) then {
	_rifleDiverMagOne = "30Rnd_556x45_Stanag";	// standard mag
	_rifleDiverMagTwo = "20Rnd_556x45_UW_mag";	// underwater mag
} else {
	_rifleDiverMagOne = _rifleMag;
	_rifleDiverMagTwo = _rifleMag;
};

// =========================================================