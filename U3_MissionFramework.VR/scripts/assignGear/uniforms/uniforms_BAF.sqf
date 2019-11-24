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

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_MTP_RM","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "UK3CB_BAF_U_CrewmanCoveralls_RTR";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk7_mtp" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_ESS_B","UK3CB_BAF_H_Mk7_Net_B","UK3CB_BAF_H_Mk7_Net_C","UK3CB_BAF_H_Mk7_Net_D","UK3CB_BAF_H_Mk7_Net_CESS_A","UK3CB_BAF_H_Mk7_Net_CESS_B","UK3CB_BAF_H_Mk7_Net_CESS_C","UK3CB_BAF_H_Mk7_Net_CESS_D"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_rotaryCrewHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Beret_RM_Bootneck_PRR_Over";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_D";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_A";
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

		_rflmVest = "UK3CB_BAF_V_Osprey_Rifleman_C";
		_gunnerVest = "UK3CB_BAF_V_Osprey_MG_B";
		_glVest = "UK3CB_BAF_V_Osprey_Grenadier_B";
		_medVest = "UK3CB_BAF_V_Osprey_Medic_D";
		_pilotVest = "UK3CB_BAF_V_Pilot_A";
		_crewVest = "UK3CB_BAF_V_Pilot_A";
		_coyVest = "UK3CB_BAF_V_Osprey_SL_B";
		_slVest = "UK3CB_BAF_V_Osprey_SL_A";
		_tlVest = "UK3CB_BAF_V_Osprey_SL_C";
		_sniperVest = "UK3CB_BAF_V_Osprey_Marksman_A";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_mcamo";
		_medRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
		_armgRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
		_largeRuck = "UK3CB_BAF_B_Carryall_MTP";
		_medicRuck = "UK3CB_BAF_B_Bergen_MTP_Medic_L_B";
		_atRuck = "UK3CB_BAF_B_Kitbag_MTP";
		_sniperRuck = "B_AssaultPack_mcamo";

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