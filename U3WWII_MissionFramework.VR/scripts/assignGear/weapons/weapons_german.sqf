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
	case "heer_early" :  {

		// ============ Weaponry ===========

		_rifleOne = "LIB_K98";
		_rifleTwo = "LIB_G41";
		_rifleThree = "LIB_G41";
		_rifleFour = "LIB_MP44";
		_rifleFive = "LIB_MP38";
		_pistol = "LIB_M1896";
		_mmg = "LIB_MG34";
		_lat = "LIB_PzFaust_30m";
		_mat = "LIB_RPzB";
		_sniper = "LIB_K98ZF39";
		_fire = "LIB_M2_Flamethrower";

		// =========== Ammunition ==========

		_rifleoneMag = "LIB_5Rnd_792x57";
		_rifleoneMagt = "LIB_5Rnd_792x57_t";
		_rifletwoMag = "LIB_10Rnd_792x57_clip";
		_rifletwoMagt = "LIB_10Rnd_792x57_clip";
		_riflethreeMag = "LIB_10Rnd_792x57_clip";
		_riflethreeMagt = "LIB_10Rnd_792x57_clip";
		_riflefourMag = "LIB_30Rnd_792x33";
		_riflefourMagt = "LIB_30rnd_792x33_t";
		_riflefiveMag = "LIB_32Rnd_9x19";
		_riflefiveMagt = "LIB_32rnd_9x19_t";
		_pistolMag = "LIB_10Rnd_9x19_M1896";
		_mmgMag = "LIB_50Rnd_792x57";
		_mmgTracerMag = "LIB_50Rnd_792x57_sS";
		_mmgMagCount = 2;
		_mmgboxMagCount = 8;
		_latMag = "LIB_1Rnd_PzFaust_30m";
		_matMag = "LIB_1Rnd_RPzB";
		_sniperMag = "LIB_5Rnd_792x57";
		_fireMag = "LIB_M2_Flamethrower_Mag";

		_glExplody = "LIB_1Rnd_G_PZGR_30";
		_grenadeOne = "LIB_Shg24";
		_grenadeTwo = "LIB_Shg24x7";
		_smokeOne = "LIB_NB39";
		_smokeTwo = "LIB_NB39";
		_smokeThree = "LIB_NB39";
		_grenadeAt = "LIB_Pwm";

		_demoMag = "LIB_Ladung_Big_MINE_mag";
		_atmineMag = "LIB_TMI_42_MINE_mag";
		_apmineoneMag = "LIB_SMI_35_MINE_mag";
		_apminetwoMag = "LIB_shumine_42_MINE_mag";

		// ========== Attachments ==========

		_glattacment = "LIB_ACC_GW_SB_Empty";
		_rifleoneBayo = "LIB_ACC_K98_Bayo";
		_rifletwoBayo = "LIB_ACC_K98_Bayo";

		// ============== misc =============

		_compass = "LIB_GER_ItemCompass_deg";

		// =================================
	};
#include "default.sqf"
};