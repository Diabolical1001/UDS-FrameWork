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

	case "nationalist" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhsgref_uniform_gorka_1_f"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_flecktarn_full";
		_leaderUniform = "rhsgref_uniform_gorka_1_f";
		_rpilotUniform = "rhsgref_uniform_gorka_1_f";
		_fpilotUniform = "rhsgref_uniform_gorka_1_f";
		_sniperUniform = "rhsgref_uniform_gorka_1_f";

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

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive"];
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

#include "default.sqf"
};

// =========================== Diver Equipment ===========================

_diverUniform = "U_O_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_O_Diving";

// =======================================================================