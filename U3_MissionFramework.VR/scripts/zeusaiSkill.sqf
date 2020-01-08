while {true} do
{

	{
		_x setSkill 1;
		_x setSkill ["aimingAccuracy", 0.8];
		_x setSkill ["aimingShake", 0.3];
		_x setSkill ["aimingSpeed", 0.7];
		_x setSkill ["Endurance",0.8];
		_x setSkill ["spotDistance",0.55];
		_x setSkill ["spotTime",0.4];
		_x setSkill ["courage", 0.9];
		_x setSkill ["reloadSpeed", 1];
		_x setSkill ["commanding", 1];
	} forEach allUnits;
sleep 10;
};