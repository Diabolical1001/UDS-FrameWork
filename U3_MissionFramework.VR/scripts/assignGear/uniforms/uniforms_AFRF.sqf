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

	// RHS - Russian VDV - EMR - VKPO

	case "vdv_emr_vkpo" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vkpo_gloves","rhs_uniform_vkpo_gloves_alt"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vkpo_gloves";
		_leaderUniform = "rhs_uniform_vkpo_gloves_alt";
		_rpilotUniform = "rhs_uniform_vkpo_gloves";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vkpo_gloves";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b47" : {
				_rflmHelmetArray = ["rhs_6b47_emr_1","rhs_6b47_emr_1","rhs_6b47_emr_2","rhs_6b47_6B50"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b47_6m2_1";
				_tlHelmet = "rhs_6b47_6m2_1";
				_sniperHelmet = "rhs_6m2_1";
			};
			case "6b7_1m" : {
				_rflmHelmetArray = ["rhs_6b7_1m_emr","rhs_6b7_1m","rhs_6b7_1m_emr_ess","rhs_6b7_1m_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b7_1m_emr_ess";
				_tlHelmet = "rhs_6b7_1m_emr_ess";
				_sniperHelmet = "rhs_6m2_1";
			};
			case "6b28" : {
				_rflmHelmetArray = ["rhs_6b28_green","rhs_6b28_green_ess","rhs_6b28","rhs_6b28_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b28_green_ess";
				_tlHelmet = "rhs_6b28_green_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b27" : {
				_rflmHelmetArray = ["rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b27m_digi","rhs_6b27m_digi_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b27m_green_ess";
				_tlHelmet = "rhs_6b27m_digi_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b26" : {
				_rflmHelmetArray = ["rhs_6b26_green","rhs_6b26_ess_green","rhs_6b26_digi","rhs_6b26_digi_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b26_ess_green";
				_tlHelmet = "rhs_6b26_green";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "altyn" : {
				_rflmHelmetArray = ["rhs_altyn_novisor","rhs_altyn_novisor_ess","rhs_altyn"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_altyn_novisor";
				_tlHelmet = "rhs_altyn_novisor_ess";
				_sniperHelmet = "rhs_altyn_novisor";
			};
			case "beret" : {
				_rflmHelmetArray = ["rhs_beret_vdv1","rhs_beret_vdv2","rhs_beret_vdv3"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_beret_vdv1"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_beret_vdv3";
				_tlHelmet = "rhs_beret_vdv1";
				_sniperHelmet = "rhs_beret_vdv1";
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

		_rflmVest = "rhs_6b45_rifleman";
		_gunnerVest = "rhs_6b45_mg";
		_asstVest = "rhs_6b45_grn";
		_glVest = "rhs_6b45_grn";
		_medVest = "rhs_6b45_rifleman_2";
		_pilotVest = "rhs_6b45_light";
		_crewVest = "rhs_6b45_light";
		_coyVest = "rhs_6b45_off";
		_slVest = "rhs_6b45_off";
		_tlVest = "rhs_6b45_off";
		_sniperVest = "rhs_6b45_rifleman_2";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_rgr";
		_medRuck = "rhs_rk_sht_30_emr";
		_armgRuck = "rhs_rd54_emr1";
		_largeRuck = "rhs_tortila_emr";
		_medicRuck = "rhs_rd54_emr1";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_AssaultPack_rgr";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian VDV - RECON

	case "vdv_recon" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_gorka_r_g_gloves","rhs_uniform_gorka_r_y_gloves"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vkpo_gloves";
		_leaderUniform = "rhs_uniform_gorka_r_g_gloves";
		_rpilotUniform = "rhs_uniform_gorka_r_y_gloves";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_gorka_r_y_gloves";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b47" : {
				_rflmHelmetArray = ["rhs_6b47_emr_1","rhs_6b47_emr_1","rhs_6b47_emr_2","rhs_6b47_6B50"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b47_6m2_1";
				_tlHelmet = "rhs_6b47_6m2_1";
				_sniperHelmet = "rhs_6m2_1";
			};
			case "6b7_1m" : {
				_rflmHelmetArray = ["rhs_6b7_1m_olive"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b7_1m_olive";
				_tlHelmet = "rhs_6b7_1m_olive";
				_sniperHelmet = "rhs_6m2_1";
			};
			case "6b28" : {
				_rflmHelmetArray = ["rhs_6b28_green","rhs_6b28_green_ess","rhs_6b28","rhs_6b28_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b28_green_ess";
				_tlHelmet = "rhs_6b28_green_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b27" : {
				_rflmHelmetArray = ["rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b27m_digi","rhs_6b27m_digi_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b27m_green_ess";
				_tlHelmet = "rhs_6b27m_digi_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b26" : {
				_rflmHelmetArray = ["rhs_6b26_green","rhs_6b26_ess_green","rhs_6b26_digi","rhs_6b26_digi_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_6b26_ess_green";
				_tlHelmet = "rhs_6b26_green";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "altyn" : {
				_rflmHelmetArray = ["rhs_altyn_novisor","rhs_altyn_novisor_ess","rhs_altyn"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_altyn_novisor";
				_tlHelmet = "rhs_altyn_novisor_ess";
				_sniperHelmet = "rhs_altyn_novisor";
			};
			case "beret" : {
				_rflmHelmetArray = ["rhs_beret_vdv1","rhs_beret_vdv2","rhs_beret_vdv3"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_beret_vdv1"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_beret_vdv3";
				_tlHelmet = "rhs_beret_vdv1";
				_sniperHelmet = "rhs_beret_vdv1";
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

		_rflmVest = "rhs_6b23_digi_6sh92_spetsnaz2";
		_gunnerVest = "rhs_6b23_digi_rifleman";
		_asstVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_glVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_Spetsnaz";
		_slVest = "rhs_6b23_digi_6sh92_headset_spetsnaz";
		_tlVest = "rhs_6b23_digi_6sh92_Spetsnaz";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_rgr";
		_medRuck = "rhs_rk_sht_30_olive";
		_armgRuck = "rhs_rk_sht_30_olive";
		_largeRuck = "rhs_tortila_olive";
		_medicRuck = "rhs_rd54_vest_flora1";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_AssaultPack_rgr";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian VDV - Mountain Flora

	case "vdv_mountain_flora" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vdv_mflora"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vdv_mflora";
		_leaderUniform = "rhs_uniform_vdv_mflora";
		_rpilotUniform = "rhs_uniform_vdv_mflora";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vdv_mflora";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b47" : {
				_rflmHelmetArray = ["rhs_6b27m_ml_bala","rhs_6b27m_ML_ess_bala"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_vdv1";
				_slHelmet = "rhs_6b27m_ML_ess_bala";
				_tlHelmet = "rhs_6b27m_ml_bala";
				_sniperHelmet = "rhs_beret_vdv1";
			};
			case "beret" : {
				_rflmHelmetArray = ["rhs_beret_vdv1","rhs_beret_vdv2","rhs_beret_vdv3"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_beret_vdv1"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_vkpo_cap";
				_slHelmet = "rhs_beret_vdv3";
				_tlHelmet = "rhs_beret_vdv1";
				_sniperHelmet = "rhs_beret_vdv1";
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

		_rflmVest = "rhs_6b23_ML_6sh92";
		_gunnerVest = "rhs_6b23_ML_rifleman";
		_asstVest = "rhs_6b23_ML_6sh92_vog";
		_glVest = "rhs_6b23_ML_6sh92_vog";
		_medVest = "rhs_6b23_ML_medic";
		_pilotVest = "rhs_6b23_ML_crew";
		_crewVest = "rhs_6b23_ML_crew";
		_coyVest = "rhs_6b23_ML_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_ML_6sh92_headset";
		_tlVest = "rhs_6b23_ML_6sh92_radio";
		_sniperVest = "rhs_6b23_ML_sniper";

		// ===================== Rucks ====================

		_smallRuck = "rhs_rd54";
		_medRuck = "UK3CB_UN_B_B_RIF";
		_armgRuck = "UK3CB_UN_B_B_RIF";
		_largeRuck = "rhs_tortila_khaki";
		_medicRuck = "UK3CB_UN_B_B_RIF";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "rhs_rd54";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_facewear_6m2_1"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian MSV - FLORA

	case "msv_flora" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_flora"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_flora";
		_leaderUniform = "rhs_uniform_flora";
		_rpilotUniform = "rhs_uniform_flora";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_flora";

		// ==================== Headgear ==================

		switch (_headgear) do {

			case "6b7_1m" : {
				_rflmHelmetArray = ["rhs_6b7_1m_flora"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap";
				_slHelmet = "rhs_6b7_1m_flora";
				_tlHelmet = "rhs_6b7_1m_flora";
				_sniperHelmet = "rhs_Booniehat_flora";
			};
			case "6b28" : {
				_rflmHelmetArray = ["rhs_6b28_flora","rhs_6b28_flora_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6b48"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap";
				_slHelmet = "rhs_6b28_flora";
				_tlHelmet = "rhs_6b28_flora_ess";
				_sniperHelmet = "rhs_Booniehat_flora";
			};
			case "6b27" : {
				_rflmHelmetArray = ["rhs_6b27m","rhs_6b27m_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap";
				_slHelmet = "rhs_6b27m";
				_tlHelmet = "rhs_6b27m_ess";
				_sniperHelmet = "rhs_Booniehat_flora";
			};
			case "6b26" : {
				_rflmHelmetArray = ["rhs_6b26","rhs_6b26_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap";
				_slHelmet = "rhs_6b26";
				_tlHelmet = "rhs_6b26_ess";
				_sniperHelmet = "rhs_Booniehat_flora";
			};
			case "beret" : {
				_rflmHelmetArray = ["rhs_beret_mvd"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_beret_mvd"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_mvd";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap";
				_slHelmet = "rhs_beret_mvd";
				_tlHelmet = "rhs_beret_mvd";
				_sniperHelmet = "rhs_beret_mvd";
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

		_rflmVest = "rhs_6b13_Flora_6sh92";
		_gunnerVest = "rhs_6b13_Flora_6sh92";
		_asstVest = "rhs_6b13_Flora_6sh92_vog";
		_glVest = "rhs_6b13_Flora_6sh92_vog";
		_medVest = "rhs_6b13_Flora_6sh92";
		_pilotVest = "rhs_6b13_Flora";
		_crewVest = "rhs_6b13_Flora";
		_coyVest = "rhs_6b13_Flora_6sh92_radio";
		_slVest = "rhs_6b13_Flora_6sh92_headset_mapcase";
		_tlVest = "rhs_6b13_Flora_6sh92_radio";
		_sniperVest = "rhs_6b13_Flora";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_rgr";
		_medRuck = "rhs_assault_umbts";
		_armgRuck = "rhs_rd54_flora2";
		_largeRuck = "rhs_tortila_olive";
		_medicRuck = "rhs_assault_umbts";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_AssaultPack_rgr";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian SPNZ

	case "spnz" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_6sh122_gloves_v2","rhs_uniform_6sh122_gloves_v1"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_6sh122_gloves_v2";
		_leaderUniform = "rhs_uniform_6sh122_gloves_v2";
		_rpilotUniform = "rhs_uniform_6sh122_gloves_v2";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_6sh122_gloves_v2";

		// ==================== Headgear ==================

		switch (_headgear) do {

			case "6m21" : {
				_rflmHelmetArray = ["rhs_6m2_1"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_6m2_1"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_6m2_1";
				_slHelmet = "rhs_6m2_1";
				_tlHelmet = "rhs_6m2_1";
				_sniperHelmet = "rhs_6m2_1";
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

		_rflmVest = "rhs_6sh117_rifleman";
		_gunnerVest = "rhs_6sh117_ar";
		_asstVest = "rhs_6sh117_grn";
		_glVest = "rhs_6sh117_grn";
		_medVest = "rhs_6sh117_rifleman";
		_pilotVest = "rhs_6b45_light";
		_crewVest = "rhs_6b45_light";
		_coyVest = "rhs_6sh117_nco_azart";
		_slVest = "rhs_6sh117_nco_azart";
		_tlVest = "rhs_6sh117_nco";
		_sniperVest = "rhs_6sh117_svd";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_rgr";
		_medRuck = "rhs_rk_sht_30_emr";
		_armgRuck = "rhs_rd54_emr1";
		_largeRuck = "rhs_tortila_emr";
		_medicRuck = "rhs_rd54_emr1";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_AssaultPack_rgr";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_ANPVS7";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian - Chechn - VSR - VDV

	case "chechn_vdv" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_afghanka_vsr_1","rhs_uniform_afghanka_vsr_2"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_6sh122_gloves_v2";
		_leaderUniform = "rhs_uniform_6sh122_gloves_v2";
		_rpilotUniform = "rhs_uniform_6sh122_gloves_v2";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_afghanka_vsr_2";

		// ==================== Headgear ==================

		switch (_headgear) do {

			case "ssh68" : {
				_rflmHelmetArray = ["rhsgref_ssh68_vsr","rhs_ssh68_2"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_vsr";
				_slHelmet = "rhsgref_ssh68_vsr";
				_tlHelmet = "rhs_ssh68_2";
				_sniperHelmet = "";
			};
			case "6b26" : {
				_rflmHelmetArray = ["rhs_6b26_green","rhs_6b26_ess_green"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_vsr";
				_slHelmet = "rhs_6b26_green";
				_tlHelmet = "rhs_6b26_ess_green";
				_sniperHelmet = "";
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

		_rflmVest = "rhs_6b3_AK";
		_gunnerVest = "rhs_6b3_RPK";
		_asstVest = "rhs_6b3_VOG";
		_glVest = "rhs_6b3_VOG_2";
		_medVest = "rhs_6b3_AK_2";
		_pilotVest = "rhs_6b3_holster";
		_crewVest = "rhs_6b3_holster";
		_coyVest = "rhs_6b3_off";
		_slVest = "rhs_6b3_R148";
		_tlVest = "rhs_6b3_off";
		_sniperVest = "rhs_6b3";

		// ===================== Rucks ====================

		_smallRuck = "rhs_rd54_vest_flora2";
		_medRuck = "UK3CB_UN_B_B_RIF";
		_armgRuck = "rhs_sidor";
		_largeRuck = "rhsgref_ttsko_alicepack";
		_medicRuck = "UK3CB_B_Tactical_Backpack";
		_atRuck = "rhs_rpg_6b3";
		_sniperRuck = "rhs_rd54_vest_flora2";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_ANPVS7";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian - Afghanka

	case "afghanka" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_afghanka","rhs_uniform_afghanka_boots"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_afghanka";
		_leaderUniform = "rhs_uniform_afghanka_winter";
		_rpilotUniform = "rhs_uniform_afghanka";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_afghanka";

		// ==================== Headgear ==================

		switch (_headgear) do {

			case "ssh68" : {
				_rflmHelmetArray = ["rhs_ssh68_2"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_khk";
				_slHelmet = "rhs_ssh68_2";
				_tlHelmet = "rhs_ssh68_2";
				_sniperHelmet = "rhs_pilotka";
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

		_rflmVest = "rhs_6b2_lifchik";
		_gunnerVest = "rhs_6b2_RPK";
		_asstVest = "rhs_lifchik_vog";
		_glVest = "rhs_belt_AK_GL";
		_medVest = "rhs_lifchik";
		_pilotVest = "rhs_belt_AK";
		_crewVest = "rhs_belt_AK";
		_coyVest = "rhs_gear_OFF";
		_slVest = "rhs_lifchik_NCO";
		_tlVest = "rhs_lifchik_NCO";
		_sniperVest = "rhs_6b2_SVD";

		// ===================== Rucks ====================

		_smallRuck = "rhs_rd54";
		_medRuck = "UK3CB_B_Alice_K";
		_armgRuck = "rhs_sidor";
		_largeRuck = "rhssaf_alice_smb";
		_medicRuck = "UK3CB_B_Alice_K";
		_atRuck = "rhs_rpg_6b2";
		_sniperRuck = "rhs_rd54";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_ANPVS7";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
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