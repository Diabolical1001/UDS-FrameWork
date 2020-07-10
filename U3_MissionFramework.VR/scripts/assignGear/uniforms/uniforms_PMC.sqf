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
"_crewmanHelmetArray","_crewmanHRandom","_crewmanHelmet","_crewmanHelmetArray","_crewmanHRandom","_rotaryPilotHelmet","_rotaryCrewHelmet","_fixedPilotHelmet",
"_crewVest","_pilotVest",
"_sniperUniform","_sniperVest","_sniperRuck",
"_nightVision",
"_diverUniform","_diverVest","_diverRuck",
"_divingGoggles"
];

// =======================================================================

_insignia = "";

switch (_camoPattern) do {

	// PMC
	case "pmc" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["CUP_I_B_PMC_Unit_20","CUP_I_B_PMC_Unit_22","CUP_I_B_PMC_Unit_2","CUP_I_B_PMC_Unit_1","CUP_I_B_PMC_Unit_7","CUP_I_B_PMC_Unit_6","CUP_I_B_PMC_Unit_5","CUP_I_B_PMC_Unit_8","CUP_I_B_PMC_Unit_11","CUP_I_B_PMC_Unit_10","CUP_I_B_PMC_Unit_9","CUP_I_B_PMC_Unit_42","CUP_I_B_PMC_Unit_41","CUP_I_B_PMC_Unit_43","CUP_I_B_PMC_Unit_40","CUP_I_B_PMC_Unit_39","CUP_I_B_PMC_Unit_38","CUP_I_B_PMC_Unit_37"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "CUP_I_B_PMC_Unit_40";
		_leaderUniform = "CUP_I_B_PMC_Unit_39";
		_rpilotUniform = "CUP_I_B_PMC_Unit_38";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "CUP_I_B_PMC_Unit_37";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "soft" : {
				_rflmHelmetArray = ["CUP_H_PMC_Cap_PRR_Tan","CUP_H_PMC_Cap_PRR_Grey","CUP_H_FR_Cap_Headset_Green","CUP_H_PMC_Cap_EP_Tan","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_Back_PRR_Tan","CUP_H_PMC_Cap_Back_PRR_Grey","CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_Back_EP_Grey","rhsusf_bowman_cap"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_Bowman"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_Bowman";
				_rotaryCrewHelmet = "rhsusf_Bowman";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_Bowman";
				_slHelmet = "CUP_H_FR_Cap_Headset_Green";
				_tlHelmet = "CUP_H_FR_Cap_Headset_Green";
				_sniperHelmet = "CUP_H_PMC_Cap_Back_PRR_Tan";
			};
			case "ball" : {
				_rflmHelmetArray = ["rhsusf_opscore_paint_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_Bowman"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_Bowman";
				_rotaryCrewHelmet = "rhsusf_Bowman";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_Bowman";
				_slHelmet = "rhsusf_opscore_paint_pelt_nsw";
				_tlHelmet = "rhsusf_opscore_paint_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_paint_pelt";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
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

		_rflmVest = "rhsusf_mbav_rifleman";
		_gunnerVest = "rhsusf_mbav_mg";
		_glVest = "rhsusf_mbav_grenadier";
		_medVest = "rhsusf_mbav_medic";
		_pilotVest = "rhsusf_mbav";
		_crewVest = "rhsusf_mbav";
		_coyVest = "rhsusf_mbav_light";
		_slVest = "rhsusf_mbav_light";
		_tlVest = "rhsusf_mbav_grenadier";
		_sniperVest = "rhsusf_mbav_light";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_cbr";
		_medRuck = "tacpac_tan";
		_armgRuck = "tacpac_tan";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "tacpac_tan";
		_atRuck = "tacpac_tan";
		_sniperRuck = "B_AssaultPack_cbr";

		// ===================== NVGs ====================

		_nightVision = "CUP_NVG_PVS14";

		// =================== Goggles ===================

		_gogglesArray = ["G_Aviator","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_sport","G_Sport_Blackred","rhs_googles_black","rhs_googles_yellow","rhsusf_shemagh2_od","rhsusf_shemagh2_tan"];
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