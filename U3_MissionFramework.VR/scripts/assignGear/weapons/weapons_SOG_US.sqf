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

	// SOG US - M16 - 5.56x45
	case "m16" :  {

		// ============ Weaponry ===========

		_rifleArray = ["vn_m16"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["vn_m16"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "vn_m16";
		_carbine = "vn_m1carbine";
		_smg = "vn_m3a1";
		_pistol = "vn_m1911";
		_pistolGren = "vn_m79_p";

		_autoRifle = "vn_m60";
		_mmg = "vn_m60";

		_shotty = "vn_m1897";

		_dmr = "vn_m14";
		_boltRifle = "vn_m40a1";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "vn_m16_20_mag";
		_rifleTracerMag = "vn_m16_20_t_mag";
		_rifleSubsonicMag = "vn_m16_20_mag";
		_rifleGLMag = "vn_m16_20_mag";
		_rifleScopedMag = "vn_m16_20_mag";
		_carbineMag = "vn_carbine_15_mag";
		_smgMag = "vn_m3a1_mag";
		_pistolMag = "vn_m1911_mag";

		_autoRifleMag = "vn_m60_100_mag";
		_autoTracerMag = "vn_m60_100_mag";
		_autoSubsonicMag = "vn_m60_100_mag";
		_arMagCount = 3;
		_arboxMagCount = 6;

		_mmgMag = "vn_m60_100_mag";
		_mmgTracerMag = "vn_m60_100_mag";
		_mmgMagCount = 3;
		_mmgboxMagCount = 6;

		_shottyBuck = "vn_m1897_buck_mag";
		_shottySlug = "vn_m1897_fl_mag";

		_dmrMag = "vn_m14_mag";
		_boltRifleMag = "vn_m40a1_mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "vn_40mm_m406_he_mag";
		_glExplodyhp = "vn_40mm_m433_hedp_mag";
		_glSmokeOne = "vn_40mm_m680_smoke_w_mag";
		_glSmokeTwo = "vn_40mm_m682_smoke_r_mag";
		_glSmokeThree = "vn_40mm_m717_smoke_p_mag";
		_glSmokeFour = "vn_40mm_m717_smoke_p_mag";
		_glFlareOne = "vn_40mm_m583_flare_w_mag";
		_glFlareTwo = "vn_40mm_m662_flare_r_mag";

		_grenade = "vn_f1_grenade_mag";
		_flashbang = "vn_m34_grenade_mag";
		_smokeOne = "vn_m18_white_mag";
		_smokeTwo = "vn_m18_red_mag";
		_smokeThree = "vn_m18_purple_mag";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "vn_o_4x_m16";
		_generalAttachments_muzz = "vn_b_m16";
		_generalAttachments_supp = "vn_s_m16";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "";
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

		_dmrAttachments_reflex = "vn_o_9x_m14";
		_dmrAttachments_scoped = "vn_o_9x_m14";
		_dmrAttachments_muzz = "vn_b_m14";
		_dmrAttachments_supp = "vn_s_m14";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "vn_b_camo_m14";

		_boltRifleAttachments_base = ["vn_o_9x_m40a1"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "vn_s_m14";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// SOG US - M16 CAMO - 5.56x45
	case "m16_camo" :  {

		// ============ Weaponry ===========

		_rifleArray = ["vn_m16_camo"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["vn_m16_xm148"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "vn_m16_camo";
		_carbine = "vn_m2carbine";
		_smg = "vn_m3a1";
		_pistol = "vn_m1911";
		_pistolGren = "vn_m79_p";

		_autoRifle = "vn_m60";
		_mmg = "vn_m60";

		_shotty = "vn_m1897";

		_dmr = "vn_m14_camo";
		_boltRifle = "vn_m40a1_camo";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "vn_m16_20_mag";
		_rifleTracerMag = "vn_m16_20_t_mag";
		_rifleSubsonicMag = "vn_m16_20_mag";
		_rifleGLMag = "vn_m16_20_mag";
		_rifleScopedMag = "vn_m16_20_mag";
		_carbineMag = "vn_carbine_30_mag";
		_smgMag = "vn_m3a1_mag";
		_pistolMag = "vn_m1911_mag";

		_autoRifleMag = "vn_m60_100_mag";
		_autoTracerMag = "vn_m60_100_mag";
		_autoSubsonicMag = "vn_m60_100_mag";
		_arMagCount = 3;
		_arboxMagCount = 6;

		_mmgMag = "vn_m60_100_mag";
		_mmgTracerMag = "vn_m60_100_mag";
		_mmgMagCount = 3;
		_mmgboxMagCount = 6;

		_shottyBuck = "vn_m1897_buck_mag";
		_shottySlug = "vn_m1897_fl_mag";

		_dmrMag = "vn_m14_mag";
		_boltRifleMag = "vn_m40a1_mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "vn_40mm_m406_he_mag";
		_glExplodyhp = "vn_40mm_m433_hedp_mag";
		_glSmokeOne = "vn_40mm_m680_smoke_w_mag";
		_glSmokeTwo = "vn_40mm_m682_smoke_r_mag";
		_glSmokeThree = "vn_40mm_m717_smoke_p_mag";
		_glSmokeFour = "vn_40mm_m717_smoke_p_mag";
		_glFlareOne = "vn_40mm_m583_flare_w_mag";
		_glFlareTwo = "vn_40mm_m662_flare_r_mag";

		_grenade = "vn_f1_grenade_mag";
		_flashbang = "vn_m34_grenade_mag";
		_smokeOne = "vn_m18_white_mag";
		_smokeTwo = "vn_m18_red_mag";
		_smokeThree = "vn_m18_purple_mag";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "vn_o_4x_m16";
		_generalAttachments_muzz = "vn_b_m16";
		_generalAttachments_supp = "vn_s_m16";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "";
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

		_dmrAttachments_reflex = "vn_o_9x_m14";
		_dmrAttachments_scoped = "vn_o_9x_m14";
		_dmrAttachments_muzz = "vn_b_m14";
		_dmrAttachments_supp = "vn_s_m14";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "vn_b_camo_m14";

		_boltRifleAttachments_base = ["vn_o_9x_m40a1"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "vn_s_m14";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// SOG US - XM177 - 5.56x45
	case "xm177" :  {

		// ============ Weaponry ===========

		_rifleArray = ["vn_xm177_camo","vn_xm177"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["vn_m16_xm148","vn_xm177_xm148"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "vn_xm177";
		_carbine = "vn_xm177_short";
		_smg = "vn_m45";
		_pistol = "vn_mk22";
		_pistolGren = "vn_m79_p";

		_autoRifle = "vn_m60";
		_mmg = "vn_m60";

		_shotty = "vn_m1897";

		_dmr = "vn_m14_camo";
		_boltRifle = "vn_m40a1_camo";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "vn_m16_20_mag";
		_rifleTracerMag = "vn_m16_20_t_mag";
		_rifleSubsonicMag = "vn_m16_20_mag";
		_rifleGLMag = "vn_m16_20_mag";
		_rifleScopedMag = "vn_m16_20_mag";
		_carbineMag = "vn_carbine_30_mag";
		_smgMag = "vn_m45_mag";
		_pistolMag = "vn_mk22_mag";

		_autoRifleMag = "vn_m60_100_mag";
		_autoTracerMag = "vn_m60_100_mag";
		_autoSubsonicMag = "vn_m60_100_mag";
		_arMagCount = 3;
		_arboxMagCount = 6;

		_mmgMag = "vn_m60_100_mag";
		_mmgTracerMag = "vn_m60_100_mag";
		_mmgMagCount = 3;
		_mmgboxMagCount = 6;

		_shottyBuck = "vn_m1897_buck_mag";
		_shottySlug = "vn_m1897_fl_mag";

		_dmrMag = "vn_m14_mag";
		_boltRifleMag = "vn_m40a1_mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "vn_40mm_m406_he_mag";
		_glExplodyhp = "vn_40mm_m433_hedp_mag";
		_glSmokeOne = "vn_40mm_m680_smoke_w_mag";
		_glSmokeTwo = "vn_40mm_m682_smoke_r_mag";
		_glSmokeThree = "vn_40mm_m717_smoke_p_mag";
		_glSmokeFour = "vn_40mm_m717_smoke_p_mag";
		_glFlareOne = "vn_40mm_m583_flare_w_mag";
		_glFlareTwo = "vn_40mm_m662_flare_r_mag";

		_grenade = "vn_f1_grenade_mag";
		_flashbang = "vn_m34_grenade_mag";
		_smokeOne = "vn_m18_white_mag";
		_smokeTwo = "vn_m18_red_mag";
		_smokeThree = "vn_m18_purple_mag";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "vn_o_4x_m16";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "";
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

		_dmrAttachments_reflex = "vn_o_9x_m14";
		_dmrAttachments_scoped = "vn_o_9x_m14";
		_dmrAttachments_muzz = "vn_b_m14";
		_dmrAttachments_supp = "vn_s_m14";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "vn_b_camo_m14";

		_boltRifleAttachments_base = ["vn_o_9x_m40a1"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "vn_s_m14";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "vn_s_mk22";
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