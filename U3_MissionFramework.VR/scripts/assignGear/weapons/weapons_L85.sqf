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

	// 3CB BAF - L85A2 - 5.56x45
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
		_pistol = "UK3CB_BAF_L9A1";

		_autoRifle = "UK3CB_BAF_L110A2";
		_mmg = "UK3CB_BAF_L7A2";

		_shotty = "UK3CB_BAF_L128A1";

		_dmr = "UK3CB_BAF_L86A2";
		_boltRifle = "UK3CB_BAF_L115A3";
		_amRifle = "UK3CB_BAF_L135A1";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_BAF_556_30Rnd";
		_rifleTracerMag = "UK3CB_BAF_556_30Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_556_30Rnd";
		_rifleGLMag = "UK3CB_BAF_556_30Rnd";
		_rifleScopedMag = "UK3CB_BAF_556_30Rnd";
		_carbineMag = "UK3CB_BAF_556_30Rnd";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_13Rnd";

		_autoRifleMag = "UK3CB_BAF_556_200Rnd";
		_autoTracerMag = "UK3CB_BAF_556_200Rnd_T";
		_autoSubsonicMag = "UK3CB_BAF_556_200Rnd";
		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_mmgMagCount = 2;
		_mmgboxMagCount = 6;

		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";

		_dmrMag = "UK3CB_BAF_556_30Rnd";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "ACE_5Rnd_127x99_AMAX_Mag";

		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "UK3CB_BAF_1Rnd_SmokeYellow_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "UK3CB_BAF_SmokeShell";
		_smokeTwo = "UK3CB_BAF_SmokeShellRed";
		_smokeThree = "UK3CB_BAF_SmokeShellPurple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "RKSL_optic_EOT552";
		_generalAttachments_scoped = "UK3CB_BAF_TA31F";
		_generalAttachments_muzz = "UK3CB_BAF_SFFH";
		_generalAttachments_supp = "UK3CB_BAF_Silencer_L85";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "RKSL_optic_EOT552";
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
		_dmrAttachments_scoped = "UK3CB_BAF_TA31F_Hornbill";
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
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};

	// 3CB BAF - L85A2 - RIS - 5.56x45
	case "l85a2ris" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_BAF_L85A2_RIS"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L85A2_UGL_HWS"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L85A2_RIS";
		_carbine = "UK3CB_BAF_L22A2";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L105A2";

		_autoRifle = "UK3CB_BAF_L110A2RIS";
		_mmg = "UK3CB_BAF_L7A2";

		_shotty = "UK3CB_BAF_L128A1";

		_dmr = "UK3CB_BAF_L129A1";
		_boltRifle = "UK3CB_BAF_L115A3";
		_amRifle = "UK3CB_BAF_L135A1";

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
		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_mmgMagCount = 2;
		_mmgboxMagCount = 6;

		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";

		_dmrMag = "UK3CB_BAF_762_L42A1_20Rnd";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "ACE_5Rnd_127x99_AMAX_Mag";

		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "UK3CB_BAF_1Rnd_SmokeYellow_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "UK3CB_BAF_SmokeShell";
		_smokeTwo = "UK3CB_BAF_SmokeShellRed";
		_smokeThree = "UK3CB_BAF_SmokeShellPurple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "RKSL_optic_EOT552";
		_generalAttachments_scoped = "RKSL_optic_LDS";
		_generalAttachments_muzz = "UK3CB_BAF_SFFH";
		_generalAttachments_supp = "UK3CB_BAF_Silencer_L85";
		_generalAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_generalAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_generalAttachments_grip = "UK3CB_underbarrel_acc_grippod";

		_autoRifleAttachments_reflex = "RKSL_optic_EOT552";
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
		_dmrAttachments_scoped = "UK3CB_BAF_TA648";
		_dmrAttachments_muzz = "UK3CB_BAF_SFFH";
		_dmrAttachments_supp = "UK3CB_BAF_Silencer_L115A3";
		_dmrAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_dmrAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_dmrAttachments_grip = "UK3CB_underbarrel_acc_fgrip_bipod";

		_boltRifleAttachments_base = ["RKSL_optic_PMII_525"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "UK3CB_BAF_Silencer_L115A3";

		_amRifleAttachments_base = ["RKSL_optic_PMII_525"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "ACE_muzzle_mzls_smg_02";
		_pistolAttachments_supp = "UK3CB_BAF_Silencer_L105A1";
		_pistolAttachments_gunLight = "UK3CB_BAF_Flashlight_L105A1";
		_pistolAttachments_gunIR = "UK3CB_BAF_L105A1_LLM_IR_G";

		// =================================
	};

	// 3CB BAF - L85A3 - 5.56x45
	case "l85a3" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_BAF_L85A3"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L85A3_UGL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L85A3";
		_carbine = "UK3CB_BAF_L22A2";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L131A1";

		_autoRifle = "UK3CB_BAF_L110A2RIS";
		_mmg = "UK3CB_BAF_L7A2";

		_shotty = "UK3CB_BAF_L128A1";

		_dmr = "UK3CB_BAF_L129A1";
		_boltRifle = "UK3CB_BAF_L115A3";
		_amRifle = "UK3CB_BAF_L135A1";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_BAF_556_30Rnd";
		_rifleTracerMag = "UK3CB_BAF_556_30Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_556_30Rnd";
		_rifleGLMag = "UK3CB_BAF_556_30Rnd";
		_rifleScopedMag = "UK3CB_BAF_556_30Rnd";
		_carbineMag = "UK3CB_BAF_556_30Rnd";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_17Rnd";

		_autoRifleMag = "UK3CB_BAF_556_200Rnd";
		_autoTracerMag = "UK3CB_BAF_556_200Rnd_T";
		_autoSubsonicMag = "UK3CB_BAF_556_200Rnd";
		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_mmgMagCount = 2;
		_mmgboxMagCount = 6;

		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";

		_dmrMag = "UK3CB_BAF_762_L42A1_20Rnd";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "ACE_5Rnd_127x99_AMAX_Mag";

		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "UK3CB_BAF_1Rnd_SmokeYellow_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "UK3CB_BAF_SmokeShell";
		_smokeTwo = "UK3CB_BAF_SmokeShellRed";
		_smokeThree = "UK3CB_BAF_SmokeShellPurple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "RKSL_optic_EOT552";
		_generalAttachments_scoped = "RKSL_optic_LDS";
		_generalAttachments_muzz = "UK3CB_BAF_SFFH";
		_generalAttachments_supp = "UK3CB_BAF_Silencer_L85";
		_generalAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_generalAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_generalAttachments_grip = "UK3CB_underbarrel_acc_grippod";

		_autoRifleAttachments_reflex = "RKSL_optic_EOT552";
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
		_dmrAttachments_scoped = "UK3CB_BAF_TA648";
		_dmrAttachments_muzz = "UK3CB_BAF_SFFH";
		_dmrAttachments_supp = "UK3CB_BAF_Silencer_L115A3";
		_dmrAttachments_gunLight = "UK3CB_BAF_LLM_Flashlight_Black";
		_dmrAttachments_gunIR = "UK3CB_BAF_LLM_IR_Black";
		_dmrAttachments_grip = "UK3CB_underbarrel_acc_fgrip_bipod";

		_boltRifleAttachments_base = ["RKSL_optic_PMII_525"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "UK3CB_BAF_Silencer_L115A3";

		_amRifleAttachments_base = ["RKSL_optic_PMII_525"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "ACE_muzzle_mzls_smg_02";
		_pistolAttachments_supp = "rhsusf_acc_omega9k";
		_pistolAttachments_gunLight = "UK3CB_BAF_Flashlight_L131A1";
		_pistolAttachments_gunIR = "UK3CB_BAF_Laser_L131A1";

		// =================================
	};

	// 3CB BAF - SLR - 7.62 NATO
	case "slr" :  {

		// ============ Weaponry ===========

		_rifleArray = ["UK3CB_BAF_L1A1"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L1A1"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L1A1";
		_carbine = "UK3CB_Sten";
		_smg = "UK3CB_MP5";
		_pistol = "UK3CB_BHP";

		_autoRifle = "UK3CB_Bren";
		_mmg = "UK3CB_BAF_L7A2";

		_shotty = "UK3CB_BAF_L128A1";

		_dmr = "UK3CB_M21";
		_boltRifle = "UK3CB_BAF_L115A3";
		_amRifle = "UK3CB_BAF_L135A1";

		// =========== Ammunition ==========

		_rifleMag = "UK3CB_BAF_762_20Rnd";
		_rifleTracerMag = "UK3CB_BAF_762_20Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_762_20Rnd";
		_rifleGLMag = "UK3CB_BAF_762_20Rnd";
		_rifleScopedMag = "UK3CB_BAF_762_20Rnd";
		_carbineMag = "UK3CB_Sten_34Rnd_Magazine";
		_smgMag = "UK3CB_MP5_30Rnd_Magazine";
		_pistolMag = "UK3CB_BHP_9_13Rnd";

		_autoRifleMag = "UK3CB_Bren_30Rnd_762x51_Magazine";
		_autoTracerMag = "UK3CB_Bren_30Rnd_762x51_Magazine_RT";
		_autoSubsonicMag = "UK3CB_Bren_30Rnd_762x51_Magazine";
		_arMagCount = 10;
		_arboxMagCount = 20;

		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_mmgMagCount = 2;
		_mmgboxMagCount = 6;

		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";

		_dmrMag = "UK3CB_M14_20rnd_762x51";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "ACE_5Rnd_127x99_AMAX_Mag";

		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glSmokeFour = "UK3CB_BAF_1Rnd_SmokeYellow_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";

		_grenade = "rhs_mag_m67";
		_flashbang = "rhs_mag_mk84";
		_smokeOne = "UK3CB_BAF_SmokeShell";
		_smokeTwo = "UK3CB_BAF_SmokeShellRed";
		_smokeThree = "UK3CB_BAF_SmokeShellPurple";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "UK3CB_BAF_SUIT";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "rhsusf_acc_aac_762sd_silencer";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "RKSL_optic_EOT552";
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

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "uk3cb_optic_artel_m14";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "uk3cb_muzzle_snds_M14";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["RKSL_optic_PMII_525"];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "UK3CB_BAF_Silencer_L115A3";

		_amRifleAttachments_base = ["RKSL_optic_PMII_525"];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "muzzle_snds_L";
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