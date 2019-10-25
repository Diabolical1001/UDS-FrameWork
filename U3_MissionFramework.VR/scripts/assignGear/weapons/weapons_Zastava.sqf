// =======================================================================
// AssignGear - Weapons
// by UDS
// - Defines all of the weapon, magazine and weaponItem classes to be used by the assignGear script.
// - In the case of using a random weapon array make sure that the weapons can use the same ammo and attachments.
// - To remove weapon randomization only use one array entry instead of many eg. _rifleArray = ["class"];, _rifleGLArray = ["class"];

// - Weapons: SAF Weaponry
// - Cases: m21a, m70b3n
// =======================================================================
// Declares Variables

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

	// SAF - M21A - 5.56x45
	case "m21a" :  {
	
		// ============ Weaponry ===========
		
		_rifleArray = ["rhs_weap_m21a"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m21a_pbg40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m21a";
		_carbine = "rhs_weap_m21s";
		_smg = "rhs_weap_scorpion";
		_pistol = "rhs_weap_6p53";
		
		_autoRifle = "rhs_weap_m249_pip_L_para";
		_mmg = "rhs_weap_m84";
		
		_shotty = "rhs_weap_M590_8RD";
		
		_dmr = "rhs_weap_m76";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_m82a1";

		// =========== Ammunition ==========
		
		_rifleMag = "rhsgref_30rnd_556x45_m21";
		_rifleTracerMag = "rhsgref_30rnd_556x45_m21_t";
		_rifleSubsonicMag = "rhsgref_30rnd_556x45_m21";
		_rifleGLMag = "rhsgref_30rnd_556x45_m21";
		_rifleScopedMag = "rhsgref_30rnd_556x45_m21";
		_carbineMag = "rhsgref_30rnd_556x45_m21";
		_smgMag = "rhsgref_20rnd_765x17_vz61";
		_pistolMag = "rhs_18rnd_9x21mm_7N28";
		
		_autoRifleMag = "rhsusf_200rnd_556x45_M855_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_M855_mixed_box";
		_autoSubsonicMag = "rhsusf_200rnd_556x45_M855_box";
		_arMagCount = 1;		// ar roles
		_arboxMagCount = 4;		// ar boxes
		
		_mmgMag = "rhs_100Rnd_762x54mmR_7N26";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;		// mmg roles
		_mmgboxMagCount = 4;	// mmg boxes
		
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		
		_dmrMag = "rhsgref_10Rnd_792x57_m76";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GDM40";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GDM40";
		_glFlareOne = "rhs_VG40MD_White";
		_glFlareTwo = "rhs_VG40MD_Red";
		
		_grenade = "rhssaf_mag_br_m75";
		_smoke = "rhssaf_mag_brd_m83_white";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhssaf_mag_brd_m83_orange","rhssaf_mag_brd_m83_blue"];
		
		// ========== Attachments ==========
		
		_generalAttachments_reflex = "rhs_acc_ekp1";
		_generalAttachments_scoped = "rhs_acc_nita";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit";
		_generalAttachments_gunIR = "rhs_acc_perst1ik";
		_generalAttachments_grip = ""; 
				
		_autoRifleAttachments_reflex = "rhs_acc_ekp8_18";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhs_acc_2dpZenit_ris";
		_autoRifleAttachments_gunIR = "rhs_acc_perst1ik_ris";
		_autoRifleAttachments_grip = "";
		
		_mmgAttachments_reflex = "rhsusf_acc_eotech_552";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";
		
		_dmrAttachments_reflex = "rhs_acc_ekp1";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "rhs_acc_dtk1l";
		_dmrAttachments_supp = "rhs_acc_pbs1";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";
		
		_boltRifleAttachments_base = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";
		
		_amRifleAttachments_base = ["rhsusf_acc_premier"];
		
		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";
		
		// =================================
	};

	// SAF - M70B3N - 7.62x39
	case "m70b3n" :  {
	
		// ============ Weaponry ===========
		
		_rifleArray = ["rhs_weap_m70b3n"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m70b3n_pbg40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m70b3n";
		_carbine = "rhs_weap_m92";
		_smg = "rhs_weap_scorpion";
		_pistol = "rhs_weap_6p53";
		
		_autoRifle = "rhs_weap_m249_pip_L_para";
		_mmg = "rhs_weap_m84";
		
		_shotty = "rhs_weap_M590_8RD";
		
		_dmr = "rhs_weap_m76";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_m82a1";

		// =========== Ammunition ==========

		_rifleMag = "rhssaf_30Rnd_762x39mm_M67";
		_rifleTracerMag = "rhssaf_30Rnd_762x39mm_M78_tracer";
		_rifleSubsonicMag = "rhssaf_30Rnd_762x39mm_M67";
		_rifleGLMag = "rhssaf_30Rnd_762x39mm_M67";
		_rifleScopedMag = "rhssaf_30Rnd_762x39mm_M67";
		_carbineMag = "rhssaf_30Rnd_762x39mm_M67";
		_smgMag = "rhsgref_20rnd_765x17_vz61";
		_pistolMag = "rhs_18rnd_9x21mm_7N28";
		
		_autoRifleMag = "rhsusf_200rnd_556x45_M855_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_M855_mixed_box";
		_autoSubsonicMag = "rhsusf_200rnd_556x45_M855_box";
		_arMagCount = 1;		// ar roles
		_arboxMagCount = 4;		// ar boxes
		
		_mmgMag = "rhs_100Rnd_762x54mmR_7N26";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;		// mmg roles
		_mmgboxMagCount = 4;	// mmg boxes
		
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		
		_dmrMag = "rhsgref_10Rnd_792x57_m76";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GDM40";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GDM40";
		_glFlareOne = "rhs_VG40MD_White";
		_glFlareTwo = "rhs_VG40MD_Red";
		
		_grenade = "rhssaf_mag_br_m75";
		_smoke = "rhssaf_mag_brd_m83_white";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhssaf_mag_brd_m83_orange","rhssaf_mag_brd_m83_blue"];
		
		// ========== Attachments ==========
		
		_generalAttachments_reflex = "rhs_acc_ekp1";
		_generalAttachments_scoped = "rhs_acc_1p78";
		_generalAttachments_muzz = "rhs_acc_dtk1l";
		_generalAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit";
		_generalAttachments_gunIR = "rhs_acc_perst1ik";
		_generalAttachments_grip = ""; 
				
		_autoRifleAttachments_reflex = "rhs_acc_ekp8_18";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhs_acc_2dpZenit_ris";
		_autoRifleAttachments_gunIR = "rhs_acc_perst1ik_ris";
		_autoRifleAttachments_grip = "";
		
		_mmgAttachments_reflex = "rhsusf_acc_eotech_552";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";
		
		_dmrAttachments_reflex = "rhs_acc_ekp1";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "rhs_acc_dtk1l";
		_dmrAttachments_supp = "rhs_acc_pbs1";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";
		
		_boltRifleAttachments_base = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
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