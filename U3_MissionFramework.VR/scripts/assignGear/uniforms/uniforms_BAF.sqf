// =======================================================================
// AssignGear - Uniforms
// by UDS
// - Defines all of the wearable items to be used by the assignGear script.
// - Cases: usmc_marpat_wd, usmc_marpat_d, usa_airborne_ocp, usa_airborne_ucp, usa_army_acu, ranger_m81_g3
// =======================================================================
// Declares variables

private [
"_gogglesArray","_gogglesRandom","_goggles","_insignia",
"_rflmUniformArray","_rflmRandom","_rflmUniform","_leaderUniform",
"_rflmHelmetArray","_rflmHRandom","_rflmHelmet","_coyHelmet","_slHelmet","_tlHelmet","_sniperHelmet",
"_rflmVest","_gunnerVest","_glVest","_medVest","_coyVest","_slVest","_tlVest",
"_smallRuck","_medRuck","_largeRuck","_medicRuck","_atRuck","_armgRuck",
"_crewUniform","_rpilotUniform","_fpilotUniform",
"_crewmanHelmetArray","_crewmanHRandom","_crewmanHelmet","_crewmanHelmetArray","_crewmanHRandom","_navalcrewmanHelmet","_rotaryPilotHelmet","_rotaryCrewHelmet","_fixedPilotHelmet",
"_crewVest","_pilotVest",
"_sniperUniform","_sniperVest","_sniperRuck",
"_nightVision",
"_diverUniform","_diverVest","_diverRuck",
"_divingGoggles"
];

// =======================================================================

_insignia = "";

