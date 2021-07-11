//by diabolical
// MHQ1 being the name of the vehicle
//add this to a flag
//this addAction ["Teleport MHQ1", "scripts\teleports\MHQ.sqf", MHQ1];
_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_teleporTo = _this select 3;

if (alive _teleporTo) then
{
	titleCut ["", "BLACK OUT", 5];
	sleep 5;
    _caller moveInCargo _teleporTo;
    sleep 5;
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 5;
	player groupChat format ["You have been deployed at %1", _teleporTo];
	titleCut ["", "BLACK IN", 5];
} else {
    player groupChat format ["Unable to deploy to %1 at this time.", _teleporTo];
};