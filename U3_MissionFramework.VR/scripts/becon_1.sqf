beaconOne = createMarker ["beaconOne", himars_1];
beaconOne setMarkerShape "ELLIPSE";
beaconOne setMarkerColor "ColorBlue";
beaconOne setMarkerSize [1, 1];
while {alive himars_1} do {
"beaconOne" setMarkerPos (getPos himars_1);
_radOne = 1;
while {_radOne < 200} do {
	  beaconOne setMarkerSize [_radOne, _radOne];
	  _radOne = _radOne + 5;
	  _fadeOne = _radOne;
	  if (_fadeOne < 1) then {_fadeOne = 1;};
	  if (_fadeOne > 99) then {_fadeOne = 99;};
      beaconOne setMarkerAlpha ((100 - _radOne)/100);
	  sleep 0.025;
	 };
	sleep 0.01;
};