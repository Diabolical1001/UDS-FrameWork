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

	// RHS - USMC - Woodland MARPAT

	case "usmc_marpat_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_FROG01_wd"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_FROG01_wd";
		_leaderUniform = "rhs_uniform_FROG01_wd";
		_rpilotUniform = "rhs_uniform_FROG01_wd";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_FROG01_wd";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "lwh_helmet_marpatwd" : {
				_rflmHelmetArray = ["rhsusf_lwh_helmet_marpatwd","rhsusf_lwh_helmet_marpatwd_blk_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_lwh_helmet_marpatwd_headset_blk";
				_slHelmet = "rhsusf_lwh_helmet_marpatwd_headset_blk2";
				_tlHelmet = "rhsusf_lwh_helmet_marpatwd_headset";
				_sniperHelmet = "rhs_booniehat2_marpatwd";
			};
			case "mich_marpatwd" : {
				_rflmHelmetArray = ["rhsusf_mich_helmet_marpatwd_norotos","rhsusf_mich_helmet_marpatwd_norotos_arc"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_mich_helmet_marpatwd_norotos_headset";
				_slHelmet = "rhsusf_mich_helmet_marpatwd_norotos_headset";
				_tlHelmet = "rhsusf_mich_helmet_marpatwd_norotos_arc_headset";
				_sniperHelmet = "rhs_booniehat2_marpatwd";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_mar_fg_pelt","rhsusf_opscore_coy_cover_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_fg_pelt";
				_slHelmet = "rhsusf_opscore_fg_pelt_cam";
				_tlHelmet = "rhsusf_opscore_fg_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_rg_cover_pelt";
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

		_rflmVest = "rhsusf_spc_rifleman";
		_gunnerVest = "rhsusf_spc_mg";
		_asstVest = "rhsusf_spc_teamleader";
		_glVest = "rhsusf_spc_teamleader";
		_medVest = "rhsusf_spc_corpsman";
		_pilotVest = "rhsusf_spc_crewman";
		_crewVest = "rhsusf_spc_crewman";
		_coyVest = "rhsusf_spc_light";
		_slVest = "rhsusf_spc_squadleader";
		_tlVest = "rhsusf_spc_patchless_radio";
		_sniperVest = "rhsusf_spc_marksman";

		// ===================== Rucks ====================

		_smallRuck = "rhsusf_falconii_coy";
		_medRuck = "rhsusf_assault_eagleaiii_coy";
		_armgRuck = "rhsusf_assault_eagleaiii_coy";
		_largeRuck = "rhsgref_wdl_alicepack";
		_medicRuck = "rhsusf_assault_eagleaiii_coy";
		_atRuck = "rhsgref_wdl_alicepack";
		_sniperRuck = "rhsusf_falconii_coy";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - USMC - Desert MARPAT

	case "usmc_marpat_d" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_FROG01_d"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_FROG01_d";
		_leaderUniform = "rhs_uniform_FROG01_d";
		_rpilotUniform = "rhs_uniform_FROG01_d";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_FROG01_d";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "lwh_helmet_marpatd" : {
				_rflmHelmetArray = ["rhsusf_lwh_helmet_marpatd"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_lwh_helmet_marpatd_headset";
				_slHelmet = "rhsusf_lwh_helmet_marpatd_ess";
				_tlHelmet = "rhsusf_lwh_helmet_marpatd_headset";
				_sniperHelmet = "rhs_booniehat2_marpatd";
			};
			case "mich_marpatd" : {
				_rflmHelmetArray = ["rhsusf_mich_helmet_marpatd","rhsusf_mich_helmet_marpatd_alt","rhsusf_mich_helmet_marpatd_norotos"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_mich_helmet_marpatd_alt_headset";
				_slHelmet = "rhsusf_mich_helmet_marpatd_norotos_headset";
				_tlHelmet = "rhsusf_mich_helmet_marpatd_headset";
				_sniperHelmet = "rhs_booniehat2_marpatwd";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_nsw"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_ut_pelt_nsw";
				_slHelmet = "rhsusf_opscore_ut_pelt_cam";
				_tlHelmet = "rhsusf_opscore_fg_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_ut_pelt_nsw";
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

		_rflmVest = "rhsusf_spc_rifleman";
		_gunnerVest = "rhsusf_spc_mg";
		_asstVest = "rhsusf_spc_teamleader";
		_glVest = "rhsusf_spc_teamleader";
		_medVest = "rhsusf_spc_corpsman";
		_pilotVest = "rhsusf_spc_crewman";
		_crewVest = "rhsusf_spc_crewman";
		_coyVest = "rhsusf_spc_light";
		_slVest = "rhsusf_spc_squadleader";
		_tlVest = "rhsusf_spc_patchless_radio";
		_sniperVest = "rhsusf_spc_marksman";

		// ===================== Rucks ====================

		_smallRuck = "rhsusf_falconii_coy";
		_medRuck = "rhsusf_assault_eagleaiii_coy";
		_armgRuck = "rhsusf_assault_eagleaiii_coy";
		_largeRuck = "rhsgref_wdl_alicepack";
		_medicRuck = "rhsusf_assault_eagleaiii_coy";
		_atRuck = "rhsgref_wdl_alicepack";
		_sniperRuck = "rhsusf_falconii_coy";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - USMC - MARSOC

	case "usmc_marsoc" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_g3_m81"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_g3_m81";
		_leaderUniform = "rhs_uniform_g3_m81";
		_rpilotUniform = "rhs_uniform_g3_m81";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_g3_m81";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mich_2000" : {
				_rflmHelmetArray = ["rhsusf_mich_bare_norotos","rhsusf_mich_bare_norotos_arc"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_mich_bare_norotos_headset";
				_slHelmet = "rhsusf_mich_bare_norotos_arc_alt";
				_tlHelmet = "rhsusf_mich_bare_norotos_arc_headset";
				_sniperHelmet = "rhsusf_mich_bare_norotos";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_fg_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_ut_pelt_nsw";
				_slHelmet = "rhsusf_opscore_fg_pelt_cam";
				_tlHelmet = "rhsusf_opscore_fg_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_fg";
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

		_rflmVest = "rhsusf_mbav_rifleman";
		_gunnerVest = "rhsusf_mbav_mg";
		_asstVest = "rhsusf_mbav_grenadier";
		_glVest = "rhsusf_mbav_grenadier";
		_medVest = "rhsusf_mbav_medic";
		_pilotVest = "rhsusf_mbav_light";
		_crewVest = "rhsusf_mbav_light";
		_coyVest = "rhsusf_mbav_rifleman";
		_slVest = "rhsusf_mbav_rifleman";
		_tlVest = "rhsusf_mbav_rifleman";
		_sniperVest = "rhsusf_mbav_rifleman";

		// ===================== Rucks ====================

		_smallRuck = "rhsusf_falconii_coy";
		_medRuck = "rhsusf_assault_eagleaiii_coy";
		_armgRuck = "rhsusf_assault_eagleaiii_coy";
		_largeRuck = "rhsgref_wdl_alicepack";
		_medicRuck = "rhsusf_assault_eagleaiii_coy";
		_atRuck = "rhsgref_wdl_alicepack";
		_sniperRuck = "rhsusf_falconii_coy";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - ACU - UCP

	case "acu_ucp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_acu_ucp"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_acu_ucp";
		_leaderUniform = "rhs_uniform_acu_ucp";
		_rpilotUniform = "rhs_uniform_acu_ucp";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_acu_ucp";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ach" : {
				_rflmHelmetArray = ["rhsusf_ach_helmet_ucp_norotos","rhsusf_ach_helmet_ucp_alt","rhsusf_ach_helmet_ucp"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_ach_helmet_headset_ucp_alt";
				_slHelmet = "rhsusf_ach_helmet_headset_ucp";
				_tlHelmet = "rhsusf_ach_helmet_headset_ucp_alt";
				_sniperHelmet = "rhsusf_ach_helmet_ucp_alt";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_paint_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_paint_pelt_nsw";
				_slHelmet = "rhsusf_opscore_paint_pelt_nsw_cam";
				_tlHelmet = "rhsusf_opscore_paint_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_paint";
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

		_rflmVest = "rhsusf_spcs_ucp_rifleman";
		_gunnerVest = "rhsusf_spcs_ucp_saw";
		_asstVest = "rhsusf_spcs_ucp_grenadier";
		_glVest = "rhsusf_spcs_ucp_grenadier";
		_medVest = "rhsusf_spcs_ucp_medic";
		_pilotVest = "rhsusf_spcs_ucp_crewman";
		_crewVest = "rhsusf_spcs_ucp_crewman";
		_coyVest = "rhsusf_spcs_ucp_squadleader";
		_slVest = "rhsusf_spcs_ucp_squadleader";
		_tlVest = "rhsusf_spcs_ucp_teamleader_alt";
		_sniperVest = "rhsusf_spcs_ucp_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_sgg";
		_medRuck = "rhsusf_assault_eagleaiii_ucp";
		_armgRuck = "rhsusf_assault_eagleaiii_ucp";
		_largeRuck = "rhsgref_hidf_alicepack";
		_medicRuck = "rhsusf_assault_eagleaiii_ucp";
		_atRuck = "B_AssaultPack_sgg";
		_sniperRuck = "B_AssaultPack_sgg";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh_od","rhsusf_shemagh2_od","rhsusf_oakley_goggles_clr","rhs_googles_yellow"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - ACU - OEFCP

	case "acu_oefcp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_acu_oefcp"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_acu_oefcp";
		_leaderUniform = "rhs_uniform_acu_oefcp";
		_rpilotUniform = "rhs_uniform_acu_oefcp";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_acu_oefcp";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ach" : {
				_rflmHelmetArray = ["rhsusf_ach_helmet_ocp_norotos","rhsusf_ach_helmet_ocp_alt","rhsusf_ach_helmet_ocp"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_ach_helmet_headset_ocp_alt";
				_slHelmet = "rhsusf_ach_helmet_headset_ocp";
				_tlHelmet = "rhsusf_ach_helmet_headset_ocp_alt";
				_sniperHelmet = "rhsusf_ach_helmet_camo_ocp";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_mc_cover_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_slHelmet = "rhsusf_opscore_mc_cover_pelt_cam";
				_tlHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_mc_cover";
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

		_rflmVest = "rhsusf_spcs_ocp_rifleman_alt";
		_gunnerVest = "rhsusf_spcs_ocp_saw";
		_asstVest = "rhsusf_spcs_ocp_grenadier";
		_glVest = "rhsusf_spcs_ocp_grenadier";
		_medVest = "rhsusf_spcs_ucp_medic";
		_pilotVest = "rhsusf_spcs_ocp_crewman";
		_crewVest = "rhsusf_spcs_ocp_crewman";
		_coyVest = "rhsusf_spcs_ocp_squadleader";
		_slVest = "rhsusf_spcs_ocp_squadleader";
		_tlVest = "rhsusf_spcs_ocp_teamleader";
		_sniperVest = "rhsusf_spcs_ocp_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_mcamo";
		_medRuck = "rhsusf_assault_eagleaiii_ocp";
		_armgRuck = "rhsusf_assault_eagleaiii_ocp";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "rhsusf_assault_eagleaiii_ocp";
		_atRuck = "B_AssaultPack_mcamo";
		_sniperRuck = "B_AssaultPack_mcamo";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_oakley_goggles_clr","rhs_googles_yellow"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - DELTA - MC

	case "g3_mc" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_g3_mc"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_g3_mc";
		_leaderUniform = "rhs_uniform_g3_mc";
		_rpilotUniform = "rhs_uniform_g3_mc";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_g3_mc";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "protech" : {
				_rflmHelmetArray = ["rhsusf_protech_helmet_rhino"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_protech_helmet_rhino";
				_slHelmet = "rhsusf_protech_helmet_rhino";
				_tlHelmet = "rhsusf_protech_helmet_rhino";
				_sniperHelmet = "rhsusf_protech_helmet_rhino";
			};
			case "opscore" : {
				_rflmHelmetArray = ["rhsusf_opscore_bk_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhsusf_bowman_cap";
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_slHelmet = "rhsusf_opscore_mc_cover_pelt_cam";
				_tlHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_mc_cover";
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

		_rflmVest = "rhsusf_plateframe_rifleman";
		_gunnerVest = "rhsusf_plateframe_machinegunner";
		_asstVest = "rhsusf_plateframe_grenadier";
		_glVest = "rhsusf_plateframe_grenadier";
		_medVest = "rhsusf_plateframe_medic";
		_pilotVest = "rhsusf_mbav_light";
		_crewVest = "rhsusf_mbav_light";
		_coyVest = "rhsusf_plateframe_teamleader";
		_slVest = "rhsusf_plateframe_teamleader";
		_tlVest = "rhsusf_plateframe_teamleader";
		_sniperVest = "rhsusf_plateframe_marksman";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_blk";
		_medRuck = "UK3CB_CW_US_B_LATE_B_RIF_04";
		_armgRuck = "UK3CB_CW_US_B_LATE_B_RIF_04";
		_largeRuck = "rhs_tortila_black";
		_medicRuck = "B_TacticalPack_blk";
		_atRuck = "B_AssaultPack_blk";
		_sniperRuck = "B_AssaultPack_blk";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = ["G_Bandanna_beast","G_Bandanna_blk","UK3CB_G_Balaclava","UK3CB_G_Balaclava2_BLK"];
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