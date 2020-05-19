// code used for BIS_fnc_UnitCapture inside of trigger.
// 1: Name of your vehicles variable name ingame.
// 2: Time in secounds the recording will go for (good to use 300 = 5 mins) extend if needed.
// 3: FPS of recording, 30 is fine but if you have a longer recording 20 can be used to save file size.
// 4: true/false on wether you want to record any vehicle weapon data (also stuff like flares/smoke generation etc).
// 5: delay smoothing. can use 10 to remove stutter. I usually just use 0.
//
//  [yourVehicle, 300, 30, true, 0] spawn BIS_fnc_UnitCapture;

_capturemovedata = replacethispastedata ;
_captureweaponsdata = replacethispastedataor delete this ;
_capturedothings = [yourVehicle, _capturemovedata] spawn BIS_fnc_UnitPlay;
[yourVehicle, _captureweaponsdata] spawn BIS_fnc_UnitPlayFiring;