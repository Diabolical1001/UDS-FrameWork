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

	// Aus/NZ ARMY CORE - Olive Field

	case "anzac_rar" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["vn_b_uniform_aus_01_01","vn_b_uniform_aus_10_01","vn_b_uniform_aus_03_01","vn_b_uniform_aus_04_01","vn_b_uniform_aus_05_01","vn_b_uniform_aus_06_01","vn_b_uniform_aus_07_01","vn_b_uniform_aus_08_01"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "vn_b_uniform_aus_09_01";
		_leaderUniform = "vn_b_uniform_aus_02_01";
		_rpilotUniform = "vn_b_uniform_k2b_03_02";
		_fpilotUniform = "vn_b_uniform_k2b_01_01";
		_sniperUniform = "vn_b_uniform_aus_02_01";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "boonie" : {
				_rflmHelmetArray = ["vn_b_boonie_08_02","vn_b_boonie_08_01","vn_b_boonie_07_02","vn_b_boonie_06_02","vn_b_boonie_06_01"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["vn_b_beret_01_07","vn_b_beret_04_01"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "vn_b_beret_01_07";
				_rotaryPilotHelmet = "vn_b_helmet_svh4_01_04";
				_rotaryCrewHelmet = "vn_b_helmet_svh4_01_01";
				_fixedPilotHelmet = "vn_b_helmet_aph6_02_01";
				_coyHelmet = "vn_b_boonie_07_01";
				_slHelmet = "vn_b_boonie_07_01";
				_tlHelmet = "vn_b_boonie_07_01";
				_sniperHelmet = "vn_b_boonie_07_01";
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

		_rflmVest = "vn_b_vest_anzac_01";
		_gunnerVest = "vn_b_vest_anzac_05";
		_asstVest = "vn_b_vest_anzac_02";
		_glVest = "vn_b_vest_anzac_04";
		_medVest = "vn_b_vest_anzac_06";
		_pilotVest = "vn_b_vest_anzac_08";
		_crewVest = "vn_b_vest_anzac_09";
		_coyVest = "vn_b_vest_anzac_07";
		_slVest = "vn_b_vest_anzac_07";
		_tlVest = "vn_b_vest_anzac_07";
		_sniperVest = "vn_b_vest_anzac_03";

		// ===================== Rucks ====================

		_smallRuck = "vn_b_pack_p08_01";
		_medRuck = "vn_b_pack_pfield_01";
		_armgRuck = "vn_b_pack_pfield_01";
		_largeRuck = "vn_b_pack_p44_01";
		_medicRuck = "vn_b_pack_p08_02";
		_atRuck = "vn_b_pack_p08_01";
		_sniperRuck = "vn_b_pack_p08_01";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = ["vn_b_acc_rag_02","vn_b_acc_rag_01","vn_o_scarf_01_02"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// Aus/NZ SAS - ERDL

	case "anzac_sas" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["vn_b_uniform_sas_01_06","vn_b_uniform_sas_02_06"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "vn_b_uniform_aus_09_01";
		_leaderUniform = "vn_b_uniform_sas_03_06";
		_rpilotUniform = "vn_b_uniform_k2b_03_02";
		_fpilotUniform = "vn_b_uniform_k2b_01_01";
		_sniperUniform = "vn_b_uniform_sas_03_06";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "boonie" : {
				_rflmHelmetArray = ["vn_b_boonie_08_02","vn_b_boonie_08_01","vn_b_boonie_07_02","vn_b_boonie_06_02","vn_b_boonie_06_01","vn_b_bandana_08","vn_b_boonie_04_08"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["vn_b_beret_01_07","vn_b_beret_04_01"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "vn_b_beret_01_07";
				_rotaryPilotHelmet = "vn_b_helmet_svh4_01_04";
				_rotaryCrewHelmet = "vn_b_helmet_svh4_01_01";
				_fixedPilotHelmet = "vn_b_helmet_aph6_02_01";
				_coyHelmet = "vn_b_beret_01_07";
				_slHelmet = "vn_b_boonie_07_01";
				_tlHelmet = "vn_b_boonie_07_01";
				_sniperHelmet = "vn_b_headband_08";
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

		_rflmVest = "vn_b_vest_anzac_01";
		_gunnerVest = "vn_b_vest_anzac_05";
		_asstVest = "vn_b_vest_anzac_02";
		_glVest = "vn_b_vest_anzac_04";
		_medVest = "vn_b_vest_anzac_06";
		_pilotVest = "vn_b_vest_anzac_08";
		_crewVest = "vn_b_vest_anzac_09";
		_coyVest = "vn_b_vest_anzac_07";
		_slVest = "vn_b_vest_anzac_07";
		_tlVest = "vn_b_vest_anzac_07";
		_sniperVest = "vn_b_vest_anzac_03";

		// ===================== Rucks ====================

		_smallRuck = "vn_b_pack_p08_01";
		_medRuck = "vn_b_pack_pfield_01";
		_armgRuck = "vn_b_pack_pfield_01";
		_largeRuck = "vn_b_pack_p44_01";
		_medicRuck = "vn_b_pack_p08_02";
		_atRuck = "vn_b_pack_p08_01";
		_sniperRuck = "vn_b_pack_p08_01";

		// ===================== NVGs ====================

		_nightVision = "ACE_NVG_Gen1";

		// =================== Goggles ===================

		_gogglesArray = ["vn_b_acc_rag_02","vn_b_acc_rag_01","vn_o_scarf_01_02"];
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