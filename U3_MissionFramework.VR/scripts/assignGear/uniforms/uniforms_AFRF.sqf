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

	// RHS - Russian VDV - EMR

	case "vdv_emr" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vdv_emr"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "rhs_uniform_vdv_emr";
		_rpilotUniform = "rhs_uniform_vdv_emr";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vdv_emr";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b28" : {
				_rflmHelmetArray = ["rhs_6b28","rhs_6b28_ess","rhs_6b28_green","rhs_6b28_green_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_6b28";
				_slHelmet = "rhs_6b28_ess";
				_tlHelmet = "rhs_6b28_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b47" : {
				_rflmHelmetArray = ["rhs_6b47","rhs_6b47_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_6b47";
				_slHelmet = "rhs_6b47_ess";
				_tlHelmet = "rhs_6b47_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b71m" : {
				_rflmHelmetArray = ["rhs_6b7_1m","rhs_6b7_1m_ess","rhs_6b7_1m_emr","rhs_6b7_1m_emr_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_6b7_1m";
				_slHelmet = "rhs_6b7_1m_emr_ess";
				_tlHelmet = "rhs_6b7_1m_emr_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
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

		_rflmVest = "rhs_6b23_6sh116";
		_gunnerVest = "rhs_6b23_digi_6sh92";
		_glVest = "rhs_6b23_6sh116_vog";
		_medVest = "rhs_6b23_digi_6sh92";
		_pilotVest = "rhs_6b23_digi_crew";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_digi_6sh92_headset";
		_tlVest = "rhs_6b23_digi_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian VDV - EMR Desert

	case "vdv_emr_d" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vdv_emr_des"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vdv_emr_des";
		_leaderUniform = "rhs_uniform_vdv_emr_des";
		_rpilotUniform = "rhs_uniform_vdv_emr_des";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vdv_emr_des";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b71m" : {
				_rflmHelmetArray = ["hg_6b7_des"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "hg_6b7_des";
				_slHelmet = "hg_6b7_des_ess";
				_tlHelmet = "hg_6b7_des_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
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

		_rflmVest = "v6b23tan";
		_gunnerVest = "v6b23tan";
		_glVest = "v6b23tanvog";
		_medVest = "v6b23tan";
		_pilotVest = "rhs_6b23_ML";
		_crewVest = "rhs_6b23_ML";
		_coyVest = "v6b23tan";
		_slVest = "v6b23tan";
		_tlVest = "v6b23tanvog";
		_sniperVest = "v6b23tan";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_cbr";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_FieldPack_cbr";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
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
			case "6b27m" : {
				_rflmHelmetArray = ["rhs_6b27m"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_helm";
				_slHelmet = "rhs_6b27m_ess";
				_tlHelmet = "rhs_6b27m_ess";
				_sniperHelmet = "rhs_Booniehat_flora";
			};
			case "6b71m" : {
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
				_coyHelmet = "rhs_fieldcap_helm";
				_slHelmet = "rhs_6b7_1m_flora_ns3";
				_tlHelmet = "rhs_6b7_1m_flora_ns3";
				_sniperHelmet = "rhs_Booniehat_flora";
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
		_gunnerVest = "rhs_6b13_Flora";
		_glVest = "rhs_6b13_Flora_6sh92_vog";
		_medVest = "rhs_6b23_digi_6sh92";
		_pilotVest = "rhs_6b13_Flora";
		_crewVest = "rhs_6b13_Flora";
		_coyVest = "rhs_6b13_Flora_crewofficer";
		_slVest = "rhs_6b13_Flora_6sh92_radio";
		_tlVest = "rhs_6b13_Flora_6sh92_vog";
		_sniperVest = "rhs_6b13_Flora";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian VMF - FLORA

	case "vmf_flora" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vmf_flora"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vmf_flora";
		_leaderUniform = "rhs_uniform_vmf_flora";
		_rpilotUniform = "rhs_uniform_vmf_flora";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vmf_flora";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b27m" : {
				_rflmHelmetArray = ["rhs_6b27m"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_helm";
				_slHelmet = "rhs_6b27m_ess";
				_tlHelmet = "rhs_6b27m_ess";
				_sniperHelmet = "rhs_Booniehat_flora";
			};
			case "6b71m" : {
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
				_coyHelmet = "rhs_fieldcap_helm";
				_slHelmet = "rhs_6b7_1m_flora";
				_tlHelmet = "rhs_6b7_1m_flora";
				_sniperHelmet = "rhs_Booniehat_flora";
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

		_rflmVest = "rhs_6b23_6sh116_flora";
		_gunnerVest = "rhs_6b23_rifleman";
		_glVest = "rhs_6b23_6sh116_vog_flora";
		_medVest = "rhs_6b23_medic";
		_pilotVest = "rhs_6b23";
		_crewVest = "rhs_6b23_crew";
		_coyVest = "rhs_6b23_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_6sh92_radio";
		_tlVest = "rhs_6b23_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_sniper";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian OMON - IZLOM

	case "izlom" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_mvd_izlom"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_mvd_izlom";
		_leaderUniform = "rhs_uniform_mvd_izlom";
		_rpilotUniform = "rhs_uniform_mvd_izlom";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_mvd_izlom";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "altyn" : {
				_rflmHelmetArray = ["rhs_altyn_novisor"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_altyn_novisor";
				_slHelmet = "rhs_altyn_novisor_ess";
				_tlHelmet = "rhs_altyn_novisor_ess";
				_sniperHelmet = "rhs_altyn_novisor";
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

		_rflmVest = "rhs_6b23_6sh116_flora";
		_gunnerVest = "rhs_6b23_rifleman";
		_glVest = "rhs_6b23_6sh116_vog_flora";
		_medVest = "rhs_6b23_medic";
		_pilotVest = "rhs_6b23";
		_crewVest = "rhs_6b23_crew";
		_coyVest = "rhs_6b23_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_6sh92_radio";
		_tlVest = "rhs_6b23_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_sniper";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian Spetsnaz - EMR

	case "spetsnaz" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_gorka_r_g"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "rhs_uniform_gorka_r_g";
		_rpilotUniform = "rhs_uniform_vdv_emr";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_gorka_r_g";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "none" : {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
			case "6b47" : {
				_rflmHelmetArray = ["rhs_6b47","rhs_6b47_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_6b47";
				_slHelmet = "rhs_6b47_ess";
				_tlHelmet = "rhs_6b47_ess";
				_sniperHelmet = "rhs_Booniehat_digi";
			};
			case "6b71m" : {
				_rflmHelmetArray = ["rhs_6b7_1m_olive"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_6b7_1m";
				_slHelmet = "rhs_6b7_1m";
				_tlHelmet = "rhs_6b7_1m";
				_sniperHelmet = "rhs_beanie_green";
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
		_gunnerVest = "rhs_6b23_digi";
		_glVest = "rhs_6b23_6sh116_vog";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_Spetsnaz";
		_slVest = "rhs_6b23_digi_6sh92_headset_spetsnaz";
		_tlVest = "rhs_6b23_digi_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian VDV - VSR

	case "vdv_vsr" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhsgref_uniform_vsr"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_vsr";
		_leaderUniform = "rhsgref_uniform_vsr";
		_rpilotUniform = "rhsgref_uniform_vsr";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhsgref_uniform_vsr";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ssh68" : {
				_rflmHelmetArray = ["rhsgref_ssh68_vsr"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_vsr";
				_slHelmet = "rhsgref_ssh68_vsr";
				_tlHelmet = "rhsgref_ssh68_vsr";
				_sniperHelmet = "rhs_fieldcap_vsr";
			};
			case "6b26" : {
				_rflmHelmetArray = ["rhs_6b26_green","rhs_6b26"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_vsr";
				_slHelmet = "rhs_6b26_ess_green";
				_tlHelmet = "rhs_6b26_ess";
				_sniperHelmet = "rhs_fieldcap_vsr";
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

		_rflmVest = "rhs_6b5_rifleman_vsr";
		_gunnerVest = "rhs_6b5_vsr";
		_glVest = "rhs_6b5_rifleman_vsr";
		_medVest = "rhs_6b5_medic_vsr";
		_pilotVest = "rhsgref_6b23_ttsko_mountain";
		_crewVest = "rhsgref_6b23_ttsko_mountain";
		_coyVest = "rhs_6b5_officer_vsr";
		_slVest = "rhs_6b5_rifleman_vsr";
		_tlVest = "rhs_6b5_rifleman_vsr";
		_sniperVest = "rhs_6b5_sniper_vsr";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = ["rhs_balaclava","rhs_balaclava1_olive","rhs_scarf"];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	// RHS - Russian MSV - Afghan

	case "msv_afganka" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_gorka_1_a"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewUniform = "rhsgref_uniform_vsr";
		_leaderUniform = "rhs_uniform_gorka_1_a";
		_rpilotUniform = "rhsgref_uniform_vsr";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_gorka_1_a";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ssh68" : {
				_rflmHelmetArray = ["rhs_ssh68"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom;
				_navalcrewmanHelmet = "rhs_beret_vdv1";
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_khk";
				_slHelmet = "rhs_ssh68";
				_tlHelmet = "rhs_ssh68";
				_sniperHelmet = "rhs_fieldcap_khk";
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

		_rflmVest = "rhs_6b5_rifleman_khaki";
		_gunnerVest = "rhs_6b5_khaki";
		_glVest = "rhs_6b5_rifleman_khaki";
		_medVest = "rhs_6b5_medic_khaki";
		_pilotVest = "rhsgref_6b23_khaki";
		_crewVest = "rhsgref_6b23_khaki";
		_coyVest = "rhs_6b5_officer_khaki";
		_slVest = "rhs_6b5_rifleman_khaki";
		_tlVest = "rhs_6b5_rifleman_khaki";
		_sniperVest = "rhs_6b5_sniper_khaki";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_UN_B_B_ASS";
		_medRuck = "umbts_emr";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_medic_bag";
		_atRuck = "rhs_rpg_empty";
		_sniperRuck = "UK3CB_UN_B_B_ASS";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

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