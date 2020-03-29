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
	case "m43_feld_grau" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_LIB_GER_Recruit","U_LIB_GER_Schutze","U_LIB_GER_Soldier3","U_LIB_GER_Soldier2","U_LIB_GER_MG_schutze"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "U_LIB_GER_Tank_crew_leutnant";
		_crewUniform = "U_LIB_GER_Tank_crew_private";
		_coyUniform = "U_LIB_GER_Oberst";
		_slUniform = "U_LIB_GER_Unterofficer";
		_tlUniform = "U_LIB_GER_Oberschutze";
		_medicUniform = "U_LIB_GER_Medic";
		_pilotUniform = "U_LIB_GER_LW_pilot";
		_sniperUniform = "U_LIB_GER_Soldier3";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m42" : {
				_rflmHelmetArray = ["H_LIB_GER_Helmet","H_LIB_GER_Helmet_net","H_LIB_GER_Helmet_ns","H_LIB_GER_Helmet_os","H_LIB_GER_Helmet_net_painted","H_LIB_GER_Helmet_ns_painted","H_LIB_GER_Helmet_painted"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "H_LIB_GER_TankOfficerCap";
				_crewHelmet = "H_LIB_GER_TankPrivateCap";
				_pilotHelmet = "H_LIB_GER_LW_PilotHelmet";
				_coyHelmet = "H_LIB_GER_OfficerCap";
				_slHelmet = "H_LIB_GER_Cap";
				_tlHelmet = "H_LIB_GER_HelmetUtility";
				_medHelmet = "H_LIB_GER_HelmetUtility";
				_sniperHelmet = "H_LIB_GER_HelmetUtility_Oak";
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

		_rflmvestOne = "V_LIB_GER_VestKar98";
		_rflmvestTwo = "V_LIB_GER_VestG43";
		_rflmvestThree = "V_LIB_GER_VestG43";
		_rflmvestFour = "V_LIB_GER_VestSTG";
		_rflmvestFive = "V_LIB_GER_VestMP40";
		_gunnerVest = "V_LIB_GER_VestMG";
		_medicVest = "V_LIB_GER_VestKar98";
		_crewcomVest = "V_LIB_GER_FieldOfficer";
		_crewVest = "V_LIB_GER_VestMP40";
		_pilotVest = "V_LIB_GER_OfficerBelt";
		_coyVest = "V_LIB_GER_OfficerBelt";
		_slVest = "V_LIB_GER_FieldOfficer";
		_tlVest = "V_LIB_GER_VestUnterofficer";
		_sniperVest = "V_LIB_GER_SniperBelt";

		// ===================== Rucks ====================

		_smallRuck = "B_LIB_GER_A_frame";
		_mediumRuck = "B_LIB_GER_Backpack";
		_largeRuck = "B_LIB_GER_SapperBackpack_empty";
		_medicRuck = "B_LIB_GER_MedicBackpack_Empty";
		_atRuck = "B_LIB_GER_Panzer_Empty";
		_sniperRuck = "B_LIB_GER_A_frame_kit";
		_fireRuck = "B_LIB_US_M2Flamethrower";
		_parachute = "B_LIB_GER_LW_Paradrop";

		// =================== Goggles ===================

		_gogglesArray = [""]; // "G_LIB_GER_Gloves4","G_LIB_Headwrap","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Watch2","G_LIB_Watch2","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4"
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};
	// Field Gray Wehrmacht Winter
	case "m43_feld_grau_w" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_LIB_GER_Soldier_camo_w","U_LIB_GER_Soldier3_w"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "U_LIB_GER_Tank_crew_leutnant";
		_crewUniform = "U_LIB_GER_Tank_crew_private";
		_coyUniform = "U_LIB_GER_Oberst";
		_slUniform = "U_LIB_GER_Soldier3_w";
		_tlUniform = "U_LIB_GER_Soldier3_w";
		_medicUniform = "U_LIB_GER_Soldier_camo_w";
		_pilotUniform = "U_LIB_GER_LW_pilot";
		_sniperUniform = "U_LIB_GER_Scharfschutze_w";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m42" : {
				_rflmHelmetArray = ["H_LIB_GER_Helmet_w","H_LIB_GER_HelmetCamo2b_w","H_LIB_GER_HelmetCamob_w","H_LIB_GER_Helmet_net_w","H_LIB_GER_Helmet_ns_w","H_LIB_GER_HelmetCamo2_w","H_LIB_GER_HelmetCamo_w"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "H_LIB_GER_TankOfficerCap";
				_crewHelmet = "H_LIB_GER_TankPrivateCap";
				_pilotHelmet = "H_LIB_GER_LW_PilotHelmet";
				_coyHelmet = "H_LIB_GER_OfficerCap";
				_slHelmet = "H_LIB_GER_Fieldcap_w";
				_tlHelmet = "H_LIB_GER_HelmetCamo4_w";
				_medHelmet = "H_LIB_GER_Helmet_Medic";
				_sniperHelmet = "H_LIB_GER_HelmetCamo_w";
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

		_rflmvestOne = "V_LIB_GER_VestKar98";
		_rflmvestTwo = "V_LIB_GER_VestG43";
		_rflmvestThree = "V_LIB_GER_VestG43";
		_rflmvestFour = "V_LIB_GER_VestSTG";
		_rflmvestFive = "V_LIB_GER_VestMP40";
		_gunnerVest = "V_LIB_GER_VestMG";
		_medicVest = "V_LIB_GER_VestKar98";
		_crewcomVest = "V_LIB_GER_FieldOfficer";
		_crewVest = "V_LIB_GER_VestMP40";
		_pilotVest = "V_LIB_GER_OfficerBelt";
		_coyVest = "V_LIB_GER_OfficerBelt";
		_slVest = "V_LIB_GER_FieldOfficer";
		_tlVest = "V_LIB_GER_VestUnterofficer";
		_sniperVest = "V_LIB_GER_SniperBelt";

		// ===================== Rucks ====================

		_smallRuck = "B_LIB_GER_A_frame";
		_mediumRuck = "B_LIB_GER_Backpack";
		_largeRuck = "B_LIB_GER_SapperBackpack_empty";
		_medicRuck = "B_LIB_GER_MedicBackpack_Empty";
		_atRuck = "B_LIB_GER_Panzer_Empty";
		_sniperRuck = "B_LIB_GER_A_frame_kit";
		_fireRuck = "B_LIB_US_M2Flamethrower";
		_parachute = "B_LIB_GER_LW_Paradrop";

		// =================== Goggles ===================

		_gogglesArray = [""]; // "G_LIB_GER_Gloves4","G_LIB_Headwrap","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Watch2","G_LIB_Watch2","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4"
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};
	// Field Gray Wehrmacht Winter
	case "m43_splittermuster" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_LIB_GER_Soldier_camo","U_LIB_GER_Soldier_camo4","U_LIB_GER_Soldier_camo3","U_LIB_GER_Soldier_camo5"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "U_LIB_GER_Tank_crew_leutnant";
		_crewUniform = "U_LIB_GER_Tank_crew_private";
		_coyUniform = "U_LIB_GER_Oberst";
		_slUniform = "U_LIB_GER_Soldier_camo2";
		_tlUniform = "U_LIB_GER_Soldier_camo2";
		_medicUniform = "U_LIB_GER_Soldier_camo2";
		_pilotUniform = "U_LIB_GER_LW_pilot";
		_sniperUniform = "U_LIB_GER_Scharfschutze";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m42" : {
				_rflmHelmetArray = ["H_LIB_GER_Helmet","H_LIB_GER_Helmet_Glasses","H_LIB_GER_HelmetCamo2","H_LIB_GER_HelmetCamo","H_LIB_GER_HelmetCamo4","H_LIB_GER_Helmet_painted","H_LIB_GER_HelmetCamo3"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "H_LIB_GER_TankOfficerCap";
				_crewHelmet = "H_LIB_GER_TankPrivateCap";
				_pilotHelmet = "H_LIB_GER_LW_PilotHelmet";
				_coyHelmet = "H_LIB_GER_OfficerCap";
				_slHelmet = "H_LIB_GER_Cap";
				_tlHelmet = "H_LIB_GER_HelmetUtility";
				_medHelmet = "H_LIB_GER_HelmetUtility";
				_sniperHelmet = "H_LIB_GER_HelmetUtility_Oak";
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

		_rflmvestOne = "V_LIB_GER_VestKar98";
		_rflmvestTwo = "V_LIB_GER_VestG43";
		_rflmvestThree = "V_LIB_GER_VestG43";
		_rflmvestFour = "V_LIB_GER_VestSTG";
		_rflmvestFive = "V_LIB_GER_VestMP40";
		_gunnerVest = "V_LIB_GER_VestMG";
		_medicVest = "V_LIB_GER_VestKar98";
		_crewcomVest = "V_LIB_GER_FieldOfficer";
		_crewVest = "V_LIB_GER_VestMP40";
		_pilotVest = "V_LIB_GER_OfficerBelt";
		_coyVest = "V_LIB_GER_OfficerBelt";
		_slVest = "V_LIB_GER_FieldOfficer";
		_tlVest = "V_LIB_GER_VestUnterofficer";
		_sniperVest = "V_LIB_GER_SniperBelt";

		// ===================== Rucks ====================

		_smallRuck = "B_LIB_GER_A_frame";
		_mediumRuck = "B_LIB_GER_Backpack";
		_largeRuck = "B_LIB_GER_SapperBackpack_empty";
		_medicRuck = "B_LIB_GER_MedicBackpack_Empty";
		_atRuck = "B_LIB_GER_Panzer_Empty";
		_sniperRuck = "B_LIB_GER_A_frame_kit";
		_fireRuck = "B_LIB_US_M2Flamethrower";
		_parachute = "B_LIB_GER_LW_Paradrop";

		// =================== Goggles ===================

		_gogglesArray = [""]; // "G_LIB_GER_Gloves4","G_LIB_Headwrap","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Watch2","G_LIB_Watch2","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4"
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};
#include "default.sqf"
};