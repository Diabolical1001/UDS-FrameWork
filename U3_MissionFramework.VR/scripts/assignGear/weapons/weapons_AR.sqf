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

	// USAF - M4A1 - 5.56x45
	case "m4a1" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_m4_carryhandle"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m4_carryhandle_m203"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m4_carryhandle";
		_carbine = "rhs_weap_m4";
		_smg = "UK3CB_MP5";
		_pistol = "rhsusf_weap_m9";

		_autoRifle = "rhs_weap_m249_pip_ris";
		_mmg = "rhs_weap_m240B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_m14ebrri";
		_boltRifle = "rhs_weap_m24sws";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_762x51_m118_special_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_compm4";
		_generalAttachments_scoped = "rhsusf_acc_ACOG";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_generalAttachments_grip = "rhsusf_acc_tdstubby_blk";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_saw_bipod";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_ACOG3";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4";
		_dmrAttachments_muzz = "rhsusf_acc_m14_flashsuppresor";
		_dmrAttachments_supp = "rhsusf_acc_aac_m14dcqd_silencer";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "rhsusf_acc_m24_muzzlehider_black";
		_boltRifleAttachments_supp = "rhsusf_acc_m24_silencer_black";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// USAF - M4A1 Block II - 5.56x45
	case "m4a1blockii" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_m4a1_blockII","rhs_weap_m4a1_blockII_bk","rhs_weap_m4a1_blockII_KAC","rhs_weap_m4a1_blockII_KAC_bk"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m4a1_blockII_M203_bk","rhs_weap_m4a1_blockII_M203"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m4_carryhandle";
		_carbine = "rhs_weap_m4a1_carryhandle";
		_smg = "UK3CB_MP5";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "rhs_weap_m249_light_L";
		_mmg = "rhs_weap_m240B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_sr25_ec";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_T1_high";
		_generalAttachments_scoped = "rhsusf_acc_ACOG_RMR";
		_generalAttachments_muzz = "rhsusf_acc_SFMB556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "rhsusf_acc_kac_grip";

		_autoRifleAttachments_reflex = "rhsusf_acc_T1_high";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_ACOG_RMR";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4_2_mrds";
		_dmrAttachments_muzz = "ACE_muzzle_mzls_B";
		_dmrAttachments_supp = "rhsusf_acc_aac_scarh_silencer";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier_low","rhsusf_acc_harris_bipod","rhsusf_acc_anpeq15side_bk"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "rhsusf_acc_M2010S_wd";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "acc_flashlight_pistol";

		// =================================
	};

	// USAF - M16A4 - 5.56x45
	case "m16a4" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_m16a4_carryhandle"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m16a4_carryhandle_M203"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m16a4_carryhandle";
		_carbine = "rhs_weap_m4";
		_smg = "UK3CB_MP5";
		_pistol = "rhsusf_weap_m9";

		_autoRifle = "rhs_weap_m249_pip_L_para";
		_mmg = "rhs_weap_m240G";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_sr25";
		_boltRifle = "rhs_weap_m40a5";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag_Ranger";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_eotech_552";
		_generalAttachments_scoped = "rhsusf_acc_ACOG2_USMC";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_generalAttachments_grip = "rhsusf_acc_grip3";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_saw_bipod";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_ACOG2_USMC";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4_2_mrds";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhsusf_acc_SR25S";
		_dmrAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_swivel"];
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

	// USAF - M16A2 - 5.56x45
	case "m16a2" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_M16A2"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_M16A2_UGL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_M16A2";
		_carbine = "UK3CB_M16_Carbine";
		_smg = "UK3CB_MP5";
		_pistol = "rhsusf_weap_m1911a1";

		_autoRifle = "rhs_weap_m249_pip_L_para";
		_mmg = "rhs_weap_m240G";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_m14_rail_fiberglass";
		_boltRifle = "rhs_weap_m40a5";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhsusf_mag_7x45acp_MHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_eotech_552";
		_generalAttachments_scoped = "rhsusf_acc_ACOG2_USMC";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_nt4_black";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_552";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "";
		_autoRifleAttachments_gunIR = "";
		_autoRifleAttachments_grip = "rhsusf_acc_saw_bipod";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_ACOG2_USMC";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhsgref_sdn6_suppressor";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_swivel"];
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

	// USAF - M16A1 - 5.56x45
	case "m16a1" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_M16A1"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_M16A2_UGL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_M16A1";
		_carbine = "UK3CB_M16_Carbine";
		_smg = "UK3CB_MP5";
		_pistol = "rhsusf_weap_m1911a1";

		_autoRifle = "rhs_weap_m249";
		_mmg = "UK3CB_M60";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "UK3CB_M14DMR";
		_boltRifle = "rhs_weap_m40a5";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_20Rnd_556x45_M855A1_Stanag";
		_rifleTracerMag = "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_20Rnd_556x45_M855A1_Stanag";
		_rifleGLMag = "rhs_mag_20Rnd_556x45_M855A1_Stanag";
		_rifleScopedMag = "rhs_mag_20Rnd_556x45_M855A1_Stanag";
		_carbineMag = "rhs_mag_20Rnd_556x45_M855A1_Stanag";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhsusf_mag_7x45acp_MHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "";
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

		_dmrAttachments_reflex = "uk3cb_optic_artel_m14";
		_dmrAttachments_scoped = "uk3cb_optic_artel_m14";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_M14";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_swivel"];
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

	// USAF - M16A4 IMOD - 5.56x45
	case "m16a4_imod" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_m16a4_imod"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m16a4_imod_M203"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m4_carryhandle";
		_carbine = "rhs_weap_m4a1_carryhandle";
		_smg = "UK3CB_MP5";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "rhs_weap_m249_light_L";
		_mmg = "rhs_weap_m240B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_sr25_ec";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_T1_high";
		_generalAttachments_scoped = "rhsusf_acc_ACOG_RMR";
		_generalAttachments_muzz = "rhsusf_acc_SFMB556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "rhsusf_acc_kac_grip";

		_autoRifleAttachments_reflex = "rhsusf_acc_T1_high";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_ACOG_RMR";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4_2_mrds";
		_dmrAttachments_muzz = "ACE_muzzle_mzls_B";
		_dmrAttachments_supp = "rhsusf_acc_aac_scarh_silencer";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier_low","rhsusf_acc_harris_bipod","rhsusf_acc_anpeq15side_bk"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "rhsusf_acc_M2010S_wd";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "acc_flashlight_pistol";

		// =================================
	};

	// USAF - HK 416 - 5.56x45
	case "hk416" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_hk416d145"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_hk416d145_m320"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_hk416d145";
		_carbine = "rhs_weap_hk416d10";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "rhs_weap_m249_pip_S";
		_mmg = "rhs_weap_m240B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_m14ebrri";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag_Pull";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_generalAttachments_scoped = "rhsusf_acc_su230a_mrds";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_anpeq15_bk_light";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15_bk";
		_generalAttachments_grip = "rhsusf_acc_grip2";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_autoRifleAttachments_scoped = "rhsusf_acc_ACOG_RMR";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "rhsusf_acc_M952V";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_su230a_mrds";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4";
		_dmrAttachments_muzz = "rhsusf_acc_m14_flashsuppresor";
		_dmrAttachments_supp = "rhsusf_acc_aac_m14dcqd_silencer";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier_low","rhsusf_acc_harris_bipod","rhsusf_acc_anpeq15side_bk"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "rhsusf_acc_M2010S_wd";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "acc_flashlight_pistol";

		// =================================
	};

	// USAF - MK18 - 5.56x45
	case "mk18" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_mk18","rhs_weap_mk18_bk","rhs_weap_mk18_KAC_bk","rhs_weap_mk18_KAC"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_mk18_m320"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_mk18_KAC";
		_carbine = "rhs_weap_m4a1";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "rhs_weap_m249_pip_S";
		_mmg = "rhs_weap_m240B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_m14ebrri";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_generalAttachments_scoped = "rhsusf_acc_su230a_mrds";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_anpeq15_bk_light";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15_bk";
		_generalAttachments_grip = "rhsusf_acc_grip2";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_autoRifleAttachments_scoped = "rhsusf_acc_ACOG_RMR";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "rhsusf_acc_M952V";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_su230a_mrds";
		_dmrAttachments_scoped = "rhsusf_acc_LEUPOLDMK4";
		_dmrAttachments_muzz = "rhsusf_acc_m14_flashsuppresor";
		_dmrAttachments_supp = "rhsusf_acc_aac_m14dcqd_silencer";
		_dmrAttachments_gunLight = "rhsusf_acc_M952V";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier_low","rhsusf_acc_harris_bipod","rhsusf_acc_anpeq15side_bk"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "rhsusf_acc_M2010S_wd";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "acc_flashlight_pistol";

		// =================================
	};

	// USAF - SCAR H - 7.62x51
	case "scarh" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_SCARH_FDE_STD"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_SCARH_FDE_STD"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_SCARH_FDE_STD";
		_carbine = "rhs_weap_SCARH_FDE_CQC";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";

		_autoRifle = "rhs_weap_m249_light_L";
		_mmg = "rhs_weap_m240B";

		_shotty = "rhs_weap_M590_8RD";

		_dmr = "rhs_weap_SCARH_FDE_LB";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		// =========== Ammunition ==========

		_rifleMag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
		_rifleTracerMag = "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";
		_rifleSubsonicMag = "rhs_mag_20Rnd_SCAR_762x51_mk316_special";
		_rifleGLMag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
		_rifleScopedMag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
		_carbineMag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch_coyote";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_mmgMagCount = 2;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";

		_dmrMag = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_boltRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";

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

		_generalAttachments_reflex = "rhsusf_acc_EOTECH";
		_generalAttachments_scoped = "rhsusf_acc_su230_c";
		_generalAttachments_muzz = "rhsusf_acc_SF3P556";
		_generalAttachments_supp = "rhsusf_acc_aac_762sd_silencer";
		_generalAttachments_gunLight = "rhsusf_acc_anpeq16a_light";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq16a";
		_generalAttachments_grip = "rhsusf_acc_grip3_tan";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_autoRifleAttachments_scoped = "rhsusf_acc_su230_c";
		_autoRifleAttachments_muzz = "rhsusf_acc_SF3P556";
		_autoRifleAttachments_supp = "rhsusf_acc_nt4_black";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_autoRifleAttachments_grip = "rhsusf_acc_grip4_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "rhsusf_acc_ARDEC_M240";
		_mmgAttachments_supp = "muzzle_snds_H_MG_blk_F";
		_mmgAttachments_gunLight = "rhsusf_acc_M952V";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15side_bk";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "rhsusf_acc_su230_c";
		_dmrAttachments_scoped = "rhsusf_acc_M8541_mrds";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhsusf_acc_aac_scarh_silencer";
		_dmrAttachments_gunLight = "rhsusf_acc_anpeq16a_light";
		_dmrAttachments_gunIR = "rhsusf_acc_anpeq16a";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhsusf_acc_premier_low","rhsusf_acc_harris_bipod","rhsusf_acc_anpeq15side_bk"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "rhsusf_acc_M2010S_wd";

		_amRifleAttachments_base = ["rhsusf_acc_premier"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "acc_flashlight_pistol";
		_pistolAttachments_gunIR = "acc_flashlight_pistol";

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