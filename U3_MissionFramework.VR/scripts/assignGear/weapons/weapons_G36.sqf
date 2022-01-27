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

	// BW - G36A1 - 5.56x45
	case "g36a1" :  {

		// ============ Weaponry ===========

		_rifleArray = ["BWA3_G36A1"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["BWA3_G36A1_AG40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "BWA3_G36A1";
		_carbine = "BWA3_G36KA0";
		_smg = "BWA3_MP7";
		_pistol = "BWA3_P12";

		_autoRifle = "BWA3_MG4";
		_mmg = "BWA3_MG3";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "BWA3_G28";
		_boltRifle = "BWA3_G29";
		_amRifle = "BWA3_G82";

		// =========== Ammunition ==========

		_rifleMag = "BWA3_30Rnd_556x45_G36";
		_rifleTracerMag = "BWA3_30Rnd_556x45_G36_Tracer";
		_rifleSubsonicMag = "BWA3_30Rnd_556x45_G36_SD";
		_rifleGLMag = "BWA3_30Rnd_556x45_G36";
		_rifleScopedMag = "BWA3_30Rnd_556x45_G36";
		_carbineMag = "BWA3_30Rnd_556x45_G36";
		_smgMag = "BWA3_40Rnd_46x30_MP7";
		_pistolMag = "BWA3_12Rnd_45ACP_P12";

		_autoRifleMag = "BWA3_200Rnd_556x45";
		_autoTracerMag = "BWA3_200Rnd_556x45_Tracer";
		_autoSubsonicMag = "BWA3_200Rnd_556x45";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "BWA3_120Rnd_762x51";
		_mmgTracerMag = "BWA3_120Rnd_762x51_Tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "BWA3_20Rnd_762x51_G28_AP";
		_boltRifleMag = "BWA3_10Rnd_86x70_G29";
		_amRifleMag = "BWA3_10Rnd_127x99_G82_Raufoss_Tracer_Dim";

		_glExplody = "rhs_mag_M441_HE";
		_glExplodyhp = "rhs_mag_M433_HEDP";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "BWA3_DM51A1";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "BWA3_DM25";
		_smokeTwo = "BWA3_DM32_Red";
		_smokeThree = "BWA3_DM32_Purple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "BWA3_muzzle_snds_Rotex_IIIC";
		_generalAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_generalAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "BWA3_optic_EOTech";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "BWA3_muzzle_snds_QDSS";
		_autoRifleAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_autoRifleAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "BWA3_optic_EOTech";
		_mmgAttachments_scoped = "BWA3_optic_EOTech";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_mmgAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_mmgAttachments_grip = "BWA3_bipod_MG3";

		_dmrAttachments_reflex = "BWA3_optic_PMII_ShortdotCC";
		_dmrAttachments_scoped = "BWA3_optic_PMII_DMR";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "BWA3_muzzle_snds_Rotex_IIA";
		_dmrAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_dmrAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_dmrAttachments_grip = "BWA3_bipod_Harris_tan";

		_boltRifleAttachments_base = ["BWA3_optic_M5Xi_MSR","BWA3_bipod_Harris_tan"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "BWA3_muzzle_snds_Rotex_Monoblock";

		_amRifleAttachments_base = ["BWA3_optic_Hensoldt"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "BWA3_muzzle_snds_Impuls_IIA";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "BWA3_acc_LLMPI_irlaser";

		// =================================
	};

	// BW - G36A3 - 5.56x45
	case "g36a3" :  {

		// ============ Weaponry ===========

		_rifleArray = ["BWA3_G36A3"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["BWA3_G36A3_AG40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "BWA3_G36A3";
		_carbine = "BWA3_G36KA3";
		_smg = "BWA3_MP7";
		_pistol = "BWA3_P12";

		_autoRifle = "BWA3_MG4";
		_mmg = "BWA3_MG3";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "BWA3_G28";
		_boltRifle = "BWA3_G29";
		_amRifle = "BWA3_G82";

		// =========== Ammunition ==========

		_rifleMag = "BWA3_30Rnd_556x45_G36";
		_rifleTracerMag = "BWA3_30Rnd_556x45_G36_Tracer";
		_rifleSubsonicMag = "BWA3_30Rnd_556x45_G36_SD";
		_rifleGLMag = "BWA3_30Rnd_556x45_G36";
		_rifleScopedMag = "BWA3_30Rnd_556x45_G36";
		_carbineMag = "BWA3_30Rnd_556x45_G36";
		_smgMag = "BWA3_40Rnd_46x30_MP7";
		_pistolMag = "BWA3_12Rnd_45ACP_P12";

		_autoRifleMag = "BWA3_200Rnd_556x45";
		_autoTracerMag = "BWA3_200Rnd_556x45_Tracer";
		_autoSubsonicMag = "BWA3_200Rnd_556x45";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "BWA3_120Rnd_762x51";
		_mmgTracerMag = "BWA3_120Rnd_762x51_Tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "BWA3_20Rnd_762x51_G28_AP";
		_boltRifleMag = "BWA3_10Rnd_86x70_G29";
		_amRifleMag = "BWA3_10Rnd_127x99_G82_Raufoss_Tracer_Dim";

		_glExplody = "rhs_mag_M441_HE";
		_glExplodyhp = "rhs_mag_M433_HEDP";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "BWA3_DM51A1";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "BWA3_DM25";
		_smokeTwo = "BWA3_DM32_Red";
		_smokeThree = "BWA3_DM32_Purple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "BWA3_optic_RSAS_riser";
		_generalAttachments_scoped = "BWA3_optic_ZO4x30_RSAS";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "BWA3_muzzle_snds_Rotex_IIIC";
		_generalAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_generalAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "BWA3_optic_RSAS_riser";
		_autoRifleAttachments_scoped = "BWA3_optic_ZO4x30_RSAS";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "BWA3_muzzle_snds_QDSS";
		_autoRifleAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_autoRifleAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "BWA3_optic_EOTech";
		_mmgAttachments_scoped = "BWA3_optic_EOTech";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_mmgAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_mmgAttachments_grip = "BWA3_bipod_MG3";

		_dmrAttachments_reflex = "BWA3_optic_PMII_ShortdotCC";
		_dmrAttachments_scoped = "BWA3_optic_PMII_DMR_MicroT1_front";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "BWA3_muzzle_snds_Rotex_IIA";
		_dmrAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_dmrAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_dmrAttachments_grip = "BWA3_bipod_Harris_tan";

		_boltRifleAttachments_base = ["BWA3_optic_M5Xi_Tremor3_MicroT2","BWA3_bipod_Harris_tan"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "BWA3_muzzle_snds_Rotex_Monoblock";

		_amRifleAttachments_base = ["BWA3_optic_Hensoldt"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "BWA3_muzzle_snds_Impuls_IIA";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "BWA3_acc_LLMPI_irlaser";

		// =================================
	};

	// BW - G38 - 5.56x45
	case "g38" :  {

		// ============ Weaponry ===========

		_rifleArray = ["BWA3_G38"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["BWA3_G38_AG40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "BWA3_G38";
		_carbine = "BWA3_G38C";
		_smg = "BWA3_MP7";
		_pistol = "BWA3_P12";

		_autoRifle = "BWA3_MG4";
		_mmg = "BWA3_MG3";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "BWA3_G27_tan";
		_boltRifle = "BWA3_G29";
		_amRifle = "BWA3_G82";

		// =========== Ammunition ==========

		_rifleMag = "BWA3_30Rnd_556x45_G36";
		_rifleTracerMag = "BWA3_30Rnd_556x45_G36_Tracer";
		_rifleSubsonicMag = "BWA3_30Rnd_556x45_G36_SD";
		_rifleGLMag = "BWA3_30Rnd_556x45_G36";
		_rifleScopedMag = "BWA3_30Rnd_556x45_G36";
		_carbineMag = "BWA3_30Rnd_556x45_G36";
		_smgMag = "BWA3_40Rnd_46x30_MP7";
		_pistolMag = "BWA3_12Rnd_45ACP_P12";

		_autoRifleMag = "BWA3_200Rnd_556x45";
		_autoTracerMag = "BWA3_200Rnd_556x45_Tracer";
		_autoSubsonicMag = "BWA3_200Rnd_556x45";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "BWA3_120Rnd_762x51";
		_mmgTracerMag = "BWA3_120Rnd_762x51_Tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "BWA3_20Rnd_762x51_G28_AP";
		_boltRifleMag = "BWA3_10Rnd_86x70_G29";
		_amRifleMag = "BWA3_10Rnd_127x99_G82_Raufoss_Tracer_Dim";

		_glExplody = "rhs_mag_M441_HE";
		_glExplodyhp = "rhs_mag_M433_HEDP";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";

		_grenade = "BWA3_DM51A1";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "BWA3_DM25";
		_smokeTwo = "BWA3_DM32_Red";
		_smokeThree = "BWA3_DM32_Purple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "BWA3_optic_CompM2";
		_generalAttachments_scoped = "BWA3_optic_ZO4x30_MicroT2";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "BWA3_muzzle_snds_Rotex_IIIC";
		_generalAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_generalAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "BWA3_optic_CompM2";
		_autoRifleAttachments_scoped = "BWA3_optic_ZO4x30_MicroT2";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "BWA3_muzzle_snds_QDSS";
		_autoRifleAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_autoRifleAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "BWA3_optic_EOTech";
		_mmgAttachments_scoped = "BWA3_optic_EOTech";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_mmgAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_mmgAttachments_grip = "BWA3_bipod_MG3";

		_dmrAttachments_reflex = "BWA3_optic_PMII_ShortdotCC";
		_dmrAttachments_scoped = "BWA3_optic_PMII_DMR_MicroT1_front";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "BWA3_muzzle_snds_Rotex_IIA";
		_dmrAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_dmrAttachments_gunIR = "BWA3_acc_LLM01_irlaser";
		_dmrAttachments_grip = "BWA3_bipod_Atlas";

		_boltRifleAttachments_base = ["BWA3_optic_M5Xi_Tremor3_MicroT2","BWA3_bipod_Harris_tan"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "BWA3_muzzle_snds_Rotex_Monoblock";

		_amRifleAttachments_base = ["BWA3_optic_Hensoldt"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "BWA3_muzzle_snds_Impuls_IIA";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "BWA3_acc_LLMPI_irlaser";

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
