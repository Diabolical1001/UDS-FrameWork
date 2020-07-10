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

	// MTP
	case "baf_mtp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["CUP_U_B_BAF_MTP_UBACSLONG","CUP_U_B_BAF_MTP_UBACSLONGKNEE","CUP_U_B_BAF_MTP_UBACSROLLED","CUP_U_B_BAF_MTP_UBACSROLLEDKNEE"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "CUP_U_B_BAF_MTP_UBACSLONG";
		_leaderUniform = "CUP_U_B_BAF_MTP_UBACSLONG";
		_rpilotUniform = "CUP_U_B_BAF_MTP_UBACSLONG";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "CUP_U_B_BAF_MTP_UBACSLONG";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk7_mtp" : {
				_rflmHelmetArray = ["CUP_H_BAF_MTP_Mk7","CUP_H_BAF_MTP_Mk7_PRR_SCRIM_A","CUP_H_BAF_MTP_Mk6_NETTING_PRR"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["CUP_H_BAF_MTP_Mk6_CREW_PRR"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "CUP_H_BAF_MTP_Mk6_GOGGLES_PRR";
				_slHelmet = "CUP_H_BAF_MTP_Mk6_GOGGLES_PRR";
				_tlHelmet = "CUP_H_BAF_MTP_Mk6_GOGGLES_PRR";
				_sniperHelmet = "CUP_H_BAF_MTP_Mk7_PRR_SCRIM_B";
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

		_rflmVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman";
		_gunnerVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_AutomaticRifleman";
		_glVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier";
		_medVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Medic";
		_pilotVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Crewman";
		_crewVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Crewman";
		_coyVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman";
		_slVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman";
		_tlVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Officer";
		_sniperVest = "CUP_V_B_BAF_MTP_Osprey_Mk4_Scout";

		// ===================== Rucks ====================

		_smallRuck = "CUP_B_Bergen_BAF";
		_medRuck = "CUP_B_Motherlode_MTP";
		_armgRuck = "CUP_B_Predator_MTP";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "CUP_B_Motherlode_MTP";
		_atRuck = "CUP_B_Predator_MTP";
		_sniperRuck = "CUP_B_Bergen_BAF";

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

// ===================== Diver Equipment ==================

_diverUniform = "U_B_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_B_Diving";

// ========================================================