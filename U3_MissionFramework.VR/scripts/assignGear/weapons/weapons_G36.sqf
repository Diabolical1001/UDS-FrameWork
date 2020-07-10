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

	// USAF - M4A1(Carryhandle) - 5.56x45
	case "g36a" :  {

		// ============ Weaponry ===========

		_rifleArray = ["CUP_arifle_G36A"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["CUP_arifle_AG36"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "CUP_arifle_G36A";
		_carbine = "CUP_arifle_G36C_VFG";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "CUP_arifle_MG36";
		_mmg = "CUP_lmg_MG3_rail";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "CUP_arifle_HK417_20";
		_boltRifle = "CUP_srifle_G22_blk";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhssaf_30rnd_556x45_EPR_G36";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhssaf_30rnd_556x45_EPR_G36";
		_rifleScopedMag = "rhssaf_30rnd_556x45_EPR_G36";
		_carbineMag = "rhssaf_30rnd_556x45_EPR_G36";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_FMJ";

		_autoRifleMag = "CUP_100Rnd_556x45_BetaCMag";
		_autoTracerMag = "CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag";
		_autoSubsonicMag = "CUP_100Rnd_556x45_BetaCMag";
		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		_mmgTracerMag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "CUP_20Rnd_762x51_HK417";
		_boltRifleMag = "CUP_5Rnd_762x67_G22";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

		_glExplody = "1Rnd_HE_Grenade_shell";
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

		_generalAttachments_reflex = "CUP_optic_G36Optics15x";
		_generalAttachments_scoped = "CUP_optic_G36DualOptics";
		_generalAttachments_muzz = "ACE_muzzle_mzls_L";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_generalAttachments_gunIR = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "CUP_optic_HensoldtZO_RDS_PIP";
		_autoRifleAttachments_muzz = "ACE_muzzle_mzls_L";
		_autoRifleAttachments_supp = "rhsusf_acc_rotex5_grey";
		_autoRifleAttachments_gunLight = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_autoRifleAttachments_gunIR = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_eotech_552";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_mmgAttachments_gunIR = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "CUP_optic_SB_11_4x20_PM";
		_dmrAttachments_scoped = "rhsusf_acc_M8541_mrds";
		_dmrAttachments_muzz = "CUP_muzzle_mfsup_SCAR_H";
		_dmrAttachments_supp = "rhsusf_acc_aac_762sd_silencer";
		_dmrAttachments_gunLight = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_dmrAttachments_gunIR = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier","rhsusf_acc_harris_bipod"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "CUP_muzzle_snds_AWM";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "CUP_muzzle_snds_M9";
		_pistolAttachments_gunLight = "CUP_acc_CZ_M3X";
		_pistolAttachments_gunIR = "CUP_acc_CZ_M3X";

		// =================================
	};
	case "g36a_ris" :  {

		// ============ Weaponry ===========

		_rifleArray = ["CUP_arifle_G36A_RIS"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["CUP_arifle_G36A_AG36_RIS"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "CUP_arifle_G36A_RIS";
		_carbine = "CUP_arifle_G36C_VFG";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "CUP_arifle_MG36";
		_mmg = "CUP_lmg_MG3_rail";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "CUP_arifle_HK417_20";
		_boltRifle = "CUP_srifle_G22_blk";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhssaf_30rnd_556x45_EPR_G36";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhssaf_30rnd_556x45_EPR_G36";
		_rifleScopedMag = "rhssaf_30rnd_556x45_EPR_G36";
		_carbineMag = "rhssaf_30rnd_556x45_EPR_G36";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_FMJ";

		_autoRifleMag = "CUP_100Rnd_556x45_BetaCMag";
		_autoTracerMag = "CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag";
		_autoSubsonicMag = "CUP_100Rnd_556x45_BetaCMag";
		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		_mmgTracerMag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "CUP_20Rnd_762x51_HK417";
		_boltRifleMag = "CUP_5Rnd_762x67_G22";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

		_glExplody = "1Rnd_HE_Grenade_shell";
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

		_generalAttachments_reflex = "CUP_optic_ZeissZPoint";
		_generalAttachments_scoped = "CUP_optic_HensoldtZO_RDS_PIP";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "CUP_optic_ZeissZPoint";
		_autoRifleAttachments_scoped = "CUP_optic_HensoldtZO_RDS_PIP";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "rhsusf_acc_rotex5_grey";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_eotech_552";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_mmgAttachments_gunIR = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "CUP_optic_SB_11_4x20_PM";
		_dmrAttachments_scoped = "rhsusf_acc_M8541_mrds";
		_dmrAttachments_muzz = "CUP_muzzle_mfsup_SCAR_H";
		_dmrAttachments_supp = "rhsusf_acc_aac_762sd_silencer";
		_dmrAttachments_gunLight = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_dmrAttachments_gunIR = "CUP_acc_ANPEQ_2_Flashlight_Black_L";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier","rhsusf_acc_harris_bipod"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "CUP_muzzle_snds_AWM";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "CUP_muzzle_snds_M9";
		_pistolAttachments_gunLight = "CUP_acc_CZ_M3X";
		_pistolAttachments_gunIR = "CUP_acc_CZ_M3X";

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