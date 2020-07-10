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

	// BAF - L85A2 - 5.56x45
	case "l85a2" :  {

		// ============ Weaponry ===========

		_rifleArray = ["CUP_arifle_L85A2_NG","CUP_arifle_L85A2_G"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["CUP_arifle_L85A2_GL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "CUP_arifle_L85A2_NG";
		_carbine = "CUP_smg_MP5A5";
		_smg = "CUP_smg_MP5A5";
		_pistol = "CUP_hgun_M9";

		_autoRifle = "CUP_lmg_L110A1";
		_mmg = "CUP_lmg_L7A2_Flat";

		_shotty = "CUP_sgun_M1014_vfg";

		_dmr = "CUP_srifle_L129A1_HG";
		_boltRifle = "CUP_srifle_AWM_wdl";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_carbineMag = "CUP_30Rnd_9x19_MP5";
		_smgMag = "CUP_30Rnd_9x19_MP5";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_FMJ";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "CUP_8Rnd_B_Beneli_74Pellets";
		_shottySlug = "CUP_8Rnd_B_Beneli_74Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_boltRifleMag = "CUP_5Rnd_86x70_L115A1";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

		_glExplody = "CUP_1Rnd_HEDP_M203";
		_glSmokeOne = "CUP_1Rnd_Smoke_M203";
		_glSmokeTwo = "CUP_1Rnd_SmokeRed_M203";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "CUP_1Rnd_SmokeYellow_M203";
		_glFlareOne = "CUP_1Rnd_StarFlare_White_M203";
		_glFlareTwo = "CUP_1Rnd_StarFlare_Red_M203";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "SmokeShell";
		_smokeTwo = "SmokeShellRed";
		_smokeThree = "SmokeShellPurple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "rhsusf_acc_eotech_552";
		_generalAttachments_scoped = "rhsusf_acc_ACOG_RMR";
		_generalAttachments_muzz = "CUP_acc_sffh";
		_generalAttachments_supp = "CUP_muzzle_snds_L85";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "CUP_acc_LLM_black";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "CUP_optic_SUSAT";
		_autoRifleAttachments_muzz = "CUP_muzzle_mfsup_SCAR_L";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "CUP_acc_LLM_black";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_ACOG_RMR";
		_dmrAttachments_scoped = "rhsusf_acc_ACOG_MDO";
		_dmrAttachments_muzz = "CUP_acc_sffh";
		_dmrAttachments_supp = "muzzle_snds_B";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "CUP_acc_LLM_black";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_LEUPOLDMK4_2","rhsusf_acc_harris_bipod"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "CUP_muzzle_snds_AWM";

		_amRifleAttachments_base = ["rhsusf_acc_LEUPOLDMK4_2"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "CUP_muzzle_snds_M9";
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