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

	// BW - IDZ - Flecktarn

	case "flectarn_idz" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["BWA3_Uniform_Fleck","BWA3_Uniform_sleeves_Fleck"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "BWA3_Uniform_Crew_Fleck";
		_leaderUniform = "BWA3_Uniform_Fleck";
		_rpilotUniform = "BWA3_Uniform_Helipilot";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "BWA3_Uniform_Fleck";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m92" : {
				_rflmHelmetArray = ["BWA3_M92_Fleck"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["BWA3_CrewmanKSK_Fleck_Headset"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "BWA3_Knighthelm";
				_rotaryCrewHelmet = "BWA3_M92_Fleck";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "BWA3_M92_Fleck";
				_slHelmet = "BWA3_M92_Fleck";
				_tlHelmet = "BWA3_M92_Fleck";
				_sniperHelmet = "BWA3_Booniehat_Fleck";
			};
			case "opscore" : {
				_rflmHelmetArray = ["BWA3_OpsCore_Fleck"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["BWA3_CrewmanKSK_Fleck_Headset"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "BWA3_Knighthelm";
				_rotaryCrewHelmet = "BWA3_M92_Fleck";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "BWA3_OpsCore_Fleck_Camera";
				_slHelmet = "BWA3_OpsCore_Fleck_Camera";
				_tlHelmet = "BWA3_OpsCore_Fleck";
				_sniperHelmet = "BWA3_OpsCore_Fleck";
			};
			case "beret_fall" : {
				_rflmHelmetArray = ["BWA3_Beret_Falli"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["BWA3_Beret_Falli"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "BWA3_Knighthelm";
				_rotaryCrewHelmet = "BWA3_M92_Fleck";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "BWA3_Beret_Falli";
				_slHelmet = "BWA3_Beret_Falli";
				_tlHelmet = "BWA3_Beret_Falli";
				_sniperHelmet = "BWA3_Beret_Falli";
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

		_rflmVest = "BWA3_Vest_Rifleman_Fleck";
		_gunnerVest = "BWA3_Vest_MachineGunner_Fleck";
		_asstVest = "BWA3_Vest_Grenadier_Fleck";
		_glVest = "BWA3_Vest_Grenadier_Fleck";
		_medVest = "BWA3_Vest_Medic_Fleck";
		_pilotVest = "BWA3_Vest_JPC_Rifleman_Fleck";
		_crewVest = "BWA3_Vest_JPC_Rifleman_Fleck";
		_coyVest = "BWA3_Vest_Leader_Fleck";
		_slVest = "BWA3_Vest_Leader_Fleck";
		_tlVest = "BWA3_Vest_Leader_Fleck";
		_sniperVest = "BWA3_Vest_Marksman_Fleck";

		// ===================== Rucks ====================

		_smallRuck = "BWA3_AssaultPack_Fleck";
		_medRuck = "BWA3_Kitbag_Fleck";
		_armgRuck = "BWA3_TacticalPack_Fleck";
		_largeRuck = "BWA3_PatrolPack_Fleck";
		_medicRuck = "BWA3_TacticalPack_Fleck_Medic";
		_atRuck = "BWA3_Kitbag_Fleck";
		_sniperRuck = "BWA3_AssaultPack_Fleck";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh2_grn","rhsusf_shemagh_grn","rhs_googles_yellow","rhs_googles_black"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// BW - IDZ - tropen

	case "tropen_idz" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["BWA3_Uniform_Tropen","BWA3_Uniform_sleeves_Tropen"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "BWA3_Uniform_Crew_Tropen";
		_leaderUniform = "BWA3_Uniform_Tropen";
		_rpilotUniform = "BWA3_Uniform_Helipilot";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "BWA3_Uniform_Tropen";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m92" : {
				_rflmHelmetArray = ["BWA3_M92_Tropen"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["BWA3_CrewmanKSK_Tropen_Headset"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "BWA3_Knighthelm";
				_rotaryCrewHelmet = "BWA3_M92_Tropen";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "BWA3_M92_Tropen";
				_slHelmet = "BWA3_M92_Tropen";
				_tlHelmet = "BWA3_M92_Tropen";
				_sniperHelmet = "BWA3_Booniehat_Tropen";
			};
			case "opscore" : {
				_rflmHelmetArray = ["BWA3_OpsCore_Tropen"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["BWA3_CrewmanKSK_Fleck_Headset"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "BWA3_Knighthelm";
				_rotaryCrewHelmet = "BWA3_M92_Tropen";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "BWA3_OpsCore_Tropen_Camera";
				_slHelmet = "BWA3_OpsCore_Tropen_Camera";
				_tlHelmet = "BWA3_OpsCore_Tropen";
				_sniperHelmet = "BWA3_OpsCore_Tropen";
			};
			case "beret_fall" : {
				_rflmHelmetArray = ["BWA3_Beret_Falli"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["BWA3_Beret_Falli"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "BWA3_Knighthelm";
				_rotaryCrewHelmet = "BWA3_M92_Fleck";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "BWA3_Beret_Falli";
				_slHelmet = "BWA3_Beret_Falli";
				_tlHelmet = "BWA3_Beret_Falli";
				_sniperHelmet = "BWA3_Beret_Falli";
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

		_rflmVest = "BWA3_Vest_Rifleman_Tropen";
		_gunnerVest = "BWA3_Vest_MachineGunner_Tropen";
		_asstVest = "BWA3_Vest_Grenadier_Tropen";
		_glVest = "BWA3_Vest_Grenadier_Tropen";
		_medVest = "BWA3_Vest_Medic_Tropen";
		_pilotVest = "BWA3_Vest_JPC_Rifleman_Tropen";
		_crewVest = "BWA3_Vest_JPC_Rifleman_Tropen";
		_coyVest = "BWA3_Vest_Leader_Tropen";
		_slVest = "BWA3_Vest_Leader_Tropen";
		_tlVest = "BWA3_Vest_Leader_Tropen";
		_sniperVest = "BWA3_Vest_Marksman_Tropen";

		// ===================== Rucks ====================

		_smallRuck = "BWA3_AssaultPack_Tropen";
		_medRuck = "BWA3_Kitbag_Tropen";
		_armgRuck = "BWA3_TacticalPack_Tropen";
		_largeRuck = "BWA3_PatrolPack_Tropen";
		_medicRuck = "BWA3_TacticalPack_Tropen_Medic";
		_atRuck = "BWA3_Kitbag_Tropen";
		_sniperRuck = "BWA3_AssaultPack_Tropen";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh2_tan","rhsusf_shemagh_tan","rhs_googles_yellow","rhs_googles_black"];
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
