// =======================================================================
// AssignGear Radios
// by UDS
// - Defines all of the radio classes used by TFAR
// - Cases: _radioSelection - rhs_us, rhs_ussmall, rhs_rus, rhs_russmall, csat, nato, aaf, ins
// =======================================================================
// Declares variables

private ["_squadRadio","_airRadioRuck","_radioRuck","_diverRadioRuck","_uavRuck","_uavTool"];

// =======================================================================

switch (_radioSelection) do {

	case "rhs_usmc_w" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "uds_TFAR_rt1523g_big_MARPAT_Woodlaand";
		_diverRadioRuck = "uds_TFAR_rt1523g_big_MARPAT_Woodlaand";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "rhs_usmc_d" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "uds_TFAR_rt1523g_big_MARPAT_Desert";
		_diverRadioRuck = "uds_TFAR_rt1523g_big_MARPAT_Desert";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "rhs_socom_m81" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "uds_TFAR_rt1523g_big_M81";
		_diverRadioRuck = "uds_TFAR_rt1523g_big_M81";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};
	// woodland
	case "rhs_us_ucp" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "uds_TFAR_rt1523g_big_UCP";
		_diverRadioRuck = "uds_TFAR_rt1523g_big_UCP";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};
	// multicam
	case "rhs_us_ocp" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "TFAR_rt1523g_big_rhs";
		_diverRadioRuck = "TFAR_rt1523g_big_rhs";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "rhs_rus" : {
		_squadRadio = "TFAR_fadak";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "rhs_r148_tfar";
		_diverRadioRuck = "rhs_r148_tfar";
		_uavRuck = "O_UAV_01_backpack_F";
		_uavTool = "O_UavTerminal";
	};

	case "csat" : {
		_squadRadio = "TFAR_fadak";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "tf_mr3000";
		_diverRadioRuck = "tf_mr3000";
		_uavRuck = "O_UAV_01_backpack_F";
		_uavTool = "O_UavTerminal";
	};

	case "nato" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "TFAR_rt1523g_big_rhs";
		_diverRadioRuck = "TFAR_rt1523g_big_rhs";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "baf_mtp" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "UK3CB_BAF_B_Bergen_MTP_Radio_L_B";
		_diverRadioRuck = "UK3CB_BAF_B_Bergen_MTP_Radio_L_B";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "baf_wd" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "UK3CB_BAF_B_Bergen_DPMW_JTAC_A";
		_diverRadioRuck = "UK3CB_BAF_B_Bergen_DPMW_JTAC_A";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "baf_d" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "UK3CB_BAF_B_Bergen_DDPM_JTAC_A";
		_diverRadioRuck = "UK3CB_BAF_B_Bergen_DDPM_JTAC_A";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "bw_fleck" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "TFAR_rt1523g_big_bwmod";
		_diverRadioRuck = "TFAR_rt1523g_big_bwmod";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "bw_trop" : {
		_squadRadio = "TFAR_anprc152";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "TFAR_rt1523g_big_bwmod_tropen";
		_diverRadioRuck = "TFAR_rt1523g_big_bwmod_tropen";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "aaf" : {
		_squadRadio = "TFAR_anprc148jem";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "TFAR_anprc155";
		_diverRadioRuck = "TFAR_anprc155";
		_uavRuck = "I_UAV_01_backpack_F";
		_uavTool = "I_UavTerminal";
	};

	case "ins" : {
		_squadRadio = "TFAR_anprc148jem";
		_airRadioRuck = "TFAR_mr6000l";
		_radioRuck = "UK3CB_B_I_Assault_camo_Radio";
		_diverRadioRuck = "UK3CB_B_I_Assault_camo_Radio";
		_uavRuck = "I_UAV_01_backpack_F";
		_uavTool = "I_UavTerminal";
	};

	case "sog_us" : {
		_squadRadio = "vn_b_item_radio_urc10";
		_airRadioRuck = "vn_b_pack_lw_06";
		_radioRuck = "vn_b_pack_lw_06";
		_diverRadioRuck = "vn_b_pack_lw_06";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	case "sog_vn" : {
		_squadRadio = "vn_o_item_radio_m252";
		_airRadioRuck = "vn_o_pack_t884_01";
		_radioRuck = "vn_o_pack_t884_01";
		_diverRadioRuck = "vn_o_pack_t884_01";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};

	default {
		_squadRadio = "";
		_airRadioRuck = "";
		_radioRuck = "";
		_diverRadioRuck = "";
		_uavRuck = "";
		_uavTool = "";
	};
};

// =======================================================================
