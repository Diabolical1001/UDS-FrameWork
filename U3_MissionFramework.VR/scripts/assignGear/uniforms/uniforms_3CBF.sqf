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

	// 3CBF - Takistan Army - Opfor

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

#include "default.sqf"
};

// ===================== Diver Equipment ==================

_diverUniform = "U_B_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_B_Diving";

// ========================================================