// =======================================================================
// AssignGear Radios
// by UDS
// - Defines all of the radio classes used by TFAR
// - Cases: _radioSelection - rhs_us, rhs_ussmall, rhs_rus, rhs_russmall, csat, nato, aaf, ins
// =======================================================================
// Declares variables

private ["_squadRadio","_radioRuck"];

// =======================================================================

switch (_radioSelection) do {

	case "german" : {
		_squadRadio = "TFAR_anprc152";
		_radioRuck = "UDS_tf_Torn";
	};

	case "russian" : {
		_squadRadio = "TFAR_fadak";
		_radioRuck = "UDS_tf_rbm1";
	};

	case "allies" : {
		_squadRadio = "TFAR_anprc148jem";
		_radioRuck = "UDS_tf_scr300";
	};

	default {
		_squadRadio = "";
		_radioRuck = "";
	};
};

// =======================================================================