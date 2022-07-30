// AssignGear - Generic Items
// by Mr. Agnet
// - Defines all of the generic items to be used by the assignGear script.

// =======================================================================
// Declares variables

private [
"_binos","_toolbox","_wireCutters","_cableTieItem","_bananas","_backupSight","_strobe","_mapLight","_uavBat","_ladder","_etool",
"_steerableChute","_nonsteerableChute",
"_facItems",
"_westrangeFinder","_eastrangeFinder","_vector","_rangeFinderBat",
"_westdesignator","_eastdesignator","_designatorBat","_dagr",
"_chemlightOne","_chemlightTwo","_handFlareOne","_handFlareTwo",
"_defuseKit",
"_basicTools","_basicItems","_spareBarrel","_ftlItems","_secItems","_pltTools","_pltItems","_sniperItems",
"_bandageOne","_bloodOne","_bloodTwo","_bloodThree","_injectorOne","_injectorTwo","_bodybag","_tourniquet","_splint","_personalAidkit"
];

// =======================================================================
// =========================== Equipment/Items ===========================
// =======================================================================

// ===================== General ==================

_toolbox = "ToolKit";
_wireCutters = "ACE_wirecutter";
_cableTieItem = "ACE_CableTie";
_bananas = "ACE_Banana";
_strobe = "ACE_IR_Strobe_Item";
_mapLight = "ACE_Flashlight_XL50";
_uavBat = "ACE_UAVBattery";
_ladder = "ACE_TacticalLadder_Pack";
_etool = "ACE_EntrenchingTool";

// ====================== Para ====================

_steerableChute = "B_Parachute";
_nonsteerableChute = "ACE_NonSteerableParachute";

// ====================== FAC =====================

_facItems = ["ACE_MapTools"];

// ================= Rangefinder ==================
if (isClass(configFile >> "CfgMods" >> "vn")) then {
_binos = "vn_m19_binocs_grey";
_westrangeFinder = "vn_m19_binocs_grey";
_eastrangeFinder = "vn_m19_binocs_grey";
_vector = "vn_m19_binocs_grey";
_rangeFinderBat = "";
}
else {
_binos = "Binocular";
_westrangeFinder = "lerca_1200_black";
_eastrangeFinder = "rhs_pdu4";
_vector = "ACE_VectorDay";
_rangeFinderBat = "";
};

// ================== Laser Des ===================
if (isClass(configFile >> "CfgMods" >> "vn")) then {
_westdesignator = "vn_m19_binocs_grn";
_eastdesignator = "vn_m19_binocs_grn";
_designatorBat = "";
_dagr = "";
}
else {
_westdesignator = "Laserdesignator_03";
_eastdesignator = "Laserdesignator_01_khk_F";
_designatorBat = "Laserbatteries";
_dagr = "ACE_microDAGR";
};
// ============= General Throwables ===============

_chemlightOne = "chemlight_green";
_chemlightTwo = "chemlight_red";
_handFlareOne = "ACE_HandFlare_Green";
_handFlareTwo = "ACE_HandFlare_Red";

// =============== Explosive Tools ================

_defuseKit = "ACE_DefusalKit";

// ==================== Tools =====================
if (isClass(configFile >> "CfgMods" >> "vn")) then {
_basicTools = ["vn_b_item_compass","vn_b_item_map","vn_b_item_watch"];
_basicItems = ["ACE_MapTools",_mapLight];
_spareBarrel = "ACE_SpareBarrel";
_ftlItems = ["itemGPS"];
_secItems = ["itemGPS"];
_pltTools = [];
_pltItems = ["itemGPS"];
_sniperItems = ["ACE_RangeCard"];
_backupSight = "";
}
else {
_basicTools = ["ItemCompass","ItemMap","ACE_Altimeter"];
_basicItems = ["ACE_MapTools",_mapLight];
_spareBarrel = "ACE_SpareBarrel";
_ftlItems = ["itemGPS"];
_secItems = ["itemGPS"];
_pltTools = [];
_pltItems = ["itemGPS"];
_sniperItems = ["ACE_Kestrel4500","ACE_RangeCard","ACE_DAGR","ACE_ATragMX"];
_backupSight = "";
};

// =======================================================================
// =========================== Medical Items =============================
// =======================================================================

// ================= Basic Gear ===================

_bandageOne = "ACE_fieldDressing";
_bloodOne = "ACE_bloodIV_250";
_bloodTwo = "ACE_bloodIV_500";
_bloodThree = "ACE_bloodIV";
_injectorOne = "ACE_morphine";
_injectorTwo = "ACE_epinephrine";
_bodybag = "ACE_bodyBag";
_tourniquet = "ACE_tourniquet";
_splint = "ACE_splint";
_personalAidkit = "ACE_personalAidKit";
