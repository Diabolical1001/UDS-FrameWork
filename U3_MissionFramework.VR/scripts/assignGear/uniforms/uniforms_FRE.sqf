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
	case "m93_ce" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["m93_ce"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "m93_ce";
		_leaderUniform = "m93_ce";
		_rpilotUniform = "m93_ce";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "m93_ce";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "pasgt" : {
				_rflmHelmetArray = ["CUP_H_PASGTv2_NVG_WDL","CUP_H_PASGTv2_NVG_WDL_GG"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_Bowman"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_Bowman";
				_rotaryCrewHelmet = "rhsusf_Bowman";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "CUP_H_US_patrol_cap_WDL";
				_slHelmet = "CUP_H_PASGTv2_NVG_WDL_GG_CB";
				_tlHelmet = "CUP_H_PASGTv2_NVG_WDL_CF";
				_sniperHelmet = "CUP_H_PMC_Cap_Back_PRR_Tan";
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

		_rflmVest = "CUP_V_B_Interceptor_Rifleman";
		_gunnerVest = "CUP_V_CZ_NPP2006_nk_vz95";
		_glVest = "CUP_V_CZ_NPP2006_ok_vz95";
		_medVest = "rhsgref_TacVest_ERDL";
		_pilotVest = "CUP_V_CZ_NPP2006_light_vz95";
		_crewVest = "CUP_V_CZ_NPP2006_light_vz95";
		_coyVest = "CUP_V_CZ_NPP2006_ok_vz95";
		_slVest = "CUP_V_CZ_NPP2006_co_vz95";
		_tlVest = "CUP_V_CZ_NPP2006_vz95";
		_sniperVest = "CUP_V_CZ_NPP2006_ok_vz95";

		// ===================== Rucks ====================

		_smallRuck = "CUP_B_USMC_MOLLE_WDL";
		_medRuck = "rhssaf_kitbag_md2camo";
		_armgRuck = "rhssaf_kitbag_md2camo";
		_largeRuck = "rhssaf_alice_md2camo";
		_medicRuck = "rhssaf_kitbag_md2camo";
		_atRuck = "CUP_B_USMC_MOLLE_WDL";
		_sniperRuck = "rhssaf_kitbag_md2camo";

		// ===================== NVGs ====================

		_nightVision = "CUP_NVG_PVS14";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh2_grn","rhsusf_shemagh2_od"];
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