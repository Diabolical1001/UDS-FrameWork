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
	case "ussr" :  {

		// ============ Weaponry ===========

		_rifleOne = "LIB_M9130";
		_rifleTwo = "LIB_SVT_40";
		_rifleThree = "LIB_SVT_40";
		_rifleFour = "LIB_PPSh41_m";
		_rifleFive = "LIB_PPSh41_m";
		_pistol = "LIB_TT33";
		_mmg = "LIB_DP28";
		_lat = "LIB_Faustpatrone";
		_mat = "LIB_M1A1_Bazooka";
		_sniper = "LIB_M9130PU";
		_fire = "LIB_M2_Flamethrower";

		// =========== Ammunition ==========

		_rifleoneMag = "LIB_5Rnd_762x54";
		_rifleoneMagt = "LIB_5Rnd_762x54_t30";
		_rifletwoMag = "LIB_10Rnd_762x54_b30";
		_rifletwoMagt = "LIB_10Rnd_762x54_t30";
		_riflethreeMag = "LIB_10Rnd_762x54_b30";
		_riflethreeMagt = "LIB_10Rnd_762x54_t30";
		_riflefourMag = "LIB_71Rnd_762x25";
		_riflefourMagt = "LIB_71Rnd_762x25_t";
		_riflefiveMag = "LIB_35Rnd_762x25";
		_riflefiveMagt = "LIB_35Rnd_762x25_t";
		_pistolMag = "LIB_8Rnd_762x25";
		_mmgMag = "LIB_47Rnd_762x54";
		_mmgTracerMag = "LIB_47Rnd_762x54d";
		_mmgMagCount = 2;
		_mmgboxMagCount = 8;
		_latMag = "LIB_1Rnd_Faustpatrone";
		_matMag = "LIB_1Rnd_60mm_M6";
		_sniperMag = "LIB_5Rnd_762x54_b30";
		_fireMag = "LIB_M2_Flamethrower_Mag";

		_glExplody = "LIB_1Rnd_G_DYAKONOV";
		_grenadeOne = "LIB_Rg42";
		_grenadeTwo = "LIB_Shg24x7";
		_smokeOne = "LIB_RDG";
		_smokeTwo = "LIB_RDG";
		_smokeThree = "LIB_RDG";
		_grenadeAt = "LIB_Rpg6";

		_demoMag = "LIB_Ladung_Big_MINE_mag";
		_atmineMag = "LIB_TM44_MINE_mag";
		_apmineoneMag = "LIB_pomzec_MINE_mag";
		_apminetwoMag = "LIB_PMD6_MINE_mag";

		// ========== Attachments ==========

		_glattacment = "LIB_ACC_GL_DYAKONOV_Empty";
		_rifleoneBayo = "LIB_ACC_M1891_Bayo";
		_rifletwoBayo = "LIB_ACC_K98_Bayo";

		// ============== misc =============

		_compass = "LIB_GER_ItemCompass_deg";

		// =================================
	};
#include "default.sqf"
};