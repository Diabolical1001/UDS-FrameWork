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

	// AUS - AUG A3 - 5.56x45
	case "aug_a3" :  {

		// ============ Weaponry ===========

		_rifleArray = ["uk3cb_auga3_blk"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["uk3cb_auga3_gl_blk"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "uk3cb_auga3_blk";
		_carbine = "uk3cb_auga2_carb_blk";
		_smg = "UK3CB_MP5N";
		_pistol = "UK3CB_USP";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "rhs_weap_minimi_para_railed";
		_mmg = "UK3CB_BAF_L110_762";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_sr25_d";
		_boltRifle = "UK3CB_BAF_L118A1_Covert_DE";
		_amRifle = "rhs_weap_M107_d";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_AUG_30Rnd_556x45_Magazine";
		_rifleTracerMag = "UK3CB_AUG_30Rnd_556x45_Magazine_RT";
		_rifleSubsonicMag = "UK3CB_AUG_30Rnd_556x45_Magazine";
		_rifleGLMag = "UK3CB_AUG_30Rnd_556x45_Magazine";
		_rifleScopedMag = "UK3CB_AUG_30Rnd_556x45_Magazine";
		_carbineMag = "UK3CB_AUG_30Rnd_556x45_Magazine";
		_smgMag = "UK3CB_MP5_30Rnd_9x19_Magazine";
		_pistolMag = "UK3CB_USP_9_15Rnd";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_arMagCount = 3;		// ar roles
		_arboxMagCount = 6;		// ar boxes

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 3;		// mmg roles
		_mmgboxMagCount = 6;	// mmg boxes

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_boltRifleMag = "UK3CB_BAF_762_L42A1_10Rnd";
		_amRifleMag = "ACE_10Rnd_127x99_AMAX_Mag";

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

		_generalAttachments_reflex = "rhsusf_acc_mrds";
		_generalAttachments_scoped = "rhsusf_acc_su230_mrds";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_mrds";
		_autoRifleAttachments_scoped = "rhsusf_acc_su230a";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_mrds";
		_mmgAttachments_scoped = "rhsusf_acc_su230a";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "UK3CB_BAF_Silencer_L110";
		_mmgAttachments_gunLight = "rhsusf_acc_M952V";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_M8541_mrds";
		_dmrAttachments_scoped = "rhsusf_acc_M8541_mrds";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhsusf_acc_SR25S_d";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_nxs_5522x56_md_sun"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhsusf_acc_M8541_d"];

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