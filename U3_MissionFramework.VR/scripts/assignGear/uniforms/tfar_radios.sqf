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

	case "rhs_us" : {
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