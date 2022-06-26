// =======================================================================
// AssignGear - Weapons
// by UDS
// - Defines all of the weapon, magazine and weaponItem classes to be used by the assignGear script.
// - In the case of using a random weapon array make sure that the weapons can use the same ammo and attachments.
// - To remove weapon randomization only use one array entry instead of many eg. _rifleArray = ["class"];, _rifleGLArray = ["class"];

// - Weapons: VHS Type Weaponry
// - Cases: vhsd2, vhsd2_ct15x
// =======================================================================
// Declares variables

private [
"_rifleArray","_rifleRandom","_rifle","_rifleGLArray","_rifleGLRandom","_rifleGL","_rifleScoped","_autoRifle","_carbine","_dmr","_mmg","_smg","_pistol","_shotty","_pistolGren","_boltRifle","_amRifle",
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

	// GREF - VHS-D2 - 5.56x45
	case "vhsd2" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_vhsd2"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_vhsd2_bg"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_vhsd2";
		_carbine = "rhs_weap_vhsk2";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_m9";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "rhs_weap_m249_pip_S_para";
		_mmg = "rhs_weap_m240G";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_sr25_ec";
		_boltRifle = "rhs_weap_m40a5";
		_amRifle = "rhs_weap_M107_w";

		// =========== Ammunition ==========

		_rifleMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleTracerMag = "rhsgref_30rnd_556x45_vhs2_t";
		_rifleSubsonicMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleGLMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleScopedMag = "rhsgref_30rnd_556x45_vhs2";
		_carbineMag = "rhsgref_30rnd_556x45_vhs2";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 2;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "1Rnd_HE_Grenade_shell";
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

		_generalAttachments_reflex = "rhsusf_acc_eotech_552";
		_generalAttachments_scoped = "rhsusf_acc_ACOG2";
		_generalAttachments_muzz = "rhsusf_acc_SFMB556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "rhsusf_acc_tdstubby_blk";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_552";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_compm4";
		_dmrAttachments_scoped = "rhsusf_acc_ACOG3";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhsusf_acc_SR25S";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// GREF - VHS-D2(CT1.5x) - 5.56x45
	case "vhsd2_ct15x" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_vhsd2_ct15x"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_vhsd2_bg_ct15x"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_vhsd2_ct15x";
		_carbine = "rhs_weap_vhsk2";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_m9";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "rhs_weap_m249_pip_S_para";
		_mmg = "rhs_weap_m240G";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_sr25_ec";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_M107_w";

		// =========== Ammunition ==========

		_rifleMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleTracerMag = "rhsgref_30rnd_556x45_vhs2_t";
		_rifleSubsonicMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleGLMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleScopedMag = "rhsgref_30rnd_556x45_vhs2";
		_carbineMag = "rhsgref_30rnd_556x45_vhs2";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 2;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "1Rnd_HE_Grenade_shell";
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

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "";
		_generalAttachments_muzz = "rhsusf_acc_SFMB556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "rhsusf_acc_tdstubby_blk";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_552";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_compm4";
		_dmrAttachments_scoped = "rhsusf_acc_ACOG3";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhsusf_acc_SR25S";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
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