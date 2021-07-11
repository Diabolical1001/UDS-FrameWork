// =======================================================================
// AssignGear - AK
// by UDS
// - Defines all of the weapon, magazine and weaponItem classes to be used by the assignGear script.
// - In the case of using a random weapon array make sure that the weapons can use the same ammo and attachments.
// - To remove weapon randomization only use one array entry instead of many eg. _rifleArray = ["class"];, _rifleGLArray = ["class"];

// - Weapons: AFRF Weaponry
// - Cases: ak74m, ak103, ak74mr, ak103_zenitco, ak_insurgent, asval
// =======================================================================
// Declares variables

private [
"_rifleArray","_rifleRandom","_rifle","_rifleGLArray","_rifleGLRandom","_rifleGL","_rifleScoped","_autoRifle","_carbine","_dmr","_mmg","_smg","_pistol","_shotty","_boltRifle","_amRifle",
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

	// AFRF - AK-74M - 5.45x39
	case "ak74m" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_ak74m"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak74m_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak74m";
		_carbine = "rhs_weap_aks74u";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";

		_autoRifle = "dd_weap_rpk74m_75";
		_mmg = "rhs_weap_pkp";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "rhs_weap_svdp";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		// =========== Ammunition ==========

		_rifleMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleTracerMag = "rhs_30Rnd_545x39_AK_plum_green";
		_rifleSubsonicMag = "rhs_30Rnd_545x39_7U1_AK";
		_rifleGLMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleScopedMag = "rhs_30Rnd_545x39_7N22_AK";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";

		_autoRifleMag = "rhs_75Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_545X39_7U1_AK";
		_arMagCount = 3;
		_arboxMagCount = 10;

		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";

		_glExplody = "rhs_VOG25";
		_glExplodyhp = "rhs_VOG25P";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GRD40_White";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";

		_grenade = "rhs_mag_rgd5";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhs_mag_rdg2_white";
		_smokeTwo = "rhs_mag_nspd";
		_smokeThree = "rhs_mag_rdg2_black";

		// ========== Attachments ==========

		_generalAttachments_reflex = "rhs_acc_1p63";
		_generalAttachments_scoped = "rhs_acc_1p29";
		_generalAttachments_muzz = "rhs_acc_dtk";
		_generalAttachments_supp = "rhs_acc_dtk4short";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit";
		_generalAttachments_gunIR = "rhs_acc_perst1ik";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhs_acc_pkas";
		_autoRifleAttachments_scoped = "rhs_acc_1p29";
		_autoRifleAttachments_muzz = "rhs_acc_dtk2";
		_autoRifleAttachments_supp = "rhs_acc_dtk4short";
		_autoRifleAttachments_gunLight = "rhs_acc_2dpZenit";
		_autoRifleAttachments_gunIR = "rhs_acc_perst1ik";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "rhs_acc_1p63";
		_mmgAttachments_scoped = "rhs_acc_1p78";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhs_acc_tgpv";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
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

	// AFRF - AK-74 - 5.45x39
	case "ak74" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_ak74n"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak74n_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak74n";
		_carbine = "rhs_weap_aks74u";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";

		_autoRifle = "UK3CB_RPK_74";
		_mmg = "rhs_weap_pkm";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "UK3CB_SVD_OLD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		// =========== Ammunition ==========

		_rifleMag = "rhs_30Rnd_545x39_7N6M_AK";
		_rifleTracerMag = "rhs_30Rnd_545x39_AK_green";
		_rifleSubsonicMag = "rhs_30Rnd_545x39_7N6M_AK";
		_rifleGLMag = "rhs_30Rnd_545x39_7N6M_AK";
		_rifleScopedMag = "rhs_30Rnd_545x39_7N6M_AK";
		_carbineMag = "rhs_30Rnd_545x39_7N6M_AK";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";

		_autoRifleMag = "rhs_45Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_45Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_45Rnd_545X39_7U1_AK";
		_arMagCount = 6;
		_arboxMagCount = 14;

		_mmgMag = "rhs_100Rnd_762x54mmR";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";

		_glExplody = "rhs_VOG25";
		_glExplodyhp = "rhs_VOG25P";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GRD40_White";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";

		_grenade = "rhs_mag_rgd5";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhs_mag_rdg2_white";
		_smokeTwo = "rhs_mag_nspd";
		_smokeThree = "rhs_mag_rdg2_black";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "";
		_generalAttachments_muzz = "rhs_acc_dtk";
		_generalAttachments_supp = "rhs_acc_dtk4short";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit";
		_generalAttachments_gunIR = "rhs_acc_perst1ik";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "";
		_autoRifleAttachments_muzz = "rhs_acc_dtk2";
		_autoRifleAttachments_supp = "rhs_acc_dtk4short";
		_autoRifleAttachments_gunLight = "rhs_acc_2dpZenit";
		_autoRifleAttachments_gunIR = "rhs_acc_perst1ik";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhs_acc_tgpv";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
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

	// AFRF - AK-103 - 7.62x39
	case "ak103" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_ak103"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak103_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak103";
		_carbine = "rhs_weap_aks74u";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";

		_autoRifle = "dd_weap_rpk74m_75";
		_mmg = "rhs_weap_pkp";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "rhs_weap_svdp";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		// =========== Ammunition ==========

		_rifleMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleTracerMag = "rhs_30Rnd_762x39mm_polymer_tracer";
		_rifleSubsonicMag = "rhs_30Rnd_762x39mm_polymer_U";
		_rifleGLMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleScopedMag = "rhs_30Rnd_762x39mm_polymer";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";

		_autoRifleMag = "rhs_75Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_545X39_7U1_AK";
		_arMagCount = 3;
		_arboxMagCount = 10;

		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";

		_glExplody = "rhs_VOG25";
		_glExplodyhp = "rhs_VOG25P";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GRD40_White";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";

		_grenade = "rhs_mag_rgd5";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhs_mag_rdg2_white";
		_smokeTwo = "rhs_mag_nspd";
		_smokeThree = "rhs_mag_rdg2_black";

		// ========== Attachments ==========

		_generalAttachments_reflex = "rhs_acc_1p63";
		_generalAttachments_scoped = "rhs_acc_1p29";
		_generalAttachments_muzz = "rhs_acc_dtk";
		_generalAttachments_supp = "rhs_acc_dtk4long";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit";
		_generalAttachments_gunIR = "rhs_acc_perst1ik";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "rhs_acc_pkas";
		_autoRifleAttachments_scoped = "rhs_acc_1p29";
		_autoRifleAttachments_muzz = "rhs_acc_dtk2";
		_autoRifleAttachments_supp = "rhs_acc_dtk4short";
		_autoRifleAttachments_gunLight = "rhs_acc_2dpZenit";
		_autoRifleAttachments_gunIR = "rhs_acc_perst1ik";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "rhs_acc_1p63";
		_mmgAttachments_scoped = "rhs_acc_1p78";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhs_acc_tgpv";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
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

	// AFRF - AKM - 7.62x39
	case "akm" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_akm","rhs_weap_akms"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_akm_gp25","rhs_weap_akms_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_akmn";
		_carbine = "rhs_weap_aks74u";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";

		_autoRifle = "UK3CB_RPK";
		_mmg = "rhs_weap_pkm";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "UK3CB_SVD_OLD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		// =========== Ammunition ==========

		_rifleMag = "rhs_30Rnd_762x39mm";
		_rifleTracerMag = "rhs_30Rnd_762x39mm_tracer";
		_rifleSubsonicMag = "rhs_30Rnd_762x39mm_U";
		_rifleGLMag = "rhs_30Rnd_762x39mm";
		_rifleScopedMag = "rhs_30Rnd_762x39mm";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";

		_autoRifleMag = "rhs_75Rnd_762x39mm";
		_autoTracerMag = "rhs_75Rnd_762x39mm_tracer";
		_autoSubsonicMag = "rhs_75Rnd_762x39mm";
		_arMagCount = 3;
		_arboxMagCount = 10;

		_mmgMag = "rhs_100Rnd_762x54mmR";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";

		_glExplody = "rhs_VOG25";
		_glExplodyhp = "rhs_VOG25P";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GRD40_White";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";

		_grenade = "rhs_mag_rgd5";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhs_mag_rdg2_white";
		_smokeTwo = "rhs_mag_nspd";
		_smokeThree = "rhs_mag_rdg2_black";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "rhs_acc_pso1m2";
		_generalAttachments_muzz = "rhs_acc_dtkakm";
		_generalAttachments_supp = "rhs_acc_pbs1";
		_generalAttachments_gunLight = "rhs_acc_2dpZenit";
		_generalAttachments_gunIR = "rhs_acc_perst1ik";
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

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhs_acc_tgpv";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
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

	// AFRF - AK-74MR - 5.45x39
	case "ak74mr" :  {

		// ============ Weaponry ===========

		_rifleArray = ["rhs_weap_ak74mr"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak74mr_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak74mr";
		_carbine = "rhs_weap_aks74u";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";

		_autoRifle = "dd_weap_rpk74m_75";
		_mmg = "rhs_weap_pkp";

		_shotty = "rhs_weap_M590_5RD";

		_dmr = "rhs_weap_svdp";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		// =========== Ammunition ==========

		_rifleMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleTracerMag = "rhs_30Rnd_545x39_AK_plum_green";
		_rifleSubsonicMag = "rhs_30Rnd_545x39_7U1_AK";
		_rifleGLMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleScopedMag = "rhs_30Rnd_545x39_7N22_AK";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";

		_autoRifleMag = "rhs_75Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_545X39_7U1_AK";
		_arMagCount = 3;
		_arboxMagCount = 10;

		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";

		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";

		_glExplody = "rhs_VOG25";
		_glExplodyhp = "rhs_VOG25P";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glSmokeFour = "rhs_GRD40_White";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";

		_grenade = "rhs_mag_rgd5";
		_flashbang = "rhs_mag_fakels";
		_smokeOne = "rhs_mag_rdg2_white";
		_smokeTwo = "rhs_mag_nspd";
		_smokeThree = "rhs_mag_rdg2_black";

		// ========== Attachments ==========

		_generalAttachments_reflex = "rhs_acc_1p87";
		_generalAttachments_scoped = "rhsusf_acc_su230_mrds";
		_generalAttachments_muzz = "rhs_acc_uuk";
		_generalAttachments_supp = "rhs_acc_tgpa";
		_generalAttachments_gunLight = "rhs_acc_perst3_2dp_light_h";
		_generalAttachments_gunIR = "rhs_acc_perst3_2dp_h";
		_generalAttachments_grip = "rhs_acc_grip_ffg2";

		_autoRifleAttachments_reflex = "rhs_acc_pkas";
		_autoRifleAttachments_scoped = "rhs_acc_1p29";
		_autoRifleAttachments_muzz = "rhs_acc_dtk2";
		_autoRifleAttachments_supp = "rhs_acc_tgpa";
		_autoRifleAttachments_gunLight = "rhs_acc_2dpZenit";
		_autoRifleAttachments_gunIR = "rhs_acc_perst1ik";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "rhs_acc_1p63";
		_mmgAttachments_scoped = "rhs_acc_1p78";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "rhs_acc_pso1m2";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "rhs_acc_tgpv";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
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
	_rifleDiver = "arifle_SDAR_F";				// underwater rifle
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