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

	// NVA ARMY - Olive Field

	case "nva_army" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["vn_o_uniform_nva_army_01_04","vn_o_uniform_nva_army_10_04","vn_o_uniform_nva_army_11_04","vn_o_uniform_nva_army_12_04","vn_o_uniform_nva_army_02_04","vn_o_uniform_nva_army_03_04","vn_o_uniform_nva_army_04_04","vn_o_uniform_nva_army_05_04","vn_o_uniform_nva_army_06_04"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "vn_o_uniform_nva_army_08_04";
		_leaderUniform = "vn_o_uniform_nva_army_07_04";
		_rpilotUniform = "vn_o_uniform_nva_army_08_04";
		_fpilotUniform = "vn_o_uniform_nva_air_01";
		_sniperUniform = "vn_o_uniform_nva_army_09_04";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "pth" : {
				_rflmHelmetArray = ["vn_o_helmet_nva_01","vn_o_helmet_nva_04","vn_o_helmet_nva_03","vn_o_helmet_nva_05","vn_o_helmet_nva_07","vn_o_helmet_nva_02","vn_b_boonie_01_01"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["vn_o_helmet_tsh3_02","vn_o_helmet_tsh3_01"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "vn_b_beret_01_05";
				_rotaryPilotHelmet = "vn_o_helmet_shl61_01";
				_rotaryCrewHelmet = "vn_o_helmet_shl61_01";
				_fixedPilotHelmet = "vn_o_helmet_zsh3_02";
				_coyHelmet = "vn_o_helmet_nva_01";
				_slHelmet = "vn_b_helmet_m1_07_01";
				_tlHelmet = "vn_o_helmet_nva_07";
				_sniperHelmet = "vn_o_boonie_nva_02_01";
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

		_rflmVest = "vn_o_vest_02";
		_gunnerVest = "vn_o_vest_03";
		_asstVest = "vn_o_vest_01";
		_glVest = "vn_o_vest_01";
		_medVest = "vn_o_vest_06";
		_pilotVest = "vn_o_vest_02";
		_crewVest = "vn_o_vest_02";
		_coyVest = "vn_o_vest_07";
		_slVest = "vn_o_vest_07";
		_tlVest = "vn_o_vest_02";
		_sniperVest = "vn_o_vest_02";

		// ===================== Rucks ====================

		_smallRuck = "vn_o_pack_04";
		_medRuck = "vn_o_pack_06";
		_armgRuck = "vn_o_pack_05";
		_largeRuck = "vn_o_pack_05_type56_pl";
		_medicRuck = "vn_o_pack_04";
		_atRuck = "vn_o_pack_07";
		_sniperRuck = "vn_o_pack_04";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = ["vn_o_poncho_01_01","","","","","","vn_o_scarf_01_02"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// VC - Black

	case "nva_army" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["vn_o_uniform_vc_mf_01_07","vn_o_uniform_vc_01_01","vn_o_uniform_vc_01_02","vn_o_uniform_vc_01_05","vn_o_uniform_vc_mf_10_07","vn_o_uniform_vc_mf_11_07","vn_o_uniform_vc_reg_11_10","vn_o_uniform_vc_mf_12_07","vn_o_uniform_vc_reg_12_10","vn_o_uniform_vc_02_01","vn_o_uniform_vc_02_02","vn_o_uniform_vc_02_05","vn_o_uniform_vc_03_01","vn_o_uniform_vc_03_02","vn_o_uniform_vc_04_01","vn_o_uniform_vc_04_02","vn_o_uniform_vc_04_05"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "vn_o_uniform_vc_mf_04_07";
		_leaderUniform = "vn_o_uniform_vc_mf_09_07";
		_rpilotUniform = "vn_o_uniform_vc_mf_04_07";
		_fpilotUniform = "vn_o_uniform_vc_mf_04_07";
		_sniperUniform = "vn_o_uniform_vc_05_01";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "soft" : {
				_rflmHelmetArray = ["vn_c_conehat_01","vn_o_helmet_vc_01","vn_o_helmet_vc_01","vn_o_helmet_vc_04","vn_o_helmet_vc_03","vn_o_helmet_vc_05","vn_o_helmet_vc_02","vn_o_boonie_vc_01_02","vn_o_boonie_vc_01_01","vn_b_headband_03","vn_b_headband_04","vn_c_conehat_02"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["vn_o_helmet_tsh3_02","vn_o_helmet_tsh3_01"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "vn_b_beret_01_05";
				_rotaryPilotHelmet = "vn_o_helmet_shl61_01";
				_rotaryCrewHelmet = "vn_o_helmet_shl61_01";
				_fixedPilotHelmet = "vn_o_helmet_zsh3_02";
				_coyHelmet = "vn_b_bandana_03";
				_slHelmet = "vn_o_helmet_nva_04";
				_tlHelmet = "vn_o_helmet_nva_07";
				_sniperHelmet = "vn_o_boonie_nva_02_01";
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

		_rflmVest = "vn_o_vest_vc_02";
		_gunnerVest = "vn_o_vest_vc_01";
		_asstVest = "vn_o_vest_01";
		_glVest = "vn_o_vest_vc_01";
		_medVest = "vn_o_vest_vc_04";
		_pilotVest = "vn_o_vest_02";
		_crewVest = "vn_o_vest_02";
		_coyVest = "vn_o_vest_vc_05";
		_slVest = "vn_o_vest_vc_05";
		_tlVest = "vn_o_vest_vc_01";
		_sniperVest = "vn_o_vest_02";

		// ===================== Rucks ====================

		_smallRuck = "vn_o_pack_06";
		_medRuck = "vn_o_pack_06";
		_armgRuck = "vn_o_pack_05";
		_largeRuck = "vn_o_pack_05_type56_pl";
		_medicRuck = "vn_o_pack_04";
		_atRuck = "vn_o_pack_07";
		_sniperRuck = "vn_o_pack_06";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = ["vn_o_poncho_01_01","","vn_o_bandana_b","","","","vn_o_scarf_01_02"];
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