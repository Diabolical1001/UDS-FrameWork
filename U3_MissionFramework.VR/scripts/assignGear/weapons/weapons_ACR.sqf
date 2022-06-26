// =======================================================================
// AssignGear - Weapons
// by UDS
// - Defines all of the weapon, magazine and weaponItem classes to be used by the assignGear script.
// - In the case of using a random weapon array make sure that the weapons can use the same ammo and attachments.
// - To remove weapon randomization only use one array entry instead of many eg. _rifleArray = ["class"];, _rifleGLArray = ["class"];

// - Weapons: SAF Weaponry
// - Cases: m21a, m70b3n
// =======================================================================
// Declares Variables

private [
"_rifleArray","_rifleRandom","_rifle","_rifleGLArray","_rifleGLRandom","_rifleGL","_rifleScoped","_autoRifle","_carbine","_dmr","_mmg","_smg","_pistol","_pistolGren","_shotty","_boltRifle","_amRifle",
"_rifleMag","_rifleTracerMag","_rifleSubsonicMag","_rifleGLMag","_rifleScopedMag","_autoRifleMag","_autoTracerMag","_autoSubsonicMag","_carbineMag","_dmrMag","_mmgMag","_mmgTracerMag","_smgMag","_pistolMag","_shottyBuck","_shottySlug","_boltRifleMag","_amRifleMag",
"_glExplody","_glExplodyhp","_glSmokeOne","_glSmokeTwo","_glSmokeThree","_glSmokeFour","_glFlareOne","_glFlareTwo","_grenade","_flashbang","_smokeOne","_smokeTwo","_smokeThree",
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

	// SAF - M21A - 5.56x45
	case "rem_acr" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_ACR_Carbine"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_ACR_Carbine_UGL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_ACR_Carbine";
		_carbine = "UK3CB_ACR_Crew";
		_smg = "UK3CB_MP5K_PDW";
		_pistol = "UK3CB_USP";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "UK3CB_ACR_Rifle_Long";
		_mmg = "UK3CB_MG3_KWS_B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "UK3CB_PSG1A1";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_m82a1";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_ACR_30rnd_556x45";
		_rifleTracerMag = "UK3CB_ACR_30rnd_556x45_RT";
		_rifleSubsonicMag = "UK3CB_ACR_30rnd_556x45";
		_rifleGLMag = "UK3CB_ACR_30rnd_556x45";
		_rifleScopedMag = "UK3CB_ACR_30rnd_556x45";
		_carbineMag = "UK3CB_ACR_30rnd_556x45";
		_smgMag = "UK3CB_MP5_30Rnd_9x19_Magazine";
		_pistolMag = "UK3CB_USP_9_15Rnd";

		_autoRifleMag = "rhs_mag_100Rnd_556x45_M855A1_cmag";
		_autoTracerMag = "rhs_mag_100Rnd_556x45_M855A1_cmag_mixed";
		_autoSubsonicMag = "rhs_mag_100Rnd_556x45_M855A1_cmag";
		_arMagCount = 6;		// ar roles
		_arboxMagCount = 16;		// ar boxes

		_mmgMag = "UK3CB_MG3_100rnd_762x51";
		_mmgTracerMag = "UK3CB_MG3_100rnd_762x51_RM";
		_mmgMagCount = 3;		// mmg roles
		_mmgboxMagCount = 6;	// mmg boxes

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "UK3CB_G3_20rnd_762x51";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "rhs_mag_M441_HE";
		_glExplodyhp = "rhs_mag_M433_HEDP";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "rhs_mag_an_m8hc";
		_smokeTwo = "rhs_mag_m18_red";
		_smokeThree = "rhs_mag_m18_purple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_generalAttachments_scoped = "rhsusf_acc_su230a";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_autoRifleAttachments_grip = "rhsusf_acc_harris_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "uk3cb_optic_ZFSG1";
		_dmrAttachments_scoped = "uk3cb_optic_ZFSG1";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_g3";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
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