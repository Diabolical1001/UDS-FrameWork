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

	// A3 - NATO - MCAM

	case "nato" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "U_B_CombatUniform_mcam";
		_leaderUniform = "U_B_CombatUniform_mcam";
		_rpilotUniform = "U_B_CombatUniform_mcam";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "U_B_CombatUniform_mcam";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "hhelmet" : {
				_rflmHelmetArray = ["H_HelmetB","H_HelmetB_grass","H_HelmetB_snakeskin","H_HelmetSpecB","H_HelmetSpecB_paint1","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["H_HelmetCrew_B"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "H_MilCap_mcamo";
				_rotaryPilotHelmet = "H_PilotHelmetHeli_B";
				_rotaryCrewHelmet = "H_CrewHelmetHeli_B";
				_fixedPilotHelmet = "H_PilotHelmetFighter_B";
				_coyHelmet = "H_MilCap_mcamo";
				_slHelmet = "H_HelmetSpecB_blk";
				_tlHelmet = "H_HelmetSpecB_paint2";
				_sniperHelmet = "H_HelmetB_camo";
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

		_rflmVest = "V_PlateCarrierSpec_rgr";
		_gunnerVest = "V_PlateCarrierSpec_mtp";
		_asstVest = "V_PlateCarrierGL_mtp";
		_glVest = "V_PlateCarrierGL_mtp";
		_medVest = "V_PlateCarrier2_rgr";
		_pilotVest = "V_TacVest_khk";
		_crewVest = "V_TacVest_khk";
		_coyVest = "V_PlateCarrier2_rgr";
		_slVest = "V_PlateCarrierSpec_rgr";
		_tlVest = "V_PlateCarrierSpec_mtp";
		_sniperVest = "V_PlateCarrier1_blk";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_mcamo";
		_medRuck = "B_TacticalPack_mcamo";
		_armgRuck = "B_Kitbag_mcamo";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "B_Kitbag_mcamo";
		_atRuck = "B_Kitbag_mcamo";
		_sniperRuck = "B_AssaultPack_mcamo";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// A3 - CSAT - HEX

	case "csat" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_O_CombatUniform_ocamo"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "U_O_CombatUniform_ocamo";
		_leaderUniform = "U_O_CombatUniform_ocamo";
		_rpilotUniform = "U_O_CombatUniform_ocamo";
		_fpilotUniform = "U_O_PilotCoveralls";
		_sniperUniform = "U_O_CombatUniform_ocamo";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "HelmetO" : {
				_rflmHelmetArray = ["H_HelmetO_ocamo"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["H_Tank_black_F"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "H_MilCap_mcamo";
				_rotaryPilotHelmet = "H_PilotHelmetHeli_O";
				_rotaryCrewHelmet = "H_PilotHelmetHeli_O";
				_fixedPilotHelmet = "H_PilotHelmetFighter_O";
				_coyHelmet = "H_MilCap_ocamo";
				_slHelmet = "H_HelmetLeaderO_ocamo";
				_tlHelmet = "H_HelmetLeaderO_ocamo";
				_sniperHelmet = "H_HelmetO_ocamo";
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

		_rflmVest = "V_HarnessO_brn";
		_gunnerVest = "V_TacVest_khk";
		_asstVest = "V_HarnessOGL_brn";
		_glVest = "V_HarnessOGL_brn";
		_medVest = "V_Chestrig_khk";
		_pilotVest = "V_Rangemaster_belt";
		_crewVest = "V_BandollierB_khk";
		_coyVest = "V_Chestrig_khk";
		_slVest = "V_TacVest_khk";
		_tlVest = "V_TacVest_khk";
		_sniperVest = "V_BandollierB_khk";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_ocamo";
		_medRuck = "B_TacticalPack_ocamo";
		_armgRuck = "B_TacticalPack_ocamo";
		_largeRuck = "B_Carryall_ocamo";
		_medicRuck = "B_Kitbag_tan";
		_atRuck = "B_TacticalPack_ocamo";
		_sniperRuck = "B_FieldPack_ocamo";

		// ===================== NVGs ====================

		_nightVision = "NVGoggles_OPFOR";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// A3 - AAF - Digital

	case "aaf" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "U_I_CombatUniform";
		_leaderUniform = "U_I_CombatUniform";
		_rpilotUniform = "U_I_HeliPilotCoveralls";
		_fpilotUniform = "U_I_pilotCoveralls";
		_sniperUniform = "U_I_CombatUniform";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "IAhelmet" : {
				_rflmHelmetArray = ["H_HelmetIA"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["H_HelmetCrew_B"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "H_MilCap_dgtl";
				_rotaryPilotHelmet = "H_PilotHelmetHeli_I";
				_rotaryCrewHelmet = "H_CrewHelmetHeli_I";
				_fixedPilotHelmet = "H_PilotHelmetFighter_I";
				_coyHelmet = "H_MilCap_dgtl";
				_slHelmet = "H_HelmetIA";
				_tlHelmet = "H_HelmetIA";
				_sniperHelmet = "H_Booniehat_dgtl";
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

		_rflmVest = "V_PlateCarrierIA2_dgtl";
		_gunnerVest = "V_PlateCarrierIA1_dgtl";
		_asstVest = "V_TacVest_camo";
		_glVest = "V_TacVest_camo";
		_medVest = "V_PlateCarrierIA1_dgtl";
		_pilotVest = "V_BandollierB_rgr";
		_crewVest = "V_BandollierB_rgr";
		_coyVest = "V_PlateCarrierIA1_dgtl";
		_slVest = "V_PlateCarrierIA2_dgtl";
		_tlVest = "V_PlateCarrierIA2_dgtl";
		_sniperVest = "V_BandollierB_rgr";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_dgtl";
		_medRuck = "B_Kitbag_rgr";
		_armgRuck = "B_TacticalPack_rgr";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "B_TacticalPack_rgr";
		_atRuck = "B_AssaultPack_dgtl";
		_sniperRuck = "B_AssaultPack_dgtl";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen2";

		// =================== Goggles ===================

		_gogglesArray = ["G_Bandanna_oli","G_Balaclava_oli"];
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