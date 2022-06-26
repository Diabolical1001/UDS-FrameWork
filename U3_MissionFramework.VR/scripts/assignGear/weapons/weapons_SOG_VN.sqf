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

	// SOG VN - 56 - 7.62x39
	case "type_56" :  {

		// ============ Weaponry ===========

		_rifleArray = ["vn_type56"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["vn_sks_gl"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "vn_type56";
		_carbine = "vn_ppsh41";
		_smg = "vn_mat49";
		_pistol = "vn_pm";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "vn_rpd";
		_mmg = "vn_dp28";

		_shotty = "vn_izh54";

		_dmr = "vn_sks";
		_boltRifle = "vn_m9130";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "vn_type56_mag";
		_rifleTracerMag = "vn_type56_t_mag";
		_rifleSubsonicMag = "vn_type56_mag";
		_rifleGLMag = "vn_sks_mag";
		_rifleScopedMag = "vn_m16_20_mag";
		_carbineMag = "vn_ppsh41_35_mag";
		_smgMag = "vn_mat49_mag";
		_pistolMag = "vn_pm_mag";

		_autoRifleMag = "vn_rpd_125_mag";
		_autoTracerMag = "vn_rpd_125_mag";
		_autoSubsonicMag = "vn_rpd_125_mag";
		_arMagCount = 3;
		_arboxMagCount = 6;

		_mmgMag = "vn_dp28_mag";
		_mmgTracerMag = "vn_dp28_mag";
		_mmgMagCount = 8;
		_mmgboxMagCount = 16;

		_shottyBuck = "vn_izh54_mag";
		_shottySlug = "vn_izh54_mag";

		_dmrMag = "vn_sks_mag";
		_boltRifleMag = "vn_m38_mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

		_glExplody = "vn_22mm_m60_frag_mag";
		_glExplodyhp = "vn_22mm_m60_heat_mag";
		_glSmokeOne = "vn_22mm_m22_smoke_mag";
		_glSmokeTwo = "vn_22mm_m19_wp_mag";
		_glSmokeThree = "vn_22mm_m22_smoke_mag";
		_glSmokeFour = "vn_22mm_m22_smoke_mag";
		_glFlareOne = "vn_22mm_lume_mag";
		_glFlareTwo = "vn_22mm_lume_mag";

		_grenade = "vn_rg42_grenade_mag";
		_flashbang = "vn_molotov_grenade_mag";
		_smokeOne = "vn_rdg2_mag";
		_smokeTwo = "vn_rdg2_mag";
		_smokeThree = "vn_rdg2_mag";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "";
		_generalAttachments_muzz = "vn_b_type56";
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

		_dmrAttachments_reflex = "vn_o_3x_m9130";
		_dmrAttachments_scoped = "vn_o_3x_m9130";
		_dmrAttachments_muzz = "vn_b_sks";
		_dmrAttachments_supp = "";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["vn_o_3x_m9130","vn_b_camo_m9130"];
		_boltRifleAttachments_muzz = "vn_b_m38";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
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