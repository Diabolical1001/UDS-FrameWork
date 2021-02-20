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
"_gmgBarrel","_gmgTripod","_gmgMag",
"_shatBarrel","_shatTripod","_shatMag",
"_mortBarrel","_mortTripod","_mortMag",
"_atMine","_apMine","_tripFlare","_tripapMine","_satchelSmall","_satchelLarge",
"_clackOne","_clackTwo"
];

switch (_launcher) do {

	// Russian
	case "russian" : {

		_lat = "rhs_weap_rpg26";
		_latMag = "";

		_matLaunch = "rhs_weap_rpg7";
		_matATMag = "rhs_rpg7_PG7VL_mag";
		_matHEMag = "rhs_rpg7_OG7V_mag";
		_matTHERMag = "rhs_rpg7_TBG7V_mag";
		_matTANDMag = "rhs_rpg7_PG7VR_mag";
		_matSpot = "";
		_matAttachments = ["rhs_acc_pgo7v"];

		_hatLaunch = "launch_O_Vorona_green_F";
		_hatMag = "Vorona_HEAT";
		_hatScope = "";

		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";

		_hmgBarrel = "RHS_Kord_Gun_Bag";
		_hmgTripod = "RHS_Kord_Tripod_Bag";
		_hmgMag = "";

		_gmgBarrel = "RHS_AGS30_Gun_Bag";
		_gmgTripod = "RHS_AGS30_Tripod_Bag";
		_gmgMag = "";

		_shatBarrel = "RHS_Kornet_Gun_Bag";
		_shatTripod = "RHS_Kornet_Tripod_Bag";
		_shatMag = "";

		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";

		_atMine = "rhs_mine_tm62m_mag";
		_apMine = "rhs_mine_pmn2_mag";
		_tripFlare = "rhs_mine_sm320_red_mag";
		_tripapMine = "rhs_mine_ozm72_a_mag";
		_satchelSmall = "rhs_ec75_mag";
		_satchelLarge = "rhs_ec400_mag";

		_clackOne = "ACE_Clacker";
		_clackTwo = "ACE_M26_Clacker";
	};

	// USA
	case "usa" : {

		_lat = "rhs_weap_M136";
		_latMag = "";

		_matLaunch = "rhs_weap_smaw";
		_matATMag = "rhs_mag_smaw_HEDP";
		_matHEMag = "rhs_mag_smaw_HEAA";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "rhs_mag_smaw_SR";
		_matAttachments = ["rhs_weap_optic_smaw"];

		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";

		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";

		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_Tripod_Bag";
		_hmgMag = "";

		_gmgBarrel = "RHS_Mk19_Gun_Bag";
		_gmgTripod = "RHS_Mk19_Tripod_Bag";
		_gmgMag = "";

		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";

		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";

		_atMine = "rhs_mine_M19_mag";
		_apMine = "rhsusf_mine_m14_mag";
		_tripFlare = "rhsusf_mine_m49a1_6m_mag";
		_tripapMine = "rhs_mine_m2a3b_trip_mag";
		_satchelSmall = "rhsusf_m112_mag";
		_satchelLarge = "rhsusf_m112x4_mag";

		_clackOne = "ACE_Clacker";
		_clackTwo = "ACE_M26_Clacker";
	};

	// USMC
	case "usmc" : {

		_lat = "rhs_weap_m72a7";
		_latMag = "";

		_matLaunch = "rhs_weap_maaws";
		_matATMag = "rhs_mag_maaws_HEAT";
		_matHEMag = "rhs_mag_maaws_HE";
		_matTHERMag = "rhs_mag_maaws_HEDP";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = ["rhs_optic_maaws"];

		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";

		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";

		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_Tripod_Bag";
		_hmgMag = "";

		_gmgBarrel = "RHS_Mk19_Gun_Bag";
		_gmgTripod = "RHS_Mk19_Tripod_Bag";
		_gmgMag = "";

		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";

		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";

		_atMine = "rhs_mine_M19_mag";
		_apMine = "rhsusf_mine_m14_mag";
		_tripFlare = "rhsusf_mine_m49a1_6m_mag";
		_tripapMine = "rhs_mine_m2a3b_trip_mag";
		_satchelSmall = "rhsusf_m112_mag";
		_satchelLarge = "rhsusf_m112x4_mag";

		_clackOne = "ACE_Clacker";
		_clackTwo = "ACE_M26_Clacker";
	};

	// BAF
	case "baf" : {

		_lat = "rhs_weap_M136";
		_latMag = "";

		_matLaunch = "launch_NLAW_F";
		_matATMag = "";
		_matHEMag = "";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = [""];

		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";

		_aaLaunch = "UK3CB_Blowpipe";
		_aaMag = "UK3CB_Blowpipe_Round";

		_hmgBarrel = "UK3CB_BAF_L111A1";
		_hmgTripod = "UK3CB_BAF_Tripod";
		_hmgMag = "";

		_gmgBarrel = "UK3CB_BAF_L134A1";
		_gmgTripod = "UK3CB_BAF_Tripod";
		_gmgMag = "";

		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";

		_mortBarrel = "UK3CB_BAF_L16";
		_mortTripod = "UK3CB_BAF_Tripod";
		_mortMag = "";

		_atMine = "rhs_mine_M19_mag";
		_apMine = "rhsusf_mine_m14_mag";
		_tripFlare = "rhsusf_mine_m49a1_6m_mag";
		_tripapMine = "rhs_mine_m2a3b_trip_mag";
		_satchelSmall = "rhsusf_m112_mag";
		_satchelLarge = "rhsusf_m112x4_mag";

		_clackOne = "ACE_Clacker";
		_clackTwo = "ACE_M26_Clacker";
	};

	// PLA
	case "pla" : {

		_lat = "vme_pla_PF89";
		_latMag = "vme_pla_PF89_Rocket";

		_matLaunch = "vme_pla_PF98";
		_matATMag = "vme_pla_PF98_AT_Rocket";
		_matHEMag = "vme_pla_PF98_MP_Rocket";
		_matTHERMag = "";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = ["VME_PF98_Scope_FCS"];

		_hatLaunch = "vme_pla_HJ12";
		_hatMag = "VME_HJ12_AT";
		_hatScope = "";

		_aaLaunch = "vme_pla_FN6";
		_aaMag = "vme_pla_FN6_Rocket";

		_hmgBarrel = "VME_PLA_Type85_bag";
		_hmgTripod = "VME_PLA_Static_tripod";
		_hmgMag = "";

		_gmgBarrel = "VME_PLA_QLZ04_bag";
		_gmgTripod = "VME_PLA_Static_tripod";
		_gmgMag = "";

		_shatBarrel = "VME_PLA_HJ11_bag";
		_shatTripod = "VME_PLA_Static_tripod";
		_shatMag = "";

		_mortBarrel = "VME_PLA_Type87_bag";
		_mortTripod = "VME_PLA_Mortar_tripod";
		_mortMag = "";

		_atMine = "rhs_mine_tm62m_mag";
		_apMine = "rhs_mine_pmn2_mag";
		_tripFlare = "rhs_mine_sm320_red_mag";
		_tripapMine = "rhs_mine_ozm72_a_mag";
		_satchelSmall = "rhs_ec75_mag";
		_satchelLarge = "rhs_ec400_mag";

		_clackOne = "ACE_Clacker";
		_clackTwo = "ACE_M26_Clacker";
	};

	//CDF
	case "cdf" : {

		_lat = "rhs_weap_rpg75";
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

		_gmgBarrel = "RHS_AGS30_Gun_Bag";
		_gmgTripod = "RHS_AGS30_Tripod_Bag";
		_gmgMag = "";

		_shatBarrel = "RHS_Metis_Gun_Bag";
		_shatTripod = "RHS_Metis_Tripod_Bag";
		_shatMag = "";

		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";

		_atMine = "rhssaf_mine_tma4_mag";
		_apMine = "rhssaf_mine_pma3_mag";
		_tripFlare = "rhs_mine_sm320_red_mag";
		_tripapMine = "rhssaf_mine_mrud_b_mag";
		_satchelSmall = "rhssaf_tm100_mag";
		_satchelLarge = "rhssaf_tm500_mag";

		_clackOne = "ACE_Clacker";
		_clackTwo = "ACE_M26_Clacker";
	};

	// INS
	case "ins" : {

		_lat = "rhs_weap_rpg7";
		_latMag = "rhs_rpg7_PG7V_mag";

		_matLaunch = "rhs_weap_rpg7";
		_matATMag = "rhs_rpg7_PG7VL_mag";
		_matHEMag = "rhs_rpg7_OG7V_mag";
		_matTHERMag = "rhs_rpg7_TBG7V_mag";
		_matTANDMag = "";
		_matSpot = "";
		_matAttachments = ["rhs_acc_pgo7v"];

		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "rhs_acc_pgo7v";

		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";

		_hmgBarrel = "RHS_DShkM_Gun_Bag";
		_hmgTripod = "RHS_DShkM_TripodLow_Bag";
		_hmgMag = "";

		_gmgBarrel = "RHS_AGS30_Gun_Bag";
		_gmgTripod = "RHS_AGS30_Tripod_Bag";
		_gmgMag = "";

		_shatBarrel = "RHS_SPG9_Gun_Bag";
		_shatTripod = "RHS_SPG9_Tripod_Bag";
		_shatMag = "";

		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";

		_atMine = "IEDLandBig_Remote_Mag";
		_apMine = "IEDLandSmall_Remote_Mag";
		_tripFlare = "rhs_mine_sm320_red_mag";
		_tripapMine = "rhs_mine_Mk2_tripwire_mag";
		_satchelSmall = "rhs_charge_M2tet_x2_mag";
		_satchelLarge = "IEDUrbanBig_Remote_Mag";

		_clackOne = "ACE_Cellphone";
		_clackTwo = "ACE_DeadManSwitch";
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
		_hatScope = "";

		_aaLaunch = "";
		_aaMag = "";

		_hmgBarrel = "";
		_hmgTripod = "";
		_hmgMag = "";

		_gmgBarrel = "";
		_gmgTripod = "";
		_gmgMag = "";

		_shatBarrel = "";
		_shatTripod = "";
		_shatMag = "";

		_mortBarrel = "";
		_mortTripod = "";
		_mortMag = "";

		_atMine = "";
		_apMine = "";
		_tripFlare = "";
		_tripapMine = "";
		_satchelSmall = "";
		_satchelLarge = "";

		_clackOne = "";
		_clackTwo = "";
	};
};