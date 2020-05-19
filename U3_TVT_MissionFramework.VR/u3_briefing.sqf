private ["_side"];

// Server and Numpty don't need to deal with this shit
if (!hasInterface) exitWith {};

// Define variable if it doesn't exist - default false
if (isNil "u3_var_brief_separateBriefings") then { u3_var_brief_separateBriefings = false; };

if (u3_var_brief_separateBriefings) then {

	_side = toLower format ["%1", side player];

	// BLUFOR Briefing
	if (_side == "west") then {
		#include "u3_briefing_blu.sqf"
	};
	// OPFOR Briefing
	if (_side == "east") then {
		#include "u3_briefing_opf.sqf"
	};
};