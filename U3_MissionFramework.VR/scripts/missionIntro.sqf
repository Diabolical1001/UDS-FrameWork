//by Diabolical

titleCut ["", "BLACK FADED", 999];
0 fadeSound 0;

// Spawn text effects.
_this spawn {


	params[
		["_missionName", "An Arma 3 mission"],
		["_missionAuthor", "by a Community Author"],
		["_missionVersion", "Version 1.0"],
		["_quote", "Not so long ago, not so far away...\n\n-A quote"],
		["_duration", 15]
	];

	// Starting quote as volume fades in.
	titleText [_quote,"PLAIN"];
	titleFadeOut _duration;
	_duration fadeSound 1;
	sleep (_duration - 2);

	// New "sitrep style" text in bottom right corner, typed out over time.
	[
		[_missionName,"font = 'PuristaSemiBold'"],
		["","<br/>"],
		[_missionAuthor,"font = 'PuristaMedium'"],
		["","<br/>"],
		[_missionVersion,"font = 'PuristaLight'"]
	]  execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

	// Fade from black, to blur, to clear as text types.
	sleep 5;
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 5;
	titleCut ["", "BLACK IN", 5];
};