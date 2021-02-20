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
"_rflmVest","_gunnerVest","_glVest","_medVest","_coyVest","_slVest","_tlVest",
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

	// VME - PLA - WOOD

	case "pla_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["PLA_CombatUniform_SBCB"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "PLA_CombatUniform_SBCB";
		_leaderUniform = "PLA_CombatUniform_SGCB";
		_rpilotUniform = "PLA_CombatUniform_SBCB";
		_fpilotUniform = "PLA_Pilot_Blue_Coveralls";
		_sniperUniform = "PLA_CombatUniform_SBCB";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "qgjo3" : {
				_rflmHelmetArray = ["VME_PLA_Helmet","VME_PLA_Helmet_G"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["VME_CREW_Cap"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "VME_PLA_Hat";
				_rotaryPilotHelmet = "VME_Pilot_Heli_Helmet";
				_rotaryCrewHelmet = "VME_Pilot_Heli_Helmet";
				_fixedPilotHelmet = "VME_Pilot_Helmet";
				_coyHelmet = "VME_PLA_RadioHat";
				_slHelmet = "VME_PLA_Helmet_R";
				_tlHelmet = "VME_PLA_Helmet_R";
				_sniperHelmet = "VME_Booniehat_WD";
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

		_rflmVest = "PLA_T15Vest_RF";
		_gunnerVest = "PLA_B04_MG";
		_glVest = "PLA_T15Vest_RF";
		_medVest = "PLA_T15Vest_RF";
		_pilotVest = "PLA_B04_RF";
		_crewVest = "PLA_B04_RF";
		_coyVest = "PLA_T15Vest_RD";
		_slVest = "PLA_T15Vest_RD";
		_tlVest = "PLA_T15Vest_RF";
		_sniperVest = "PLA_T15Vest_RF";

		// ===================== Rucks ====================

		_smallRuck = "PLA_AssaultPack_Fix";
		_medRuck = "PLANM_FieldPack_Medic";
		_armgRuck = "PLANM_QLU11_Pack";
		_largeRuck = "PLANM_QLU11_Pack";
		_medicRuck = "PLANM_FieldPack_Medic";
		_atRuck = "PLA_AssaultPack_Fix";
		_sniperRuck = "PLA_AssaultPack_Fix";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["G_Bandanna_blk",""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// VME - PLA - DESERT

	case "pla_d" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["PLA_CombatUniform_HM_SBCB"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "PLA_CombatUniform_HM_SBCB";
		_leaderUniform = "PLA_CombatUniform_HM_SWCB";
		_rpilotUniform = "PLA_CombatUniform_HM_SBCB";
		_fpilotUniform = "PLA_Pilot_Blue_Coveralls";
		_sniperUniform = "PLA_CombatUniform_HM_SBCB";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "qgjo3" : {
				_rflmHelmetArray = ["VME_PLA_Helmet_D","VME_PLA_Helmet_D_G"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["VME_CREW_Cap"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "VME_PLA_Hat_D";
				_rotaryPilotHelmet = "VME_Pilot_Heli_Helmet";
				_rotaryCrewHelmet = "VME_Pilot_Heli_Helmet";
				_fixedPilotHelmet = "VME_Pilot_Helmet";
				_coyHelmet = "VME_PLADES_RadioHat";
				_slHelmet = "VME_PLA_Helmet_D_R_O";
				_tlHelmet = "VME_PLA_Helmet_D_R_O";
				_sniperHelmet = "VME_Booniehat_DES";
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

		_rflmVest = "PLA_T15Vest_RF_D";
		_gunnerVest = "PLA_B04_MG_D";
		_glVest = "PLA_T15Vest_RF_D";
		_medVest = "PLA_T15Vest_RF_D";
		_pilotVest = "PLA_T15Vest_D";
		_crewVest = "PLA_T15Vest_D";
		_coyVest = "PLA_T15Vest_RD_D";
		_slVest = "PLA_T15Vest_RD_D";
		_tlVest = "PLA_T15Vest_RD_D";
		_sniperVest = "PLA_B04_RF_D";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_cbr";
		_medRuck = "B_Kitbag_cbr";
		_armgRuck = "B_Kitbag_cbr";
		_largeRuck = "PLADES_CarryAll_Base";
		_medicRuck = "PLANM_FieldPack_Medic";
		_atRuck = "B_FieldPack_cbr";
		_sniperRuck = "B_FieldPack_cbr";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["G_Bandanna_blk",""];
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