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

	// GER - G3
	case "g3a3" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_G3A3"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_G3A3"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_G3A3";
		_carbine = "UK3CB_HK33KA1";
		_smg = "UK3CB_MP5";
		_pistol = "rhs_weap_cz99";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "UK3CB_G3SG1";
		_mmg = "UK3CB_MG3";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "UK3CB_PSG1A1";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_LRR_F";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_G3_20rnd_762x51";
		_rifleTracerMag = "UK3CB_G3_20rnd_762x51_RT";
		_rifleSubsonicMag = "UK3CB_G3_20rnd_762x51";
		_rifleGLMag = "UK3CB_G3_20rnd_762x51";
		_rifleScopedMag = "UK3CB_G3_20rnd_762x51";
		_carbineMag = "UK3CB_HK33_30rnd_556x45";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhssaf_mag_15Rnd_9x19_FMJ";

		_autoRifleMag = "UK3CB_G3_50rnd_762x51";
		_autoTracerMag = "UK3CB_G3_50rnd_762x51_RT";
		_autoSubsonicMag = "UK3CB_G3_50rnd_762x51";
		_arMagCount = 6;
		_arboxMagCount = 12;

		_mmgMag = "UK3CB_MG3_100rnd_762x51";
		_mmgTracerMag = "UK3CB_MG3_100rnd_762x51_RT";
		_mmgMagCount = 2;
		_mmgboxMagCount = 3;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "UK3CB_G3_20rnd_762x51";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
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

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "uk3cb_optic_STANAGZF_G3";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "uk3cb_muzzle_snds_g3";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "uk3cb_optic_STANAGZF_G3";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "uk3cb_muzzle_snds_g3";
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

		_dmrAttachments_reflex = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_scoped = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_g3";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhs_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhs_acc_dh520x56"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// GER - G3KA4
	case "g3ka4" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_G3KA4"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_G3KA4_GL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_G3KA4";
		_carbine = "UK3CB_HK33KA1";
		_smg = "UK3CB_MP5";
		_pistol = "rhs_weap_cz99";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "UK3CB_G3SG1_RIS";
		_mmg = "UK3CB_MG3_KWS_B";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "UK3CB_PSG1A1";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_LRR_F";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_G3_20rnd_762x51";
		_rifleTracerMag = "UK3CB_G3_20rnd_762x51_RT";
		_rifleSubsonicMag = "UK3CB_G3_20rnd_762x51";
		_rifleGLMag = "UK3CB_G3_20rnd_762x51";
		_rifleScopedMag = "UK3CB_G3_20rnd_762x51";
		_carbineMag = "UK3CB_HK33_30rnd_556x45";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhssaf_mag_15Rnd_9x19_FMJ";

		_autoRifleMag = "UK3CB_G3_50rnd_762x51";
		_autoTracerMag = "UK3CB_G3_50rnd_762x51_RT";
		_autoSubsonicMag = "UK3CB_G3_50rnd_762x51";
		_arMagCount = 6;
		_arboxMagCount = 12;

		_mmgMag = "UK3CB_MG3_100rnd_762x51";
		_mmgTracerMag = "UK3CB_MG3_100rnd_762x51_RT";
		_mmgMagCount = 2;
		_mmgboxMagCount = 3;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "UK3CB_G3_20rnd_762x51";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
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

		_generalAttachments_reflex = "rhsusf_acc_mrds";
		_generalAttachments_scoped = "rhsusf_acc_su230";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "uk3cb_muzzle_snds_g3";
		_generalAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "uk3cb_muzzle_snds_g3";
		_autoRifleAttachments_gunLight = "";
		_autoRifleAttachments_gunIR = "";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_wmx_bk";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_scoped = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_g3";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhs_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhs_acc_dh520x56"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// GER - HK33 KA2
	case "hk33ka2" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_HK33KA2_RIS"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_G3KA4_GL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_G3KA4";
		_carbine = "UK3CB_HK33KA3";
		_smg = "UK3CB_MP5";
		_pistol = "rhs_weap_cz99";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "UK3CB_G3SG1_RIS";
		_mmg = "UK3CB_MG3_KWS_B";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "UK3CB_PSG1A1";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_LRR_F";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_HK33_30rnd_556x45";
		_rifleTracerMag = "UK3CB_HK33_30rnd_556x45_RT";
		_rifleSubsonicMag = "UK3CB_HK33_30rnd_556x45";
		_rifleGLMag = "UK3CB_HK33_30rnd_556x45";
		_rifleScopedMag = "UK3CB_HK33_30rnd_556x45";
		_carbineMag = "UK3CB_HK33_30rnd_556x45";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "rhssaf_mag_15Rnd_9x19_FMJ";

		_autoRifleMag = "UK3CB_G3_50rnd_762x51";
		_autoTracerMag = "UK3CB_G3_50rnd_762x51_RT";
		_autoSubsonicMag = "UK3CB_G3_50rnd_762x51";
		_arMagCount = 6;
		_arboxMagCount = 12;

		_mmgMag = "UK3CB_MG3_100rnd_762x51";
		_mmgTracerMag = "UK3CB_MG3_100rnd_762x51_RT";
		_mmgMagCount = 2;
		_mmgboxMagCount = 3;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "UK3CB_G3_20rnd_762x51";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
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

		_generalAttachments_reflex = "rhsusf_acc_T1_high";
		_generalAttachments_scoped = "rhsusf_acc_g33_T1";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "uk3cb_muzzle_snds_HK33";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_autoRifleAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "uk3cb_muzzle_snds_g3";
		_autoRifleAttachments_gunLight = "";
		_autoRifleAttachments_gunIR = "";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_M952V";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_scoped = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_g3";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhs_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhs_acc_dh520x56"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// GER - G36 KV
	case "g36kv" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_g36kv"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_g36kv_ag36"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_g36kv";
		_carbine = "rhs_weap_g36c";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_m9";
		_pistolGren = "rhs_weap_M320";

		_autoRifle = "rhs_weap_minimi_para_railed";
		_mmg = "UK3CB_MG3_KWS_B";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "UK3CB_PSG1A1";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_LRR_F";

		// =========== Ammunition ==========

		_rifleMag = "rhssaf_30rnd_556x45_EPR_G36";
		_rifleTracerMag = "rhssaf_30rnd_556x45_Tracers_G36";
		_rifleSubsonicMag = "rhssaf_30rnd_556x45_SOST_G36";
		_rifleGLMag = "rhssaf_30rnd_556x45_EPR_G36";
		_rifleScopedMag = "rhssaf_30rnd_556x45_EPR_G36";
		_carbineMag = "rhssaf_30rnd_556x45_EPR_G36";
		_smgMag = "rhsusf_mag_40Rnd_46x30_FMJ";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";

		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMag = "UK3CB_MG3_100rnd_762x51";
		_mmgTracerMag = "UK3CB_MG3_100rnd_762x51_RT";
		_mmgMagCount = 2;
		_mmgboxMagCount = 3;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "UK3CB_G3_20rnd_762x51";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
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

		_generalAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_generalAttachments_scoped = "rhsusf_acc_g33_xps3";
		_generalAttachments_muzz = "ACE_muzzle_mzls_L";
		_generalAttachments_supp = "rhsusf_acc_rotex5_grey";
		_generalAttachments_gunLight = "rhsusf_acc_M952V";
		_generalAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_generalAttachments_grip = "rhsusf_acc_rvg_blk";

		_autoRifleAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_autoRifleAttachments_scoped = "rhsusf_acc_g33_xps3";
		_autoRifleAttachments_muzz = "ACE_muzzle_mzls_L";
		_autoRifleAttachments_supp = "rhsusf_acc_rotex5_grey";
		_autoRifleAttachments_gunLight = "rhsusf_acc_M952V";
		_autoRifleAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_autoRifleAttachments_grip = "rhsusf_acc_saw_lw_bipod";

		_mmgAttachments_reflex = "rhsusf_acc_eotech_xps3";
		_mmgAttachments_scoped = "rhsusf_acc_ELCAN_ard";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "rhsusf_acc_M952V";
		_mmgAttachments_gunIR = "rhsusf_acc_anpeq15A";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_scoped = "uk3cb_optic_accupoint_g3";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_g3";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "rhsusf_acc_harris_bipod";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhs_acc_harris_swivel"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = ["rhs_acc_dh520x56"];

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