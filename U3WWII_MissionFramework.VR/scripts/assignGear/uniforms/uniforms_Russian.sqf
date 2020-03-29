// =======================================================================
// AssignGear - Uniforms
// by UDS
// - Defines all of the wearable items to be used by the assignGear script.
// - Cases: usmc_marpat_wd, usmc_marpat_d, usa_airborne_ocp, usa_airborne_ucp, usa_army_acu, ranger_m81_g3
// =======================================================================
// Declares variables

private [
"_insignia",
"_rflmUniformArray","_rflmRandom","_rflmUniform","_crewCommanderUniform","_crewUniform","_coyUniform","_slUniform","_tlUniform","_medicUniform","_pilotUniform","_sniperUniform",
"_rflmHelmetArray","_rflmHRandom","_rflmHelmet","_crewcomHelmet","_crewHelmet","_pilotHelmet","_coyHelmet","_slHelmet","_tlHelmet","_medHelmet","_sniperHelmet",
"_rflmvestOne","_rflmvestTwo","_rflmvestThree","_rflmvestFour","_rflmvestFive","_gunnerVest","_medicVest","_crewcomVest","_crewVest","_pilotVest","_coyVest","_slVest","_tlVest","_sniperVest",
"_smallRuck","_mediumRuck","_largeRuck","_medicRuck","_atRuck","_sniperRuck","_fireRuck","_parachute",
"_gogglesArray","_gogglesRandom","_goggles"
];

// =======================================================================

_insignia = "";

switch (_camoPattern) do {

	// Field Gray Wehrmacht
	case "rkka_summer" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_LIB_SOV_Strelok_summer"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "U_LIB_SOV_Tank_leutenant";
		_crewUniform = "U_LIB_SOV_Tank_ryadovoi";
		_coyUniform = "U_LIB_SOV_Kapitan_summer";
		_slUniform = "U_LIB_SOV_Sergeant";
		_tlUniform = "U_LIB_SOV_Efreitor_summer";
		_medicUniform = "U_LIB_SOV_Efreitor_summer";
		_pilotUniform = "U_LIB_SOV_Pilot";
		_sniperUniform = "U_LIB_SOV_Sniper";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "rkka_h_summer" : {
				_rflmHelmetArray = ["H_LIB_SOV_RA_Helmet","H_LIB_SOV_RA_PrivateCap"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "H_LIB_SOV_RA_OfficerCap";
				_crewHelmet = "H_LIB_SOV_TankHelmet";
				_pilotHelmet = "H_LIB_SOV_PilotHelmet";
				_coyHelmet = "H_LIB_SOV_RA_OfficerCap";
				_slHelmet = "H_LIB_SOV_RA_Helmet";
				_tlHelmet = "H_LIB_SOV_RA_Helmet";
				_medHelmet = "H_LIB_SOV_RA_PrivateCap";
				_sniperHelmet = "";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "";
				_crewHelmet = "";
				_pilotHelmet = "";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_medHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmvestOne = "V_LIB_SOV_RA_MosinBelt";
		_rflmvestTwo = "V_LIB_SOV_RAZV_SVTBelt";
		_rflmvestThree = "V_LIB_SOV_RAZV_SVTBelt";
		_rflmvestFour = "V_LIB_SOV_RA_PPShBelt";
		_rflmvestFive = "V_LIB_SOV_RAZV_PPShBelt_Mag";
		_gunnerVest = "V_LIB_SOV_RAZV_MGBelt_Kit";
		_medicVest = "V_LIB_SOV_RA_MosinBelt";
		_crewcomVest = "V_LIB_SOV_RAZV_OfficerVest";
		_crewVest = "V_LIB_SOV_RAZV_MGBelt";
		_pilotVest = "V_LIB_GER_OfficerBelt";
		_coyVest = "V_LIB_SOV_RAZV_OfficerVest";
		_slVest = "V_LIB_SOV_RAZV_OfficerVest";
		_tlVest = "V_LIB_SOV_RAZV_SVTBelt";
		_sniperVest = "V_LIB_SOV_RAZV_MGBelt";

		// ===================== Rucks ====================

		_smallRuck = "B_LIB_SOV_RA_Rucksack_Green";
		_mediumRuck = "B_LIB_SOV_RA_MGAmmoBag_Empty";
		_largeRuck = "B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green";
		_medicRuck = "B_LIB_SOV_RA_MedicalBag_Empty";
		_atRuck = "B_LIB_US_RocketBag_Empty";
		_sniperRuck = "B_LIB_SOV_RA_Rucksack_Green";
		_fireRuck = "B_LIB_US_M2Flamethrower";
		_parachute = "B_LIB_SOV_RA_Paradrop";

		// =================== Goggles ===================

		_gogglesArray = [""]; // "G_LIB_GER_Gloves4","G_LIB_Headwrap","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Watch2","G_LIB_Watch2","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4"
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};
#include "default.sqf"
};