//#include "scripts\L_ambiCivs\init.sqf"
//#include "scripts\L_ambiDrive\init.sqf"

// ============================================================================================
// Respawn Tickets
// when using the opfor frame work make sure to swap out the calls from west to east with //

[west, 16] call BIS_fnc_respawnTickets;
//[east, 16] call BIS_fnc_respawnTickets;

// ============================================================================================
// Marker that follows the MHQ's.
// Change the "mhq_blu_#" & "mhqMkr_blu_#" calls if using opfor to reflect their viks ("mhq_opf_#" & "mhqMkr_opf_#").

[] spawn {
 while {not isnull mhq_blu_1} do { "mhqMkr_blu_1" setmarkerpos getpos mhq_blu_1; sleep 1; };
};

[] spawn {
 while {not isnull mhq_blu_2} do { "mhqMkr_blu_2" setmarkerpos getpos mhq_blu_2; sleep 1; };
};