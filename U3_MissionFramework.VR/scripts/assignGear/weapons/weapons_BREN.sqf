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

	// ACR - BREN 2 - 5.56x45
	case "bren2_14" :  {

		// ============ Weaponry ===========

		_rifleArray = ["CUP_CZ_BREN2_556_14"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["CUP_CZ_BREN2_556_14_GL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "CUP_CZ_BREN2_556_14";
		_carbine = "CUP_CZ_BREN2_556_8";
		_smg = "CUP_smg_EVO";
		_pistol = "CUP_hgun_Phantom";

		_autoRifle = "rhs_weap_m249_light_S";
		_mmg = "rhs_weap_m84";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_m76";
		_boltRifle = "CUP_srifle_CZ750";
		_amRifle = "rhs_weap_M107_w";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_PMAG";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_smgMag = "CUP_30Rnd_9x19_EVO";
		_pistolMag = "CUP_18Rnd_9x19_Phantom";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhs_100Rnd_762x54mmR_7N26";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhsgref_10Rnd_792x57_m76";
		_boltRifleMag = "CUP_10Rnd_762x51_CZ750";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "rhs_mag_M433_HEDP";
		_glSmokeOne = "rhs_mag_m714_White";
		_glSmokeTwo = "rhs_mag_m713_Red";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "rhs_mag_M585_white";
		_glFlareTwo = "rhs_mag_m662_red";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "rhs_mag_an_m8hc";
		_smokeTwo = "rhs_mag_m18_red";
		_smokeThree = "rhs_mag_m18_purple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "rhsusf_acc_T1_high";
		_generalAttachments_scoped = "rhsusf_acc_su230";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit_ris";
		_generalAttachments_gunIR = "rhs_acc_perst1ik_ris";
		_generalAttachments_grip = "";

		_generalAttachments_reflex = "rhsusf_acc_compm4";
		_generalAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit_ris";
		_generalAttachments_gunIR = "rhs_acc_perst1ik_ris";
		_autoRifleAttachments_grip = "rhsusf_acc_saw_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_552";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhs_acc_pso1m21";
		_dmrAttachments_scoped = "rhs_acc_pso1m21";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhs_acc_pbs1";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhs_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "muzzle_snds_L";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "CUP_acc_MLPLS_Laser";

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