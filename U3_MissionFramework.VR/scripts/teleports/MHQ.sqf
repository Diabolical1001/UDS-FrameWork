//by diabolical
// MHQ1 being the name of the vehicle
//add this to a flag
//this addAction ["Teleport MHQ1", "scripts\teleports\MHQ.sqf", MHQ1];
_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_teleporTo = _this select 3;
publicvariable _teleporTo;

if (alive _teleporTo) then
{
        /*_caller moveInCargo _teleporTo;*/ [_teleporTo, _caller, "cargo"] [call]] BIS_fnc_moveIn;
        player groupChat format ["You have been deployed at the MHQ", _teleporTo];
} else {
        player groupChat format ["Unable to deploy to the MHQ at this time.", _teleporTo];
};