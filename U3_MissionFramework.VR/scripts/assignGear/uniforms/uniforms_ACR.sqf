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

	// ACR Woodland
	case "acr_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["CUP_U_B_CZ_WDL_NoKneepads","CUP_U_B_CZ_WDL_Kneepads_Gloves"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "CUP_U_B_CZ_WDL_NoKneepads";
		_leaderUniform = "CUP_U_B_CZ_WDL_NoKneepads";
		_rpilotUniform = "CUP_U_B_CZ_WDL_NoKneepads";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "CUP_U_B_CZ_WDL_NoKneepads";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "combat_wood" : {
				_rflmHelmetArray = ["CUP_H_CZ_Helmet03","rhsusf_lwh_helmet_marpatwd_blk_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "CUP_H_CZ_Helmet04";
				_slHelmet = "CUP_H_CZ_Helmet04";
				_tlHelmet = "CUP_H_CZ_Helmet04";
				_sniperHelmet = "CUP_H_CZ_Cap_Headphones";
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

		_rflmVest = "CUP_V_CZ_vest04";
		_gunnerVest = "CUP_V_CZ_vest12";
		_glVest = "CUP_V_CZ_vest06";
		_medVest = "CUP_V_CZ_vest10";
		_pilotVest = "CUP_V_CZ_vest19";
		_crewVest = "CUP_V_CZ_vest19";
		_coyVest = "CUP_V_CZ_vest08";
		_slVest = "CUP_V_CZ_vest08";
		_tlVest = "CUP_V_CZ_vest06";
		_sniperVest = "CUP_V_CZ_vest15";

		// ===================== Rucks ====================

		_smallRuck = "CUP_B_ACRScout_m95";
		_medRuck = "CUP_B_ACRPara_m95";
		_armgRuck = "CUP_B_ACRPara_m95";
		_largeRuck = "rhsgref_wdl_alicepack";
		_medicRuck = "CUP_B_ACRPara_m95";
		_atRuck = "CUP_B_ACRScout_m95";
		_sniperRuck = "CUP_B_ACRScout_m95";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_googles_black","rhs_scarf","rhs_balaclava"];
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