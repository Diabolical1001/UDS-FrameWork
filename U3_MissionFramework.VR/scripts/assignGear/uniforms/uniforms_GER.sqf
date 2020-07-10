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

	// BW - WOOD
	case "bw_fleck" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["CUP_U_B_GER_Flecktarn_1","CUP_U_B_GER_Flecktarn_2","CUP_U_B_GER_Flecktarn_3","CUP_U_B_GER_Flecktarn_4"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "CUP_U_B_GER_Fleck_Overalls_Tank";
		_leaderUniform = "CUP_U_B_GER_Flecktarn_1";
		_rpilotUniform = "CUP_U_B_GER_Fleck_Overalls_Pilot";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "CUP_U_B_GER_Flecktarn_3";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m92" : {
				_rflmHelmetArray = ["CUP_H_Ger_M92_Cover","CUP_H_Ger_M92_Cover_GG_CB","CUP_H_Ger_M92_Cover_GG_CF","CUP_H_Ger_M92_Cover_GG"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_helmet"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "CUP_H_Ger_M92_Cover_GG";
				_slHelmet = "CUP_H_Ger_M92_Cover_GG_CB";
				_tlHelmet = "CUP_H_Ger_M92_Cover_GG_CF";
				_sniperHelmet = "CUP_H_Ger_Boonie2_Flecktarn";
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

		_rflmVest = "CUP_V_B_GER_PVest_Fleck_RFL";
		_gunnerVest = "CUP_V_B_GER_PVest_Fleck_MG";
		_glVest = "CUP_V_B_GER_PVest_Fleck_Gren";
		_medVest = "CUP_V_B_GER_PVest_Fleck_Med";
		_pilotVest = "CUP_V_B_GER_Vest_2";
		_crewVest = "CUP_V_B_GER_Vest_2";
		_coyVest = "CUP_V_B_GER_PVest_Fleck_OFC";
		_slVest = "CUP_V_B_GER_PVest_Fleck_OFC";
		_tlVest = "CUP_V_B_GER_PVest_Fleck_Gren";
		_sniperVest = "CUP_V_B_GER_Carrier_Vest_3";

		// ===================== Rucks ====================

		_smallRuck = "CUP_B_GER_Medic_Flecktarn";
		_medRuck = "CUP_B_GER_Medic_Flecktarn";
		_armgRuck = "CUP_B_GER_Pack_Flecktarn";
		_largeRuck = "CUP_B_GER_Pack_Flecktarn";
		_medicRuck = "CUP_B_GER_Pack_Flecktarn";
		_atRuck = "CUP_B_GER_Medic_Flecktarn";
		_sniperRuck = "CUP_B_GER_Medic_Flecktarn";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = ["CUP_PMC_Facewrap_Black","CUP_PMC_Facewrap_Tropical","rhs_googles_black","rhs_googles_clear"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// BW - DESERT
	case "bw_trop" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["CUP_U_B_GER_Tropentarn_1","CUP_U_B_GER_Tropentarn_2","CUP_U_B_GER_Tropentarn_3","CUP_U_B_GER_Tropentarn_4"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "CUP_U_B_GER_Overalls_Tank";
		_leaderUniform = "CUP_U_B_GER_Tropentarn_1";
		_rpilotUniform = "CUP_U_B_GER_Fleck_Overalls_Pilot";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "CUP_U_B_GER_Tropentarn_3";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m92" : {
				_rflmHelmetArray = ["CUP_H_Ger_M92_Cover_Trop","CUP_H_Ger_M92_Cover_Trop_GG_CB","CUP_H_Ger_M92_Cover_Trop_GG_CF","CUP_H_Ger_M92_Cover_Trop_GG"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "CUP_H_Ger_M92_Cover_Trop_GG";
				_slHelmet = "CUP_H_Ger_M92_Cover_Trop_GG_CB";
				_tlHelmet = "CUP_H_Ger_M92_Cover_Trop_GG_CF";
				_sniperHelmet = "CUP_H_Ger_Boonie_desert";
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

		_rflmVest = "CUP_V_B_GER_PVest_Trop_RFL";
		_gunnerVest = "CUP_V_B_GER_PVest_Trop_MG";
		_glVest = "CUP_V_B_GER_PVest_Trop_Gren";
		_medVest = "CUP_V_B_GER_PVest_Trop_Med";
		_pilotVest = "CUP_V_B_GER_Vest_2";
		_crewVest = "CUP_V_B_JPC_Trop_Light";
		_coyVest = "CUP_V_B_GER_PVest_Trop_OFC";
		_slVest = "CUP_V_B_GER_PVest_Trop_OFC";
		_tlVest = "CUP_V_B_GER_PVest_Trop_Gren";
		_sniperVest = "CUP_V_B_GER_Tactical_Trop";

		// ===================== Rucks ====================

		_smallRuck = "CUP_B_GER_Medic_Tropentarn";
		_medRuck = "CUP_B_GER_Medic_Tropentarn";
		_armgRuck = "CUP_B_GER_Pack_Tropentarn";
		_largeRuck = "CUP_B_GER_Pack_Tropentarn";
		_medicRuck = "CUP_B_GER_Pack_Tropentarn";
		_atRuck = "CUP_B_GER_Medic_Tropentarn";
		_sniperRuck = "CUP_B_GER_Medic_Tropentarn";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = ["CUP_PMC_Facewrap_Black","CUP_PMC_Facewrap_Tropical","rhs_googles_black","rhs_googles_clear"];
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