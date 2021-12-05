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

	// MX - 6.5
	case "mx" :  {

		// ============ Weaponry ===========

		_rifleArray = ["arifle_MX_F"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["arifle_MX_GL_F"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "arifle_MX_F";
		_carbine = "arifle_MXC_F";
		_smg = "SMG_01_F";
		_pistol = "hgun_Pistol_heavy_01_F";

		_autoRifle = "LMG_Mk200_F";
		_mmg = "MMG_02_camo_F";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "srifle_EBR_F";
		_boltRifle = "srifle_DMR_02_F";
		_amRifle = "srifle_LRR_F";

		// =========== Ammunition ==========

		_rifleMag = "30Rnd_65x39_caseless_mag";
		_rifleTracerMag = "30Rnd_65x39_caseless_mag_Tracer";
		_rifleSubsonicMag = "30Rnd_65x39_caseless_mag";
		_rifleGLMag = "30Rnd_65x39_caseless_mag";
		_rifleScopedMag = "30Rnd_65x39_caseless_mag";
		_carbineMag = "30Rnd_65x39_caseless_mag";
		_smgMag = "30Rnd_45ACP_Mag_SMG_01";
		_pistolMag = "11Rnd_45ACP_Mag";

		_autoRifleMag = "200Rnd_65x39_cased_Box";
		_autoTracerMag = "200Rnd_65x39_cased_Box_Red";
		_autoSubsonicMag = "200Rnd_65x39_cased_Box";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "130Rnd_338_Mag";
		_mmgTracerMag = "130Rnd_338_Mag";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "20Rnd_762x51_Mag";
		_boltRifleMag = "10Rnd_338_Mag";
		_amRifleMag = "ACE_7Rnd_408_305gr_Mag";

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

		_generalAttachments_reflex = "optic_Holosight";
		_generalAttachments_scoped = "optic_Hamr";
		_generalAttachments_muzz = "ACE_muzzle_mzls_H";
		_generalAttachments_supp = "muzzle_snds_H";
		_generalAttachments_gunLight = "acc_flashlight";
		_generalAttachments_gunIR = "ACE_acc_pointer_green";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "optic_Holosight";
		_autoRifleAttachments_scoped = "optic_Hamr";
		_autoRifleAttachments_muzz = "ACE_muzzle_mzls_H";
		_autoRifleAttachments_supp = "muzzle_snds_H";
		_autoRifleAttachments_gunLight = "acc_flashlight";
		_autoRifleAttachments_gunIR = "ACE_acc_pointer_green";
		_autoRifleAttachments_grip = "bipod_01_F_khk";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "optic_Hamr";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_338_black";
		_mmgAttachments_gunLight = "acc_flashlight";
		_mmgAttachments_gunIR = "ACE_acc_pointer_green";
		_mmgAttachments_grip = "bipod_01_F_mtp";

		_dmrAttachments_reflex = "optic_Hamr";
		_dmrAttachments_scoped = "optic_dms";
		_dmrAttachments_muzz = "ACE_muzzle_mzls_B";
		_dmrAttachments_supp = "muzzle_snds_B";
		_dmrAttachments_gunLight = "acc_flashlight";
		_dmrAttachments_gunIR = "ACE_acc_pointer_green";
		_dmrAttachments_grip = "bipod_01_F_khk";

		_boltRifleAttachments_base = ["optic_AMS","bipod_01_F_blk"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "muzzle_snds_338_black";

		_amRifleAttachments_base = ["optic_lrps"];

		_pistolAttachments_reflex = "optic_MRD";
		_pistolAttachments_muzz = "ACE_muzzle_mzls_smg_01";
		_pistolAttachments_supp = "muzzle_snds_acp";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// KH2002 - 6.5
	case "kh2002" :  {

		// ============ Weaponry ===========

		_rifleArray = ["arifle_Katiba_F"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["arifle_Katiba_GL_F"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "arifle_Katiba_F";
		_carbine = "arifle_Katiba_C_F";
		_smg = "SMG_02_F";
		_pistol = "hgun_ACPC2_F";

		_autoRifle = "LMG_Zafir_F";
		_mmg = "MMG_01_hex_F";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "srifle_DMR_01_F";
		_boltRifle = "srifle_DMR_05_hex_F";
		_amRifle = "srifle_GM6_camo_F";

		// =========== Ammunition ==========

		_rifleMag = "30Rnd_65x39_caseless_green";
		_rifleTracerMag = "30Rnd_65x39_caseless_green_mag_Tracer";
		_rifleSubsonicMag = "30Rnd_65x39_caseless_green";
		_rifleGLMag = "30Rnd_65x39_caseless_green";
		_rifleScopedMag = "30Rnd_65x39_caseless_green";
		_carbineMag = "30Rnd_65x39_caseless_green";
		_smgMag = "30Rnd_9x21_Mag_SMG_02";
		_pistolMag = "9Rnd_45ACP_Mag";

		_autoRifleMag = "150Rnd_762x54_Box";
		_autoTracerMag = "150Rnd_762x54_Box_Tracer";
		_autoSubsonicMag = "150Rnd_762x54_Box";
		_arMagCount = 1;
		_arboxMagCount = 5;

		_mmgMag = "150Rnd_93x64_Mag";
		_mmgTracerMag = "150Rnd_93x64_Mag";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "10Rnd_762x54_Mag";
		_boltRifleMag = "10Rnd_93x64_DMR_05_Mag";
		_amRifleMag = "ACE_5Rnd_127x99_AMAX_Mag";

		_glExplody = "1Rnd_HE_Grenade_shell";
		_glExplodyhp = "rhs_mag_M433_HEDP";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeOrange_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokeBlue_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokeGreen_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "rhs_mag_rgd5";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhs_mag_rdg2_white";
		_smokeTwo = "rhs_mag_nspd";
		_smokeThree = "rhs_mag_rdg2_black";

		// ========== Attachments ==========

		_generalAttachments_reflex = "optic_ACO_grn";
		_generalAttachments_scoped = "optic_ERCO_blk_F";
		_generalAttachments_muzz = "ACE_muzzle_mzls_H";
		_generalAttachments_supp = "muzzle_snds_65_TI_hex_F";
		_generalAttachments_gunLight = "acc_flashlight";
		_generalAttachments_gunIR = "ACE_acc_pointer_green";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "optic_ACO_grn";
		_autoRifleAttachments_scoped = "optic_Arco_blk_F";
		_autoRifleAttachments_muzz = "ACE_muzzle_mzls_H";
		_autoRifleAttachments_supp = "";
		_autoRifleAttachments_gunLight = "acc_flashlight";
		_autoRifleAttachments_gunIR = "ACE_acc_pointer_green";
		_autoRifleAttachments_grip = "bipod_01_F_khk";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "optic_Arco_blk_F";
		_mmgAttachments_muzz = "muzzle_snds_93mmg_tan";
		_mmgAttachments_supp = "muzzle_snds_338_black";
		_mmgAttachments_gunLight = "acc_flashlight";
		_mmgAttachments_gunIR = "ACE_acc_pointer_green";
		_mmgAttachments_grip = "bipod_02_F_hex";

		_dmrAttachments_reflex = "optic_ACO_grn";
		_dmrAttachments_scoped = "optic_KHS_hex";
		_dmrAttachments_muzz = "ACE_muzzle_mzls_B";
		_dmrAttachments_supp = "muzzle_snds_B_khk_F";
		_dmrAttachments_gunLight = "acc_flashlight";
		_dmrAttachments_gunIR = "ACE_acc_pointer_green";
		_dmrAttachments_grip = "bipod_02_F_hex";

		_boltRifleAttachments_base = ["optic_KHS_hex","bipod_02_F_hex"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "muzzle_snds_93mmg";

		_amRifleAttachments_base = ["optic_SOS"];

		_pistolAttachments_reflex = "optic_MRD";
		_pistolAttachments_muzz = "ACE_muzzle_mzls_smg_01";
		_pistolAttachments_supp = "muzzle_snds_acp";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// F2000 - 556.45
	case "F2000" :  {

		// ============ Weaponry ===========

		_rifleArray = ["arifle_Mk20_F"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["arifle_Mk20_GL_F"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "arifle_Mk20_F";
		_carbine = "arifle_Mk20C_F";
		_smg = "SMG_03C_TR_camo";
		_pistol = "hgun_Rook40_F";

		_autoRifle = "LMG_Mk200_F";
		_mmg = "UK3CB_MG3_KWS_G";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "srifle_DMR_06_camo_F";
		_boltRifle = "srifle_DMR_05_hex_F";
		_amRifle = "srifle_GM6_camo_F";

		// =========== Ammunition ==========

		_rifleMag = "30Rnd_556x45_Stanag";
		_rifleTracerMag = "30Rnd_556x45_Stanag_Tracer_Yellow";
		_rifleSubsonicMag = "30Rnd_556x45_Stanag";
		_rifleGLMag = "30Rnd_556x45_Stanag";
		_rifleScopedMag = "30Rnd_556x45_Stanag";
		_carbineMag = "30Rnd_556x45_Stanag";
		_smgMag = "50Rnd_570x28_SMG_03";
		_pistolMag = "16Rnd_9x21_Mag";

		_autoRifleMag = "200Rnd_65x39_cased_Box";
		_autoTracerMag = "200Rnd_65x39_cased_Box_Tracer";
		_autoSubsonicMag = "200Rnd_65x39_cased_Box";
		_arMagCount = 1;
		_arboxMagCount = 5;

		_mmgMag = "UK3CB_MG3_100rnd_762x51_Y";
		_mmgTracerMag = "150Rnd_93x64_Mag";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "20Rnd_762x51_Mag";
		_boltRifleMag = "10Rnd_93x64_DMR_05_Mag";
		_amRifleMag = "ACE_5Rnd_127x99_AMAX_Mag";

		_glExplody = "1Rnd_HE_Grenade_shell";
		_glExplodyhp = "rhs_mag_M433_HEDP";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeOrange_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokeBlue_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokeGreen_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "rhssaf_mag_br_m75";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhssaf_mag_brd_m83_white";
		_smokeTwo = "rhssaf_mag_brd_m83_red";
		_smokeThree = "rhssaf_mag_brd_m83_blue";

		// ========== Attachments ==========

		_generalAttachments_reflex = "optic_ACO_grn";
		_generalAttachments_scoped = "optic_MRCO";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "muzzle_snds_m_khk_F";
		_generalAttachments_gunLight = "acc_flashlight";
		_generalAttachments_gunIR = "ACE_acc_pointer_green";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "optic_Holosight";
		_autoRifleAttachments_scoped = "optic_MRCO";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "muzzle_snds_H";
		_autoRifleAttachments_gunLight = "acc_flashlight";
		_autoRifleAttachments_gunIR = "ACE_acc_pointer_green";
		_autoRifleAttachments_grip = "bipod_01_F_khk";

		_mmgAttachments_reflex = "optic_Holosight_khk_F";
		_mmgAttachments_scoped = "optic_MRCO";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "acc_flashlight";
		_mmgAttachments_gunIR = "ACE_acc_pointer_green";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "optic_MRCO";
		_dmrAttachments_scoped = "optic_AMS_khk";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "muzzle_snds_B_khk_F";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "bipod_03_F_oli";

		_boltRifleAttachments_base = ["optic_KHS_hex","bipod_02_F_hex"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "muzzle_snds_93mmg";

		_amRifleAttachments_base = ["optic_SOS"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "muzzle_snds_L";
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