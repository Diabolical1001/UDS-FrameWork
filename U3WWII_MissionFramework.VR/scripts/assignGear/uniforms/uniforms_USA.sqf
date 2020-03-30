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
	case "ranger" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_LIB_US_Rangers_Uniform"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "U_LIB_US_Tank_Crew";
		_crewUniform = "U_LIB_US_Tank_Crew2";
		_coyUniform = "U_LIB_US_Rangers_Uniform";
		_slUniform = "U_LIB_US_Rangers_Sergeant";
		_tlUniform = "U_LIB_US_Rangers_Corp";
		_medicUniform = "U_LIB_US_Rangers_Med";
		_pilotUniform = "U_LIB_US_Pilot_2";
		_sniperUniform = "U_LIB_US_Rangers_Uniform";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m1_ranger" : {
				_rflmHelmetArray = ["H_LIB_US_Helmet","H_LIB_US_Helmet_Net_ns","H_LIB_US_Helmet_Net_os","H_LIB_US_Helmet_Net","H_LIB_US_Helmet_ns","H_LIB_US_Helmet_os"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "H_LIB_US_Helmet_Tank";
				_crewHelmet = "H_LIB_US_Helmet_Tank";
				_pilotHelmet = "H_LIB_US_Helmet_Pilot_Respirator_Glasses_Down";
				_coyHelmet = "H_LIB_US_Helmet_Cap";
				_slHelmet = "H_LIB_US_Helmet_First_lieutenant";
				_tlHelmet = "H_LIB_US_Helmet_NCO";
				_medHelmet = "H_LIB_US_Helmet_Med";
				_sniperHelmet = "H_LIB_US_Helmet_Net";
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

		_rflmvestOne = "V_LIB_US_Vest_Garand";
		_rflmvestTwo = "V_LIB_US_Vest_Grenadier";
		_rflmvestThree = "V_LIB_US_Vest_Carbine";
		_rflmvestFour = "V_LIB_US_Vest_Bar";
		_rflmvestFive = "V_LIB_US_Vest_Thompson";
		_gunnerVest = "V_LIB_US_Vest_M1919";
		_medicVest = "V_LIB_US_Vest_Medic2";
		_crewcomVest = "V_LIB_US_Vest_Thompson_nco_Radio";
		_crewVest = "V_LIB_US_Vest_Thompson";
		_pilotVest = "V_LIB_US_LifeVest";
		_coyVest = "V_LIB_US_Vest_Thompson_nco_Radio";
		_slVest = "V_LIB_US_Vest_Thompson_nco";
		_tlVest = "V_LIB_US_Vest_Carbine_nco";
		_sniperVest = "V_LIB_US_Vest_Garand";

		// ===================== Rucks ====================

		_smallRuck = "B_LIB_US_Backpack_Mk2";
		_mediumRuck = "B_LIB_US_M36";
		_largeRuck = "B_LIB_US_M36_Bandoleer";
		_medicRuck = "B_LIB_US_Backpack";
		_atRuck = "B_LIB_US_M36_Rocketbag_Empty";
		_sniperRuck = "B_LIB_US_Backpack_Mk2";
		_fireRuck = "B_LIB_US_M2Flamethrower";
		_parachute = "B_LIB_US_TypeA3";

		// =================== Goggles ===================

		_gogglesArray = [""]; // "G_LIB_GER_Gloves4","G_LIB_Headwrap","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Watch2","G_LIB_Watch2","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4"
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};
	case "airborne42" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["U_LIB_US_AB_Uniform_M42","U_LIB_US_AB_Uniform_M42_506"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "U_LIB_US_Tank_Crew";
		_crewUniform = "U_LIB_US_Tank_Crew2";
		_coyUniform = "U_LIB_US_AB_Uniform_M43";
		_slUniform = "U_LIB_US_AB_Uniform_M42_NCO";
		_tlUniform = "U_LIB_US_AB_Uniform_M42_FC";
		_medicUniform = "U_LIB_US_AB_Uniform_M42_Medic";
		_pilotUniform = "U_LIB_US_Pilot_2";
		_sniperUniform = "U_LIB_US_AB_Uniform_M43";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m1_ranger" : {
				_rflmHelmetArray = ["H_LIB_US_AB_Helmet_Clear_1","H_LIB_US_AB_Helmet_Clear_2","H_LIB_US_AB_Helmet_Clear_3","H_LIB_US_AB_Helmet_3","H_LIB_US_AB_Helmet_4","H_LIB_US_AB_Helmet_5","H_LIB_US_AB_Helmet_Plain_1","H_LIB_US_AB_Helmet_Plain_2","H_LIB_US_AB_Helmet_Plain_3"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "H_LIB_US_Helmet_Tank";
				_crewHelmet = "H_LIB_US_Helmet_Tank";
				_pilotHelmet = "H_LIB_US_Helmet_Pilot_Respirator_Glasses_Down";
				_coyHelmet = "H_LIB_US_Helmet_Cap";
				_slHelmet = "H_LIB_US_AB_Helmet_CO_1";
				_tlHelmet = "H_LIB_US_AB_Helmet_NCO_1";
				_medHelmet = "H_LIB_US_AB_Helmet_4";
				_sniperHelmet = "H_LIB_US_AB_Helmet_3";
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

		_rflmvestOne = "V_LIB_US_AB_Vest_Padded_Garand";
		_rflmvestTwo = "V_LIB_US_AB_Vest_Padded_Grenadier";
		_rflmvestThree = "V_LIB_US_AB_Vest_Padded_Carbine";
		_rflmvestFour = "V_LIB_US_AB_Vest_Padded_Bar";
		_rflmvestFive = "V_LIB_US_AB_Vest_Padded_Thompson";
		_gunnerVest = "V_LIB_US_AB_Vest_Padded_M1919";
		_medicVest = "V_LIB_US_Vest_Medic2";
		_crewcomVest = "V_LIB_US_Vest_Thompson_nco_Radio";
		_crewVest = "V_LIB_US_Vest_Thompson";
		_pilotVest = "V_LIB_US_LifeVest";
		_coyVest = "V_LIB_US_AB_Vest_Thompson_nco_Radio";
		_slVest = "V_LIB_US_AB_Vest_Thompson_nco";
		_tlVest = "V_LIB_US_AB_Vest_Padded_Carbine_nco";
		_sniperVest = "V_LIB_US_AB_Vest_Padded_Garand";

		// ===================== Rucks ====================

		_smallRuck = "B_LIB_US_M36";
		_mediumRuck = "B_LIB_US_M36_Rope";
		_largeRuck = "B_LIB_US_M36_Bandoleer";
		_medicRuck = "B_LIB_US_Backpack";
		_atRuck = "B_LIB_US_M36_Rocketbag_Empty";
		_sniperRuck = "B_LIB_US_Backpack_Mk2";
		_fireRuck = "B_LIB_US_M2Flamethrower";
		_parachute = "B_LIB_US_TypeA3";

		// =================== Goggles ===================

		_gogglesArray = [""]; // "G_LIB_GER_Gloves4","G_LIB_Headwrap","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Watch2","G_LIB_Watch2","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4","G_LIB_GER_Gloves4"
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};
#include "default.sqf"
};