switch (_camoPattern) do {

	// 3CB - MTP
	case "baf_mtp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM","UK3CB_BAF_U_CombatUniform_MTP_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_JumperUniform_MTP";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk7_mtp" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_E"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_A";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_B";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_C";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "UK3CB_BAF_V_Osprey_Rifleman_E";
		_gunnerVest = "UK3CB_BAF_V_Osprey_MG_A";
		_glVest = "UK3CB_BAF_V_Osprey_Grenadier_A";
		_medVest = "UK3CB_BAF_V_Osprey_Medic_B";
		_pilotVest = "UK3CB_BAF_V_Osprey_Belt_A";
		_crewVest = "UK3CB_BAF_V_Osprey_Belt_A";
		_coyVest = "UK3CB_BAF_V_Osprey_SL_A";
		_slVest = "UK3CB_BAF_V_Osprey_SL_D";
		_tlVest = "UK3CB_BAF_V_Osprey_Grenadier_B";
		_sniperVest = "UK3CB_BAF_V_Osprey_Marksman_A";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Kitbag_MTP";
		_medRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B";
		_armgRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";
		_largeRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";
		_medicRuck = "UK3CB_BAF_B_Bergen_MTP_Medic_L_A";
		_atRuck = "UK3CB_UN_B_B_ASS";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// 3CB - DES
	case "baf_ddpm" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_DDPM_RM","UK3CB_BAF_U_CombatUniform_DDPM_ShortSleeve_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk6_ddpm" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk6_DDPM_B","UK3CB_BAF_H_Mk6_DDPM_C"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_DDPM_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk6_DDPM_F";
				_slHelmet = "UK3CB_BAF_H_Mk6_DDPM_F";
				_tlHelmet = "UK3CB_BAF_H_Mk6_DDPM_F";
				_sniperHelmet = "UK3CB_BAF_H_Boonie_DDPM_PRR";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "UK3CB_BAF_V_Osprey_DDPM8";
		_gunnerVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_glVest = "UK3CB_BAF_V_Osprey_DDPM3";
		_medVest = "UK3CB_BAF_V_Osprey_DDPM9";
		_pilotVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_crewVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_coyVest = "UK3CB_BAF_V_Osprey_DDPM2";
		_slVest = "UK3CB_BAF_V_Osprey_DDPM2";
		_tlVest = "UK3CB_BAF_V_Osprey_DDPM3";
		_sniperVest = "UK3CB_BAF_V_Osprey_DDPM7";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Kitbag_DDPM";
		_medRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_A";
		_armgRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		_largeRuck = "UK3CB_BAF_B_Carryall_DDPM";
		_medicRuck = "UK3CB_BAF_B_Carryall_TAN";
		_atRuck = "UK3CB_UN_B_B_ASS";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// 3CB - WD
	case "baf_dpmw" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_DPMW_RM","UK3CB_BAF_U_CombatUniform_DPMW_ShortSleeve_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_JumperUniform_DPMW";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_DPMW_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_DPMW_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_DPMW_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk6_ddpm" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk6_DPMW_B","UK3CB_BAF_H_Mk6_DPMW_C"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_DPMW_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk6_DPMW_F";
				_slHelmet = "UK3CB_BAF_H_Mk6_DPMW_F";
				_tlHelmet = "UK3CB_BAF_H_Mk6_DPMW_F";
				_sniperHelmet = "UK3CB_BAF_H_Boonie_DPMW_PRR";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "UK3CB_BAF_V_Osprey_DPMW8";
		_gunnerVest = "UK3CB_BAF_V_Osprey_DPMW1";
		_glVest = "UK3CB_BAF_V_Osprey_DPMW3";
		_medVest = "UK3CB_BAF_V_Osprey_DPMW9";
		_pilotVest = "UK3CB_BAF_V_Osprey_DPMW1";
		_crewVest = "UK3CB_BAF_V_Osprey_DPMW1";
		_coyVest = "UK3CB_BAF_V_Osprey_DPMW2";
		_slVest = "UK3CB_BAF_V_Osprey_DPMW2";
		_tlVest = "UK3CB_BAF_V_Osprey_DPMW3";
		_sniperVest = "UK3CB_BAF_V_Osprey_DPMW7";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Kitbag_DPMW";
		_medRuck = "UK3CB_BAF_B_Bergen_DPMW_Rifleman_A";
		_armgRuck = "UK3CB_BAF_B_Bergen_DPMW_Rifleman_B";
		_largeRuck = "UK3CB_BAF_B_Carryall_DPMW";
		_medicRuck = "UK3CB_BAF_B_Carryall_OLI";
		_atRuck = "UK3CB_UN_B_B_ASS";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// 3CB - MTPSM
	case "baf_mtp_smock" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_Smock_MTP"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_JumperUniform_MTP";
		_leaderUniform = "UK3CB_BAF_U_Smock_MTP";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_Smock_MTP";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk7_mtp" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_C","UK3CB_BAF_H_Mk7_Camo_E"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_A";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_B";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_C";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "UK3CB_BAF_V_Osprey_Rifleman_E";
		_gunnerVest = "UK3CB_BAF_V_Osprey_MG_A";
		_glVest = "UK3CB_BAF_V_Osprey_Grenadier_A";
		_medVest = "UK3CB_BAF_V_Osprey_Medic_B";
		_pilotVest = "UK3CB_BAF_V_Osprey_Belt_A";
		_crewVest = "UK3CB_BAF_V_Osprey_Belt_A";
		_coyVest = "UK3CB_BAF_V_Osprey_SL_A";
		_slVest = "UK3CB_BAF_V_Osprey_SL_D";
		_tlVest = "UK3CB_BAF_V_Osprey_Grenadier_B";
		_sniperVest = "UK3CB_BAF_V_Osprey_Marksman_A";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Kitbag_MTP";
		_medRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B";
		_armgRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";
		_largeRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";
		_medicRuck = "UK3CB_BAF_B_Bergen_MTP_Medic_L_A";
		_atRuck = "UK3CB_UN_B_B_ASS";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// 3CB - DESSM
	case "baf_ddpm_smock" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_Smock_DDPM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_leaderUniform = "UK3CB_BAF_U_Smock_DDPM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_Smock_DDPM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk6_ddpm" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk6_DDPM_B","UK3CB_BAF_H_Mk6_DDPM_C"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_DDPM_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk6_DDPM_F";
				_slHelmet = "UK3CB_BAF_H_Mk6_DDPM_F";
				_tlHelmet = "UK3CB_BAF_H_Mk6_DDPM_F";
				_sniperHelmet = "UK3CB_BAF_H_Boonie_DDPM_PRR";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "UK3CB_BAF_V_Osprey_DDPM8";
		_gunnerVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_glVest = "UK3CB_BAF_V_Osprey_DDPM3";
		_medVest = "UK3CB_BAF_V_Osprey_DDPM9";
		_pilotVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_crewVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_coyVest = "UK3CB_BAF_V_Osprey_DDPM2";
		_slVest = "UK3CB_BAF_V_Osprey_DDPM2";
		_tlVest = "UK3CB_BAF_V_Osprey_DDPM3";
		_sniperVest = "UK3CB_BAF_V_Osprey_DDPM7";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Kitbag_DDPM";
		_medRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_A";
		_armgRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		_largeRuck = "UK3CB_BAF_B_Carryall_DDPM";
		_medicRuck = "UK3CB_BAF_B_Carryall_TAN";
		_atRuck = "UK3CB_UN_B_B_ASS";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// 3CB - WDSM
	case "baf_dpmw_smock" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_Smock_DPMW"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_JumperUniform_DPMW";
		_leaderUniform = "UK3CB_BAF_U_Smock_DPMW";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_DPMW_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_Smock_DPMW";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk6_ddpm" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk6_DPMW_B","UK3CB_BAF_H_Mk6_DPMW_C"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_DPMW_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk6_DPMW_F";
				_slHelmet = "UK3CB_BAF_H_Mk6_DPMW_F";
				_tlHelmet = "UK3CB_BAF_H_Mk6_DPMW_F";
				_sniperHelmet = "UK3CB_BAF_H_Boonie_DPMW_PRR";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "UK3CB_BAF_V_Osprey_DPMW8";
		_gunnerVest = "UK3CB_BAF_V_Osprey_DPMW1";
		_glVest = "UK3CB_BAF_V_Osprey_DPMW3";
		_medVest = "UK3CB_BAF_V_Osprey_DPMW9";
		_pilotVest = "UK3CB_BAF_V_Osprey_DPMW1";
		_crewVest = "UK3CB_BAF_V_Osprey_DPMW1";
		_coyVest = "UK3CB_BAF_V_Osprey_DPMW2";
		_slVest = "UK3CB_BAF_V_Osprey_DPMW2";
		_tlVest = "UK3CB_BAF_V_Osprey_DPMW3";
		_sniperVest = "UK3CB_BAF_V_Osprey_DPMW7";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Kitbag_DPMW";
		_medRuck = "UK3CB_BAF_B_Bergen_DPMW_Rifleman_A";
		_armgRuck = "UK3CB_BAF_B_Bergen_DPMW_Rifleman_B";
		_largeRuck = "UK3CB_BAF_B_Carryall_DPMW";
		_medicRuck = "UK3CB_BAF_B_Carryall_OLI";
		_atRuck = "UK3CB_UN_B_B_ASS";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

#include "default.sqf"
};

// ===================== Diver Equipment ==================

_diverUniform = "U_B_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_B_Diving";

// ========================================================