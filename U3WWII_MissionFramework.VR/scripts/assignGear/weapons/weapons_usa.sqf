// =======================================================================
// AssignGear - German
// by UDS

// - Weapons: German Weaponry
// - Cases: German Heer Early War,
// =======================================================================
// Declares variables

private [
"_rifleOne","_rifleTwo","_rifleThree","_rifleFour","_rifleFive","_pistol","_mmg","_lat","_mat","_sniper","_fire",
"_rifleoneMag","_rifleoneMagt","_rifletwoMag","_rifletwoMagt","_riflethreeMag","_riflethreeMagt","_riflefourMag","_riflefourMagt","_riflefiveMag","_riflefiveMagt","_pistolMag","_mmgMag","_mmgTracerMag","_mmgMagCount","_mmgboxMagCount","_latMag","_matMag","_sniperMag","_fireMag",
"_glExplody","_grenadeOne","_grenadeTwo","_smokeOne","_smokeTwo","_smokeThree","_grenadeAt",
"_demoMag","_atmineMag","_apmineoneMag","_apminetwoMag",
"_glattacment","_rifleoneBayo","_rifletwoBayo",
"_compass"
];

// =======================================================================

switch (_variant) do {

	// German Heer Early War
	case "us_army" :  {

		// ============ Weaponry ===========

		_rifleOne = "LIB_M1903A3_Springfield";
		_rifleTwo = "LIB_M1_Garand";
		_rifleThree = "LIB_M1_Carbine";
		_rifleFour = "LIB_M1918A2_BAR";
		_rifleFive = "LIB_M1A1_Thompson";
		_pistol = "LIB_Colt_M1911";
		_mmg = "LIB_M1919A6";
		_lat = "";
		_mat = "LIB_M1A1_Bazooka";
		_sniper = "LIB_M1903A4_Springfield";
		_fire = "LIB_M2_Flamethrower";

		// =========== Ammunition ==========

		_rifleoneMag = "LIB_5Rnd_762x63";
		_rifleoneMagt = "LIB_5Rnd_762x63_t";
		_rifletwoMag = "LIB_8Rnd_762x63";
		_rifletwoMagt = "LIB_8Rnd_762x63_t";
		_riflethreeMag = "LIB_15Rnd_762x33";
		_riflethreeMagt = "LIB_15Rnd_762x33_t";
		_riflefourMag = "LIB_20Rnd_762x63";
		_riflefourMagt = "LIB_20Rnd_762x63_M1";
		_riflefiveMag = "LIB_30Rnd_45ACP";
		_riflefiveMagt = "LIB_30Rnd_45ACP_t";
		_pistolMag = "LIB_7Rnd_45ACP";
		_mmgMag = "LIB_50Rnd_762x63";
		_mmgTracerMag = "LIB_50Rnd_762x63_M1";
		_mmgMagCount = 2;
		_mmgboxMagCount = 8;
		_latMag = "";
		_matMag = "LIB_1Rnd_60mm_M6";
		_sniperMag = "LIB_5Rnd_762x63";
		_fireMag = "LIB_M2_Flamethrower_Mag";

		_glExplody = "LIB_1Rnd_G_M9A1";
		_grenadeOne = "LIB_US_Mk_2";
		_grenadeTwo = "LIB_F1";
		_smokeOne = "LIB_US_M18";
		_smokeTwo = "LIB_US_M18_Red";
		_smokeThree = "LIB_US_M18_Green";
		_grenadeAt = "LIB_Rpg6";

		_demoMag = "LIB_US_TNT_4pound_mag";
		_atmineMag = "LIB_US_M1A1_ATMINE_mag";
		_apmineoneMag = "LIB_US_M3_MINE_mag";
		_apminetwoMag = "LIB_M3_MINE_mag";

		// ========== Attachments ==========

		_glattacment = "LIB_ACC_GL_M7";
		_rifleoneBayo = "LIB_ACC_M1_Bayo";
		_rifletwoBayo = "LIB_ACC_M1_Bayo";

		// ============== misc =============

		_compass = "LIB_GER_ItemCompass_deg";

		// =================================
	};
#include "default.sqf"
};