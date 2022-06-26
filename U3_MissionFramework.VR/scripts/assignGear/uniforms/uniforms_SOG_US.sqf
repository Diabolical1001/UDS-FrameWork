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

	// US ARMY - Olive Filed

	case "us_army" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["vn_b_uniform_macv_01_01","vn_b_uniform_macv_02_01","vn_b_uniform_macv_03_01","vn_b_uniform_macv_04_01","vn_b_uniform_macv_05_01","vn_b_uniform_macv_06_01"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "vn_b_uniform_k2b_02_01";
		_leaderUniform = "vn_b_uniform_macv_02_01";
		_rpilotUniform = "vn_b_uniform_k2b_02_01";
		_fpilotUniform = "vn_b_uniform_k2b_01_01";
		_sniperUniform = "vn_b_uniform_macv_05_01";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m1" : {
				_rflmHelmetArray = ["vn_b_helmet_m1_01_01","vn_b_helmet_m1_02_01","vn_b_helmet_m1_03_01","vn_b_helmet_m1_05_01","vn_b_helmet_m1_06_01","vn_b_helmet_m1_07_01","vn_b_helmet_m1_11_01"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["vn_b_helmet_t56_01_02","vn_b_helmet_t56_02_02"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "vn_b_beret_01_05";
				_rotaryPilotHelmet = "vn_b_helmet_svh4_02_01";
				_rotaryCrewHelmet = "vn_b_helmet_svh4_01_01";
				_fixedPilotHelmet = "vn_b_helmet_aph6_02_01";
				_coyHelmet = "vn_b_helmet_m1_05_01";
				_slHelmet = "vn_b_helmet_m1_07_01";
				_tlHelmet = "vn_b_helmet_m1_06_01";
				_sniperHelmet = "vn_b_boonie_04_01";
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

		_rflmVest = "vn_b_vest_usarmy_02";
		_gunnerVest = "vn_b_vest_usarmy_06";
		_asstVest = "vn_b_vest_usarmy_05";
		_glVest = "vn_b_vest_usarmy_05";
		_medVest = "vn_b_vest_usarmy_07";
		_pilotVest = "vn_b_vest_aircrew_05";
		_crewVest = "vn_b_vest_usarmy_13";
		_coyVest = "vn_b_vest_usarmy_03";
		_slVest = "vn_b_vest_usarmy_09";
		_tlVest = "vn_b_vest_usarmy_03";
		_sniperVest = "vn_b_vest_usarmy_08";

		// ===================== Rucks ====================

		_smallRuck = "vn_b_pack_trp_02_02";
		_medRuck = "vn_b_pack_lw_01";
		_armgRuck = "vn_b_pack_lw_02";
		_largeRuck = "vn_b_pack_lw_05";
		_medicRuck = "vn_b_pack_lw_07";
		_atRuck = "vn_b_pack_trp_02_02";
		_sniperRuck = "vn_b_pack_lw_03";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// MACV - TIGER

	case "macv" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["vn_b_uniform_macv_01_02","vn_b_uniform_macv_02_02","vn_b_uniform_macv_03_02","vn_b_uniform_macv_04_02","vn_b_uniform_macv_05_02","vn_b_uniform_macv_06_02","vn_b_uniform_sog_01_05","vn_b_uniform_sog_02_05"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "vn_b_uniform_k2b_02_01";
		_leaderUniform = "vn_b_uniform_sog_02_02";
		_rpilotUniform = "vn_b_uniform_k2b_02_01";
		_fpilotUniform = "vn_b_uniform_k2b_01_01";
		_sniperUniform = "vn_b_uniform_sog_01_02";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "soft" : {
				_rflmHelmetArray = ["vn_b_bandana_05","vn_b_beret_01_06","vn_b_boonie_02_02","vn_b_boonie_03_02","vn_b_boonie_04_02","vn_b_boonie_05_05","vn_b_helmet_m1_11_01","vn_b_boonie_01_02","vn_b_headband_02"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["vn_b_helmet_t56_01_02","vn_b_helmet_t56_02_02"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "vn_b_beret_01_05";
				_rotaryPilotHelmet = "vn_b_helmet_svh4_02_01";
				_rotaryCrewHelmet = "vn_b_helmet_svh4_01_01";
				_fixedPilotHelmet = "vn_b_helmet_aph6_02_01";
				_coyHelmet = "vn_b_beret_01_01";
				_slHelmet = "vn_b_beret_01_05";
				_tlHelmet = "vn_b_beret_01_06";
				_sniperHelmet = "vn_b_headband_04";
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

		_rflmVest = "vn_b_vest_sog_04";
		_gunnerVest = "vn_b_vest_seal_03";
		_asstVest = "vn_b_vest_sog_05";
		_glVest = "vn_b_vest_sog_03";
		_medVest = "vn_b_vest_sog_02";
		_pilotVest = "vn_b_vest_aircrew_05";
		_crewVest = "vn_b_vest_usarmy_13";
		_coyVest = "vn_b_vest_sog_06";
		_slVest = "vn_b_vest_sog_06";
		_tlVest = "vn_b_vest_sog_01";
		_sniperVest = "vn_b_vest_sog_04";

		// ===================== Rucks ====================

		_smallRuck = "vn_b_pack_trp_02";
		_medRuck = "vn_b_pack_trp_02_02";
		_armgRuck = "vn_b_pack_trp_01";
		_largeRuck = "vn_b_pack_lw_05";
		_medicRuck = "vn_b_pack_lw_07";
		_atRuck = "vn_b_pack_05";
		_sniperRuck = "vn_b_pack_trp_02";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = ["vn_o_bandana_g","vn_o_bandana_b","vn_o_poncho_01_01","vn_b_scarf_01_03","vn_b_scarf_01_01"];
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