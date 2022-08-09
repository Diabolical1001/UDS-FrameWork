// =======================================================================
// AssignGear - Uniforms
// by UDS
// - Defines all of the wearable items to be used by the assignGear script.
// - Cases: vdv_emr_wd, vdv_flora_wd, vdv_emr_d, vdv_recon_gorka_wd, vdv_afghan_m88, mvd_gorka_wd, mvd_izlom_wd
// =======================================================================
// Declares variables

private [
"_gogglesArray","_gogglesRandom","_goggles","_insignia",
"_rflmUniformArray","_rflmRandom","_rflmUniform","_leaderUniform",
"_rflmHelmetArray","_rflmHRandom","_rflmHelmet","_coyHelmet","_slHelmet","_tlHelmet","_sniperHelmet",
"_rflmVest","_gunnerVest","_asstVest","_glVest","_medVest","_coyVest","_slVest","_tlVest",
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

	// Taliban

	case "taliban" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_TKM_O_U_01","UK3CB_TKM_O_U_01_B","UK3CB_TKM_O_U_01_C","UK3CB_TKM_O_U_01_D","UK3CB_TKM_O_U_03","UK3CB_TKM_O_U_03_B","UK3CB_TKM_O_U_03_C","UK3CB_TKM_O_U_04","UK3CB_TKM_O_U_04_B","UK3CB_TKM_O_U_04_C","UK3CB_TKM_O_U_05","UK3CB_TKM_O_U_05_B","UK3CB_TKM_O_U_05_C","UK3CB_TKM_O_U_06","UK3CB_TKM_O_U_06_B","UK3CB_TKM_O_U_06_C"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_TKM_B_U_04";
		_leaderUniform = "UK3CB_TKM_B_U_03";
		_rpilotUniform = "UK3CB_TKM_B_U_04";
		_fpilotUniform = "UK3CB_TKM_B_U_04";
		_sniperUniform = "UK3CB_TKM_B_U_05";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "turban" : {
				_rflmHelmetArray = ["UK3CB_TKM_O_H_Turban_03_1","UK3CB_TKM_O_H_Turban_04_1","UK3CB_TKM_O_H_Turban_05_1","UK3CB_TKM_O_H_Turban_01_1","UK3CB_TKM_B_H_Turban_05_1","UK3CB_TKM_B_H_Turban_01_1","UK3CB_H_Shemag_red","UK3CB_H_Shemag_tan","UK3CB_H_Shemag_white"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_TKM_O_H_Turban_03_1"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "UK3CB_TKM_O_H_Turban_03_1";
				_rotaryCrewHelmet = "UK3CB_TKM_O_H_Turban_03_1";
				_fixedPilotHelmet = "UK3CB_TKM_O_H_Turban_03_1";
				_coyHelmet = "UK3CB_TKM_O_H_Turban_02_1";
				_slHelmet = "UK3CB_TKM_B_H_Turban_02_1";
				_tlHelmet = "UK3CB_H_Shemag_white";
				_sniperHelmet = "UK3CB_H_Shemag_red";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
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

		_rflmVest = "UK3CB_V_Pouch";
		_gunnerVest = "UK3CB_V_Pouch";
		_asstVest = "UK3CB_V_Pouch";
		_glVest = "UK3CB_V_Pouch";
		_medVest = "UK3CB_V_Pouch";
		_pilotVest = "UK3CB_V_Pouch";
		_crewVest = "UK3CB_V_Pouch";
		_coyVest = "UK3CB_V_Pouch";
		_slVest = "UK3CB_V_Pouch";
		_tlVest = "UK3CB_V_Pouch";
		_sniperVest = "UK3CB_V_Pouch";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "UK3CB_B_Alice_K";
		_armgRuck = "UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF";
		_largeRuck = "UK3CB_B_Hiker_Camo";
		_medicRuck = "UK3CB_B_Alice_Med_K";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// Russian Nationalists

	case "russian_nat" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_CHD_B_U_CombatSmock_05","UK3CB_CHD_B_U_CombatSmock_01","UK3CB_CHD_B_U_CombatSmock_02","UK3CB_CHD_B_U_CombatSmock_09","UK3CB_CHD_B_U_CombatSmock_12","UK3CB_CHD_B_U_CombatSmock_07","UK3CB_CHD_B_U_CombatSmock_06","UK3CB_CHD_B_U_CombatSmock_04","UK3CB_CHD_B_U_CombatSmock_03","UK3CB_CHD_B_U_CombatSmock_13","UK3CB_LNM_B_U_Crew_CombatSmock_05","UK3CB_LNM_B_U_Crew_CombatSmock_06","UK3CB_LNM_B_U_Crew_CombatSmock_07","UK3CB_LNM_B_U_Crew_CombatSmock_02","UK3CB_LNM_B_U_Crew_CombatSmock_03","UK3CB_LNM_B_U_Crew_CombatSmock_04","UK3CB_LNM_B_U_Crew_CombatSmock_10","UK3CB_LNM_B_U_Crew_CombatSmock_08","UK3CB_LNM_B_U_CombatSmock_22","UK3CB_LNM_B_U_CombatSmock_23","UK3CB_LNM_B_U_CombatSmock_24","UK3CB_LSM_B_U_CombatSmock_09","UK3CB_LSM_B_U_Crew_CombatSmock_10","UK3CB_LSM_B_U_CombatSmock_32","UK3CB_LSM_B_U_CombatSmock_34","UK3CB_LSM_B_U_CombatSmock_31","UK3CB_LSM_B_U_CombatSmock_03","UK3CB_CW_SOV_O_Late_U_Spetsnaz_Uniform_Gorka_01_KLMK"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_flecktarn_full";
		_leaderUniform = "UK3CB_CHD_B_U_CombatSmock_08";
		_rpilotUniform = "rhsgref_uniform_gorka_1_f";
		_fpilotUniform = "rhsgref_uniform_gorka_1_f";
		_sniperUniform = "UK3CB_CHD_B_U_CombatSmock_10";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "none" : {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "";
				_rotaryCrewHelmet = "";
				_fixedPilotHelmet = "";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
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

		_rflmVest = "rhs_6b23_digi_6sh92_spetsnaz2";
		_gunnerVest = "rhs_6b23_digi";
		_asstVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_glVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi_crew";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_Spetsnaz";
		_slVest = "rhs_6b23_digi_6sh92_Spetsnaz";
		_tlVest = "rhs_6b23_digi_6sh92_Spetsnaz";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "UK3CB_UN_B_B_RIF";
		_armgRuck = "rhs_sidor";
		_largeRuck = "rhsgref_ttsko_alicepack";
		_medicRuck = "UK3CB_B_Alice_Med_K";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","UK3CB_G_Balaclava2_BLK"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// South African Special Forces

	case "sasf" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhsgref_uniform_altis_lizard"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_altis_lizard";
		_leaderUniform = "rhsgref_uniform_altis_lizard";
		_rpilotUniform = "rhsgref_uniform_altis_lizard";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhsgref_uniform_altis_lizard";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "beret" : {
				_rflmHelmetArray = ["rhssaf_beret_red"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhssaf_beret_red";
				_slHelmet = "rhssaf_beret_red";
				_tlHelmet = "rhssaf_beret_red";
				_sniperHelmet = "rhssaf_beret_red";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_ut_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_ut_pelt_cam";
				_slHelmet = "rhsusf_opscore_ut_pelt_nsw_cam";
				_tlHelmet = "rhsusf_opscore_ut_pelt_cam";
				_sniperHelmet = "rhsusf_opscore_ut_pelt_nsw_cam";
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

		_rflmVest = "rhsusf_spcs_ocp_rifleman_alt";
		_gunnerVest = "rhsusf_spcs_ocp_saw";
		_asstVest = "rhsusf_spcs_ocp_grenadier";
		_glVest = "rhsusf_spcs_ocp_grenadier";
		_medVest = "rhsusf_spcs_ocp_medic";
		_pilotVest = "rhsusf_spcs_ocp_crewman";
		_crewVest = "rhsusf_spcs_ocp_crewman";
		_coyVest = "rhsusf_spcs_ocp_squadleader";
		_slVest = "rhsusf_spcs_ocp_squadleader";
		_tlVest = "rhsusf_spcs_ocp_teamleader";
		_sniperVest = "rhsusf_spcs_ocp_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_khk";
		_medRuck = "rhsusf_assault_eagleaiii_ocp";
		_armgRuck = "rhsusf_assault_eagleaiii_ocp";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "rhsusf_assault_eagleaiii_ocp";
		_atRuck = "B_AssaultPack_khk";
		_sniperRuck = "B_AssaultPack_khk";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh_tan","rhsusf_shemagh2_tan","G_Bandanna_blk","G_Bandanna_oli"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// Australian Commandos

	case "aus_com" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_g3_mc"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_g3_mc";
		_leaderUniform = "rhs_uniform_g3_mc";
		_rpilotUniform = "rhs_uniform_g3_mc";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_g3_mc";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_mc_cover_pelt","rhsusf_opscore_mc_pelt","rhsusf_opscore_mc_pelt_nsw"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_slHelmet = "rhsusf_opscore_mc_cover_pelt_cam";
				_tlHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_sniperHelmet = "rhs_Booniehat_ocp";
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

		_rflmVest = "rhsusf_plateframe_rifleman";
		_gunnerVest = "rhsusf_plateframe_machinegunner";
		_asstVest = "rhsusf_plateframe_grenadier";
		_glVest = "rhsusf_plateframe_grenadier";
		_medVest = "rhsusf_plateframe_medic";
		_pilotVest = "rhsusf_plateframe_sapi";
		_crewVest = "rhsusf_plateframe_light";
		_coyVest = "rhsusf_plateframe_teamleader";
		_slVest = "rhsusf_plateframe_teamleader";
		_tlVest = "rhsusf_plateframe_teamleader";
		_sniperVest = "rhsusf_plateframe_marksman";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_mcamo";
		_medRuck = "rhsusf_assault_eagleaiii_ocp";
		_armgRuck = "rhsusf_assault_eagleaiii_ocp";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "B_Kitbag_mcamo";
		_atRuck = "B_TacticalPack_mcamo";
		_sniperRuck = "B_AssaultPack_mcamo";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh2_gogg_tan","rhsusf_shemagh2_gogg_od","rhsusf_shemagh2_od","rhsusf_shemagh2_tan"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// 3CBF - Iranian Army - Opfor

	case "tka_dpm_opf" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_TKA_O_U_CombatUniform_01_ADPM","UK3CB_TKA_O_U_CombatUniform_02_ADPM","UK3CB_TKA_O_U_CombatUniform_03_ADPM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_TKA_O_U_CombatUniform_03_ADPM";
		_leaderUniform = "UK3CB_TKA_O_U_CombatUniform_01_ADPM";
		_rpilotUniform = "UK3CB_TKA_O_U_CombatUniform_02_ADPM";
		_fpilotUniform = "UK3CB_TKA_I_U_J_Pilot_Des";
		_sniperUniform = "UK3CB_TKA_O_U_CombatUniform_03_ADPM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b27m" : {
				_rflmHelmetArray = ["UK3CB_TKA_O_H_6b27m_ADPM","UK3CB_TKA_O_H_6b27m_ESS_ADPM","UK3CB_TKA_O_H_6b27m_Tan","UK3CB_TKA_O_H_6b27m_ESS_Tan"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_TKA_B_H_Beret"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "UK3CB_TKA_O_H_zsh7a_Des_alt";
				_coyHelmet = "UK3CB_TKA_B_H_Beret";
				_slHelmet = "UK3CB_TKA_O_H_6b27m_ESS_ADPM";
				_tlHelmet = "UK3CB_TKA_O_H_6b27m_ESS_Tan";
				_sniperHelmet = "UK3CB_TKA_B_H_Beret";
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

		_rflmVest = "UK3CB_TKA_O_V_6b23_ml_Oli_TKA_Brush";
		_gunnerVest = "UK3CB_TKA_O_V_6b23_ml_Oli_TKA_Brush";
		_asstVest = "UK3CB_TKA_O_V_6b23_ml_6sh92_vog_Oli_ADPM";
		_glVest = "UK3CB_TKA_O_V_6b23_ml_6sh92_vog_Oli_TKA_Brush";
		_medVest = "UK3CB_TKA_O_V_6b23_ml_Oli_TKA_Brush";
		_pilotVest = "UK3CB_TKA_O_V_6b23_ml_Oli_ADPM";
		_crewVest = "UK3CB_TKA_O_V_6b23_ml_Oli_TKA_Brush";
		_coyVest = "UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli_ADPM";
		_slVest = "UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli_TKA_Brush";
		_tlVest = "UK3CB_TKA_O_V_6b23_ML_6sh92_radio_Oli_ADPM";
		_sniperVest = "UK3CB_TKA_O_V_6b23_ml_Oli_ADPM";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_ADA_B_B_ASS";
		_medRuck = "UK3CB_TKA_O_B_RIF_Khk";
		_armgRuck = "rhs_rd54_vest";
		_largeRuck = "UK3CB_AAF_B_B_CARRYALL_DIGI_BRN";
		_medicRuck = "UK3CB_B_Alice_Med_K";
		_atRuck = "rhs_rpg_6b3";
		_sniperRuck = "UK3CB_ADA_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = ["UK3CB_G_Balaclava2_BLK","UK3CB_G_Bandanna_aviator_flora_alt","UK3CB_G_Face_Wrap_01","UK3CB_G_Neck_Shemag_Tan","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// Syrian Army - Opfor

	case "m93_woodland" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhsgref_uniform_woodland"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_olive";
		_leaderUniform = "rhsgref_uniform_woodland_olive";
		_rpilotUniform = "rhsgref_uniform_olive";
		_fpilotUniform = "UK3CB_TKA_I_U_J_Pilot_Des";
		_sniperUniform = "rhsgref_uniform_woodland";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b26" : {
				_rflmHelmetArray = ["rhs_6b26_green","rhs_6b26_ess_green"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_TKP_I_H_Beret"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "UK3CB_TKA_O_H_zsh7a_Des_alt";
				_coyHelmet = "UK3CB_TKP_I_H_Beret";
				_slHelmet = "rhs_6b26_green";
				_tlHelmet = "rhs_6b26_green";
				_sniperHelmet = "rhs_6b26_green";
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

		_rflmVest = "rhssaf_vest_md99_md2camo_rifleman";
		_gunnerVest = "rhssaf_vest_md99_md2camo_rifleman";
		_asstVest = "rhssaf_vest_md99_md2camo_rifleman";
		_glVest = "rhssaf_vest_md99_md2camo_rifleman";
		_medVest = "rhssaf_vest_md99_md2camo_rifleman";
		_pilotVest = "rhssaf_vest_md99_md2camo_radio";
		_crewVest = "rhssaf_vest_md99_md2camo_radio";
		_coyVest = "rhssaf_vest_md99_md2camo_rifleman_radio";
		_slVest = "rhssaf_vest_md99_md2camo_rifleman_radio";
		_tlVest = "rhssaf_vest_md99_md2camo_rifleman_radio";
		_sniperVest = "rhssaf_vest_md99_md2camo_rifleman";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_LDF_B_B_ASS_WDL";
		_medRuck = "UK3CB_CW_US_B_LATE_B_RIF_03";
		_armgRuck = "UK3CB_CHD_B_B_RIF_WDL";
		_largeRuck = "rhssaf_alice_md2camo";
		_medicRuck = "UK3CB_B_Alice_Med_K";
		_atRuck = "rhs_rpg_6b3";
		_sniperRuck = "UK3CB_LDF_B_B_ASS_WDL";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = ["UK3CB_G_Balaclava2_BLK","UK3CB_G_Balaclava2_DES","UK3CB_G_Neck_Shemag_KLR_blk","UK3CB_G_Neck_Shemag_Tan","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// Polish - Woodland

	case "CombatSmock_woodland" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_LNM_B_U_CombatSmock_21","","UK3CB_LNM_B_U_CombatSmock_25","UK3CB_LNM_B_U_CombatSmock_26","UK3CB_LNM_B_U_CombatSmock_30","UK3CB_LNM_B_U_CombatSmock_20","UK3CB_LNM_B_U_CombatSmock_35","UK3CB_LNM_B_U_CombatSmock_36","UK3CB_LNM_B_U_CombatSmock_21"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_woodland";
		_leaderUniform = "UK3CB_LNM_B_U_CombatSmock_21";
		_rpilotUniform = "rhsgref_uniform_woodland";
		_fpilotUniform = "UK3CB_LDF_B_U_J_Pilot_GEO";
		_sniperUniform = "UK3CB_LNM_B_U_CombatSmock_21";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m97" : {
				_rflmHelmetArray = ["rhssaf_helmet_m97_woodland","rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_md2camo_black_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_TKP_I_H_Beret"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "UK3CB_TKA_O_H_zsh7a_Des_alt";
				_coyHelmet = "rhssaf_beret_green";
				_slHelmet = "rhssaf_helmet_m97_md2camo_black_ess_bare";
				_tlHelmet = "rhssaf_helmet_m97_woodland_black_ess_bare";
				_sniperHelmet = "rhssaf_booniehat_woodland";
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

		_rflmVest = "UK3CB_ADA_B_V_TacVest_WDL";
		_gunnerVest = "UK3CB_CW_US_B_LATE_V_PASGT_MG_Vest";
		_asstVest = "UK3CB_ADA_B_V_TacVest_WDL";
		_glVest = "UK3CB_ADA_B_V_TacVest_WDL";
		_medVest = "UK3CB_ADA_B_V_TacVest_WDL";
		_pilotVest = "UK3CB_V_Pilot_Vest";
		_crewVest = "UK3CB_ADA_B_V_MBAV_WDL";
		_coyVest = "rhssaf_vest_otv_md2camo";
		_slVest = "rhssaf_vest_otv_md2camo";
		_tlVest = "rhssaf_vest_otv_md2camo";
		_sniperVest = "UK3CB_ADA_B_V_TacVest_WDL";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_LDF_B_B_ASS_WDL";
		_medRuck = "UK3CB_CW_US_B_LATE_B_RIF_03";
		_armgRuck = "UK3CB_CHD_B_B_RIF_WDL";
		_largeRuck = "rhssaf_alice_md2camo";
		_medicRuck = "UK3CB_CHD_B_B_MD_WDL";
		_atRuck = "UK3CB_LDF_B_B_ASS_WDL";
		_sniperRuck = "UK3CB_LDF_B_B_ASS_WDL";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = ["UK3CB_G_Balaclava2_BLK","rhs_balaclava","rhs_balaclava1_olive","rhsusf_shemagh2_grn","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// Middle-Eastern Insurgents - civmix

	case "mei_mix" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_MEI_B_U_Jeans_Tshirt_05","UK3CB_MEI_B_U_Jeans_Tshirt_16","UK3CB_MEI_B_U_Jeans_Tshirt_06","UK3CB_MEI_B_U_Jeans_Tshirt_17","UK3CB_MEI_B_U_Jeans_Tshirt_07","UK3CB_MEI_B_U_Jeans_Tshirt_18","UK3CB_MEE_O_U_06","UK3CB_MEI_B_U_Jeans_Tshirt_02","UK3CB_MEI_B_U_Jeans_Tshirt_13","UK3CB_MEI_B_U_Jeans_Tshirt_14","UK3CB_MEI_B_U_Jeans_Tshirt_03","UK3CB_MEI_B_U_Jeans_Tshirt_09","UK3CB_MEI_B_U_Jeans_Tshirt_20","UK3CB_MEI_B_U_Jeans_Tshirt_10","UK3CB_MEI_B_U_Jeans_Tshirt_21","UK3CB_MEI_B_U_Jeans_Tshirt_11","UK3CB_MEI_B_U_Jeans_Tshirt_22","UK3CB_MEI_B_U_Jeans_Tshirt_08","UK3CB_MEI_B_U_Jeans_Tshirt_19","UK3CB_MEE_O_U_06_B","UK3CB_MEE_O_U_06_C"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_ADM_B_U_Shirt_Pants_01_BLU_TCC";
		_leaderUniform = "UK3CB_ADM_B_U_Shirt_Pants_01_BLU_CC";
		_rpilotUniform = "UK3CB_ADM_B_U_Shirt_Pants_01_BLU_DDPM";
		_fpilotUniform = "UK3CB_ADM_B_U_Shirt_Pants_01_BLU_DDPM";
		_sniperUniform = "UK3CB_ADM_B_U_Shirt_Pants_01_BLU_DDPM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "none" : {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_TKP_I_H_Beret"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "UK3CB_TKA_O_H_zsh7a_Des_alt";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
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

		_rflmVest = "rhs_chicom_khk";
		_gunnerVest = "rhs_belt_RPK";
		_asstVest = "rhs_belt_AK_GL";
		_glVest = "rhs_lifchik_vog";
		_medVest = "rhsgref_chestrig";
		_pilotVest = "rhs_belt_AK4_back";
		_crewVest = "rhs_belt_AK4_back";
		_coyVest = "rhsgref_chestrig";
		_slVest = "rhsgref_chestrig";
		_tlVest = "rhsgref_chestrig";
		_sniperVest = "rhs_suspender_SKS";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_ADA_B_B_ASS";
		_medRuck = "UK3CB_UN_B_B_RIF";
		_armgRuck = "UK3CB_B_TacticalPack_Oli";
		_largeRuck = "UK3CB_B_Alice_K";
		_medicRuck = "UK3CB_B_Largepack_Med_Des";
		_atRuck = "rhs_rpg_6b2";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = ["UK3CB_G_Balaclava2_BLK","UK3CB_G_Balaclava2_DES","UK3CB_G_Balaclava2_MEE","UK3CB_G_Bandanna_aviator_brown_check","UK3CB_G_Bandanna_aviator_red_check","UK3CB_G_Bandanna_aviator_white_check","UK3CB_G_Bandanna_brown_check","UK3CB_G_Bandanna_red_check","UK3CB_G_Bandanna_sport_red_check","rhsusf_shemagh2_white"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

// PMC

	case "pmc" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_g3_tan","rhs_uniform_g3_blk","u_bg_guerilla2_1","u_bg_guerilla2_3","uk3cb_adm_b_u_shirt_pants_01_brn_cc","uk3cb_adm_b_u_shirt_pants_01_grn_ddpm"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_g3_mc";
		_leaderUniform = "rhs_uniform_g3_mc";
		_rpilotUniform = "rhs_uniform_g3_mc";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_g3_mc";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "protech" : {
				_rflmHelmetArray = ["rhsusf_protech_helmet_rhino","rhsusf_protech_helmet","rhsusf_protech_helmet_ess","rhsusf_protech_helmet_rhino_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_protech_helmet_rhino";
				_slHelmet = "rhsusf_protech_helmet_rhino";
				_tlHelmet = "rhsusf_protech_helmet_rhino";
				_sniperHelmet = "rhsusf_protech_helmet_rhino";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_bk_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_slHelmet = "rhsusf_opscore_mc_cover_pelt_cam";
				_tlHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_mc_cover";
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

		_rflmVest = "rhsusf_plateframe_rifleman";
		_gunnerVest = "rhsusf_plateframe_machinegunner";
		_asstVest = "rhsusf_plateframe_grenadier";
		_glVest = "rhsusf_plateframe_grenadier";
		_medVest = "rhsusf_plateframe_medic";
		_pilotVest = "rhsusf_mbav_light";
		_crewVest = "rhsusf_mbav_light";
		_coyVest = "rhsusf_plateframe_teamleader";
		_slVest = "rhsusf_plateframe_teamleader";
		_tlVest = "rhsusf_plateframe_teamleader";
		_sniperVest = "rhsusf_plateframe_marksman";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_blk";
		_medRuck = "UK3CB_CW_US_B_LATE_B_RIF_04";
		_armgRuck = "UK3CB_CW_US_B_LATE_B_RIF_04";
		_largeRuck = "rhs_tortila_black";
		_medicRuck = "B_TacticalPack_blk";
		_atRuck = "B_AssaultPack_blk";
		_sniperRuck = "B_AssaultPack_blk";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

#include "default.sqf"
};

// =========================== Diver Equipment ===========================

_diverUniform = "U_O_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_O_Diving";

// =======================================================================