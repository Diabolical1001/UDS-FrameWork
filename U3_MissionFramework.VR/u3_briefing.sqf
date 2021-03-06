// ====================================================================================
// Briefing Script
// By Diabolical
// ====================================================================================

// Server and Numpty don't need to deal with this
if (!hasInterface) exitWith {};

// ====================================================================================

player createDiaryRecord ["diary", ["Radio / Freqs","
<font color='#FFC800' size='18'>Radio:</font><br/>
<br/>
<font color='#FFC800' size='16'>Infantry:</font><br/>
<br/>
<font color='#FFC800'>Plt 1-1 LR</font>        : freq 50<br/>
<font color='#FFC800'>FAC 1-1 LR</font>        : freq 60<br/>
<font color='#FFC800'>Plt 1-1 SR </font>       : freq 100<br/>
<font color='#FFC800'>Alpha 1-1 SR</font>      : freq 101<br/>
<font color='#FFC800'>Bravo 1-1 SR</font>      : freq 102<br/>
<font color='#FFC800'>Charlie 1-1 SR</font>    : freq 103<br/>
<font color='#FFC800'>Delta 1-1 SR</font>      : freq 104<br/>
<br/>
<font color='#FFC800'>SPR 1-1 SR</font>   : freq 111<br/>
<font color='#FFC800'>MORT 1-1 SR</font>   : freq 112<br/>
<br/>
<font color='#FFC800' size='16'>Armor:</font><br/>
<br/>
<font color='#FFC800'>Alpha 2-1 SR</font>   : freq 121<br/>
<font color='#FFC800'>Bravo 2-1 SR</font>   : freq 122<br/>
<font color='#FFC800'>Charlie 2-1 SR</font>   : freq 123<br/>
<font color='#FFC800'>Delta 2-1 SR</font>   : freq 124<br/>
<br/>
<font color='#FFC800'>Alpha 2-2 SR</font>   : freq 125<br/>
<font color='#FFC800'>Bravo 2-2 SR</font>   : freq 126<br/>
<font color='#FFC800'>Charlie 2-2 SR</font>   : freq 127<br/>
<font color='#FFC800'>Delta 2-2 SR</font>   : freq 128<br/>
<br/>
<font color='#FFC800' size='16'>Rotary Wing:</font><br/>
<br/>
<font color='#FFC800'>Alpha 3-1 SR</font>    : freq 130<br/>
<font color='#FFC800'>Bravo 3-1 SR</font>    : freq 131<br/>
<br/>
<font color='#FFC800' size='16'>Fixed Wing:</font><br/>
<br/>
<font color='#FFC800'>Alpha 4-1 SR</font>    : freq 140<br/>
<font color='#FFC800'>Bravo 4-1 SR</font>    : freq 141<br/>
<br/>
<font color='#FFC800' size='16'>Naval:</font><br/>
<br/>
<font color='#FFC800'>Alpha 5-1 SR</font>    : freq 150<br/>
<br/>
<br/><br/>

"]];

// ====================================================================================

player createDiaryRecord ["diary", ["Admin / Logistics","
<font color='#FFC800' size='18'>Logistics: </font><br/>
<font color='#FFC800' size='16'>Platoon Comp: </font> <br/>
- <br/>
- <br/>
<br/>
<font color='#FFC800' size='16'>Vehicles: </font> <br/>
- <br/>
- <br/>
<br/>
<font color='#FFC800' size='16'>Resupply: </font> <br/>
- <br/>
- <br/>
<br/>
<font color='#FFC800' size='16'>Support: </font> <br/>
- <br/>
<br/>
"]];

// ====================================================================================

player createDiaryRecord ["diary", ["Mission / Situation","
<font color='#FFC800' size='18'>Mission/Situation: </font><br/>
- <br/><br/>
<font color='#FFC800' size='18'>ROE: </font><br/>
- <br/><br/>
<font color='#FFC800' size='18'>Hints/Tips: </font><br/>
- <br/><br/>
- <br/><br/>
"]];

// ====================================================================================
// ORBAT/Roster
// - Displays all player unit names and groups at mission start in briefing notes

// Define variables
private ["_text","_groups"];

_text = "<br />NOTE: The ORBAT below is only accurate at mission start.<br />
<br />";

_groups = [];
{
	// Add to ORBAT if side matches, group isn't already listed, and group has players
	if ((side _x == side group player) && !(_x in _groups) && (({_x in playableUnits} count units _x) > 0)) then {
		_groups pushBack _x;
	};
} forEach allGroups;

// Loop through the group, print out group ID and leader name
{
	_text = _text + format ["<font color='#ffffff'>%1 - %2</font>", _x, name leader _x] + "<br />";
	{
		if (_x != leader group _x) then {
			_text = _text + format["<font color='#d6d6d6'>|- %1</font>",name _x] + "<br />";
		};
	} forEach units _x;
	_text = _text + format ["<font color='#ffffff'>-------------- </font>"] + "<br />";
} forEach _groups;

// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["Mission Roster", _text]];

// ====================================================================================