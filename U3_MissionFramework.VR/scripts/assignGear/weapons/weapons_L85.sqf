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
"_glExplody","_glSmokeOne","_glSmokeTwo","_glSmokeThree","_glSmokeFour","_glFlareOne","_glFlareTwo","_grenade","_smoke","_flashbang","_throwG","_facSmokes",
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

	// BAF - L85A2 - 5.56x45
	case "l85a2" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_BAF_L85A2"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L85A2_UGL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L85A2";
		_carbine = "UK3CB_BAF_L22";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L105A1";

		_autoRifle = "UK3CB_BAF_L110A2";
		_mmg = "UK3CB_BAF_L7A2";

		_shotty = "UK3CB_BAF_L128A1";

		_dmr = "UK3CB_BAF_L86A2";
		_boltRifle = "UK3CB_BAF_L115A3";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_BAF_556_30Rnd";
		_rifleTracerMag = "UK3CB_BAF_556_30Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_556_30Rnd";
		_rifleGLMag = "UK3CB_BAF_556_30Rnd";
		_rifleScopedMag = "UK3CB_BAF_556_30Rnd";
		_carbineMag = "UK3CB_BAF_556_30Rnd";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_15Rnd";

		_autoRifleMag = "UK3CB_BAF_556_200Rnd";
		_autoTracerMag = "UK3CB_BAF_556_200Rnd_T";
		_autoSubsonicMag = "UK3CB_BAF_556_200Rnd";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";

		_dmrMag = "UK3CB_BAF_556_30Rnd";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell";
		_glSmokeFour = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		// ========== Attachments ==========

		_generalAttachments_reflex = "RKSL_optic_EOT552";
		_generalAttachments_scoped = "UK3CB_BAF_TA31F";
		_generalAttachments_muzz = "UK3CB_BAF_SFFH";
		_generalAttachments_supp = "UK3CB_BAF_Silencer_L85";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "RKSL_optic_EOT552X";
		_autoRifleAttachments_scoped = "UK3CB_BAF_SUSAT";
		_autoRifleAttachments_muzz = "UK3CB_BAF_SFFH";
		_autoRifleAttachments_supp = "UK3CB_BAF_Silencer_L110";
		_autoRifleAttachments_gunLight = "";
		_autoRifleAttachments_gunIR = "";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "UK3CB_BAF_SUSAT";
		_dmrAttachments_scoped = "UK3CB_BAF_TA31F";
		_dmrAttachments_muzz = "UK3CB_BAF_SFFH";
		_dmrAttachments_supp = "UK3CB_BAF_Silencer_L85";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["RKSL_optic_PMII_525"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "UK3CB_BAF_Silencer_L115A3";

		_amRifleAttachments_base = ["RKSL_optic_PMII_525"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	case "l85a2_ris" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_BAF_L85A2_RIS_AFG"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L85A2_UGL_HWS"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L85A2_RIS_AFG";
		_carbine = "UK3CB_BAF_L22A2";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L105A2";

		_autoRifle = "UK3CB_BAF_L110A2RIS";
		_mmg = "UK3CB_BAF_L7A2";

		_shotty = "UK3CB_BAF_L128A1";

		_dmr = "UK3CB_BAF_L129A1";
		_boltRifle = "UK3CB_BAF_L115A3";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_BAF_556_30Rnd";
		_rifleTracerMag = "UK3CB_BAF_556_30Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_556_30Rnd";
		_rifleGLMag = "UK3CB_BAF_556_30Rnd";
		_rifleScopedMag = "UK3CB_BAF_556_30Rnd";
		_carbineMag = "UK3CB_BAF_556_30Rnd";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_15Rnd";

		_autoRifleMag = "UK3CB_BAF_556_200Rnd";
		_autoTracerMag = "UK3CB_BAF_556_200Rnd_T";
		_autoSubsonicMag = "UK3CB_BAF_556_200Rnd";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";

		_dmrMag = "UK3CB_BAF_762_L42A1_20Rnd";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell";
		_glSmokeFour = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		// ========== Attachments ==========

		_generalAttachments_reflex = "RKSL_optic_EOT552";
		_generalAttachments_scoped = "RKSL_optic_LDS";
		_generalAttachments_muzz = "UK3CB_BAF_SFFH";
		_generalAttachments_supp = "UK3CB_BAF_Silencer_L85";
		_generalAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_generalAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "RKSL_optic_EOT552X";
		_autoRifleAttachments_scoped = "UK3CB_BAF_TA31F";
		_autoRifleAttachments_muzz = "UK3CB_BAF_SFFH";
		_autoRifleAttachments_supp = "UK3CB_BAF_Silencer_L110";
		_autoRifleAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_autoRifleAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "RKSL_optic_LDS";
		_dmrAttachments_scoped = "UK3CB_BAF_TA648_308";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "UK3CB_BAF_Silencer_L115A3";
		_dmrAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_dmrAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_dmrAttachments_grip = "UK3CB_underbarrel_acc_fgrip_bipod";

		_boltRifleAttachments_base = ["RKSL_optic_PMII_525"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "UK3CB_BAF_Silencer_L115A3";

		_amRifleAttachments_base = ["RKSL_optic_PMII_525"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "UK3CB_BAF_Silencer_L105A1";
		_pistolAttachments_gunLight = "UK3CB_BAF_Flashlight_L105A1";
		_pistolAttachments_gunIR = "UK3CB_BAF_L105A1_LLM_IR_R";

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