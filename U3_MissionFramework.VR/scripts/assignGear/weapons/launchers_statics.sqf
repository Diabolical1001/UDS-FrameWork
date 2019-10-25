// =======================================================================
// AssignGear - Launchers Statics
// by UDS
// - Defines all of the weapon classes for heavy and static weapons to be used by the assignGear script.
// - Cases: russian_vdv, russian_msv, us_army, usmc, insurgent, nato, serb, croat
// =======================================================================

private [
"_lat","_latMag",
"_matLaunch","_matATMag","_matHEMag","_matTHERMag","_matTANDMag","_matSpot","_matAttachments",
"_hatLaunch","_hatMag","_hatScope",
"_aaLaunch","_aaMag",
"_hmgBarrel","_hmgTripod","_hmgMag",
"_shatBarrel","_shatTripod","_shatMag",
"_mortBarrel","_mortTripod","_mortMag"
];

switch (_launcher) do {

	// AFRF - Eastern
	case "russian_vdv" : {
		_lat = "rhs_weap_rpg26";
		_latMag = "";
		
		_matLaunch = "rhs_weap_rpg7";
		_matATMag = "rhs_rpg7_PG7VL_mag";
		_matHEMag = "rhs_rpg7_OG7V_mag";
		_matTHERMag = "rhs_rpg7_TBG7V_mag";
		_matTANDMag = "rhs_rpg7_PG7VR_mag";
		_matSpot = "";
		_matAttachments = ["rhs_acc_pgo7v"];
		
		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "rhs_acc_pgo7v";
		
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		
		_hmgBarrel = "RHS_NSV_Gun_Bag";
		_hmgTripod = "RHS_NSV_Tripod_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "RHS_Kornet_Gun_Bag";
		_shatTripod = "RHS_Kornet_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	
	};

	// AFRF - Eastern
	case "russian_msv" : {
		_lat = "rhs_weap_rshg2";
		_latMag = "";
		
		_matLaunch = "rhs_weap_rpg7";
		_matATMag = "rhs_rpg7_PG7VL_mag";
		_matHEMag = "rhs_rpg7_OG7V_mag";
		_matTHERMag = "rhs_rpg7_TBG7V_mag";
		_matTANDMag = "rhs_rpg7_PG7VR_mag";
		_matSpot = "";
		_matAttachments = ["rhs_acc_pgo7v"];
		
		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "rhs_acc_pgo7v";
		
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		
		_hmgBarrel = "RHS_NSV_Gun_Bag";
		_hmgTripod = "RHS_NSV_Tripod_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "RHS_Metis_Gun_Bag";
		_shatTripod = "RHS_Metis_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	
	};

	// USAF - Western
	case "us_army" : {
		_lat = "rhs_weap_M136";
		_latMag = "";
		
		_matLaunch = "rhs_weap_maaws";
		_matATMag = "rhs_mag_maaws_HEAT";
		_matHEMag = "rhs_mag_maaws_HEDP";
		_matTHERMag = "rhs_mag_maaws_HE";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = ["rhs_optic_maaws"];
		
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	
	};

	// USAF - Western
	case "usmc" : {
		_lat = "rhs_weap_m72a7";
		_latMag = "";
		
		_matLaunch = "rhs_weap_smaw";
		_matATMag = "rhs_mag_smaw_HEAA";
		_matHEMag = "rhs_mag_smaw_HEDP";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "rhs_mag_smaw_SR";
		_matAttachments = ["rhs_weap_optic_smaw","ACE_acc_pointer_green"];
		
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	
	};

	// AFRF - Eastern
	case "insurgent" : {
		_lat = "rhs_weap_rpg26";
		_latMag = "";
		
		_matLaunch = "rhs_weap_rpg7";
		_matATMag = "rhs_rpg7_PG7VL_mag";
		_matHEMag = "rhs_rpg7_OG7V_mag";
		_matTHERMag = "rhs_rpg7_TBG7V_mag";
		_matTANDMag = "rhs_rpg7_PG7VR_mag";
		_matSpot = "";
		_matAttachments = [""];
		
		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "";
		
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		
		_hmgBarrel = "RHS_DShkM_Gun_Bag";
		_hmgTripod = "RHS_DShkM_TripodLow_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "RHS_SPG9_Gun_Bag";
		_shatTripod = "RHS_SPG9_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	
	};

	// Vanilla - Western
	case "nato" : {
		_lat = "rhs_weap_M136";
		_latMag = "";
		
		_matLaunch = "rhs_weap_maaws";
		_matATMag = "rhs_mag_maaws_HEAT";
		_matHEMag = "rhs_mag_maaws_HEDP";
		_matTHERMag = "rhs_mag_maaws_HE";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = ["rhs_optic_maaws"];
		
		_hatLaunch = "launch_B_Titan_short_F";
		_hatMag = "Titan_AT";
		_hatScope = "";
		
		_aaLaunch = "launch_B_Titan_F";
		_aaMag = "Titan_AA";
		
		_hmgBarrel = "B_HMG_01_weapon_F";
		_hmgTripod = "B_HMG_01_support_F";
		_hmgMag = "";	
		
		_shatBarrel = "B_AT_01_weapon_F";
		_shatTripod = "B_HMG_01_support_high_F";
		_shatMag = "";	
		
		_mortBarrel = "B_Mortar_01_weapon_F";
		_mortTripod = "B_Mortar_01_support_F";
		_mortMag = "";	
	};

	// AFRF/USAF - East/West Mix
	case "serb" : {
		_lat = "rhs_weap_m80";
		_latMag = "";
		
		_matLaunch = "rhs_weap_smaw";
		_matATMag = "rhs_mag_smaw_HEAA";
		_matHEMag = "rhs_mag_smaw_HEDP";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "rhs_mag_smaw_SR";
		_matAttachments = ["rhs_weap_optic_smaw","ACE_acc_pointer_green"];
		
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		
		_hmgBarrel = "RHS_NSV_Gun_Bag";
		_hmgTripod = "RHS_NSV_Tripod_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "RHS_Metis_Gun_Bag";
		_shatTripod = "RHS_Metis_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	
	};
	
	// AFRF/USAF - East/West Mix
	case "croat" : {
		_lat = "rhs_weap_rpg75";
		_latMag = "";
		
		_matLaunch = "rhs_weap_smaw";
		_matATMag = "rhs_mag_smaw_HEAA";
		_matHEMag = "rhs_mag_smaw_HEDP";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "rhs_mag_smaw_SR";
		_matAttachments = ["rhs_weap_optic_smaw","ACE_acc_pointer_green"];
		
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	
		
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	
		
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	
	};

	// Incorrect Case
	default {
		_lat = "";
		_latMag = "";
		
		_matLaunch = "";
		_matATMag = "";
		_matHEMag = "";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = [""];
		
		_hatLaunch = "";
		_hatMag = "";
		
		_aaLaunch = "";
		_aaMag = "";
		
		_hmgBarrel = "";
		_hmgTripod = "";
		_hmgMag = "";	
		
		_shatBarrel = "";
		_shatTripod = "";
		_shatMag = "";	
		
		_mortBarrel = "";
		_mortTripod = "";
		_mortMag = "";	
	};
};