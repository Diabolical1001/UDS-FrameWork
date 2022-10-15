// make sure to change over calls to opf if using opfor framework.

//TP point plus description
start_pos1 = {
cutText ["","BLACK FADED",0,True];
player enableSimulation false;
player setpos getmarkerpos "respawn_west";
sleep 5;
player enableSimulation true;
cutText ["","BLACK IN",3,True];
};

mhq_1_position = {
cutText ["","BLACK FADED",0,True];
player enableSimulation false;
player moveInCargo mhq_blu_1;
sleep 5;
player enableSimulation true;
cutText ["","BLACK IN",3,True];
};

mhq_2_position = {
cutText ["","BLACK FADED",0,True];
player enableSimulation false;
player moveInCargo mhq_blu_2;
sleep 5;
player enableSimulation true;
cutText ["","BLACK IN",3,True];
};


//Mission teleport info
_missionsData = [
    [getmarkerpos "respawn_west",start_pos1,"F.O.B","Relocate to this position.","","",1,[]],
    [getmarkerpos "mhqMkr_blu_1",mhq_1_position,"Mobile HQ 1","Relocate to this position.","","",1,[]],
    [getmarkerpos "mhqMkr_blu_2",mhq_2_position,"Mobile HQ 2","Relocate to this position.","","",1,[]]
];

disableserialization;
_parentDisplay  = [] call bis_fnc_displayMission;
_mapCenter  = getmarkerpos "mrk_mapCentre";
_ORBAT      = [];
_markers    = [];
_images     = [];
_overcast   = overcast;
_isNight    = !((dayTime > 6) && (dayTime < 20));
_scale      = 3;
_simul      = false;
_label      = "Select Redeploy Position";

[
findDisplay 46,
_mapCenter,
_missionsData,
_ORBAT,
_markers,
_images,
_overcast,
_isNight,
_scale,
_simul,
_label
] call Bis_fnc_strategicMapOpen;