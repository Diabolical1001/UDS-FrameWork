// ================================================
// AssignGear - Uniforms
// by UDS
// - Defines all of the wearable items to be used by the assignGear script.
// ================================================
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

// ================================================

_insignia = "";

// ==================== Uniforms ==================

_rflmUniformArray = ["rhsgref_uniform_woodland_olive","rhsgref_uniform_woodland","rhsgref_uniform_reed","rhsgref_uniform_flecktarn_full","rhsgref_uniform_flecktarn"];
_rflmRandom = (floor(random (count _rflmUniformArray)));
_rflmUniform = _rflmUniformArray select _rflmRandom;
_crewUniform = "rhsgref_uniform_vsr";
_leaderUniform = "rhsgref_uniform_vsr";
_rpilotUniform = "rhsgref_uniform_vsr";
_fpilotUniform = "U_B_PilotCoveralls";
_sniperUniform = "rhsgref_uniform_tigerstripe";

// ==================== Headgear ==================

switch (_headgear) do {
	case "none" : {
		_rflmHelmetArray = [""];
		_rflmHRandom = (floor(random (count _rflmHelmetArray)));
		_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	
		_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
		_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
		_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; 
		_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
		_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
		_fixedPilotHelmet = "RHS_jetpilot_usaf";
		_coyHelmet = "";
		_slHelmet = "";
		_tlHelmet = "";
		_sniperHelmet = "";
	};
	default {
		_rflmHelmetArray = [""];
		_rflmHRandom = (floor(random (count _rflmHelmetArray)));
		_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	
		_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
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

_rflmVest = "rhsgref_chestrig";
_gunnerVest = "rhsgref_6b23_khaki";
_glVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
_medVest = "rhsgref_6b23_khaki_medic";
_pilotVest = "rhsgref_6b23_ttsko_forest_rifleman";
_crewVest = "rhsgref_6b23_ttsko_forest_rifleman";
_coyVest = "rhs_6b5_rifleman_vsr";
_slVest = "rhs_6b5_rifleman_vsr";
_tlVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
_sniperVest = "rhsgref_6b23_khaki_sniper";

// ===================== Rucks ====================

_smallRuck = "B_FieldPack_cbr";
_medRuck = "rhssaf_kitbag_md2camo";
_armgRuck = "rhssaf_kitbag_md2camo";
_largeRuck = "rhssaf_alice_md2camo";
_medicRuck = "rhssaf_kitbag_md2camo";
_atRuck = "rhssaf_alice_md2camo";
_sniperRuck = "rhsusf_falconii_coy";

// ===================== NVGs =====================

_nightVision = "";

// =================== Goggles ====================

_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf","om_csat_balaclava","om_csat_balaclava1"]; 
_gogglesRandom = (floor(random (count _gogglesArray)));
_goggles = _gogglesArray select _gogglesRandom;

// =============== Diver Equipment ================

_diverUniform = "U_O_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_O_Diving";

// ================================================