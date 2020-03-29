	default {
		// ==================== Uniforms ==================

		_rflmUniformArray = [""];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;
		_crewCommanderUniform = "";
		_crewUniform = "";
		_coyUniform = "";
		_slUniform = "";
		_tlUniform = "";
		_medicUniform = "";
		_pilotUniform = "";
		_sniperUniform = "";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m42" : {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "";
				_crewHelmet = "";
				_pilotHelmet = "";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_medHelmet = "";
				_sniperHelmet = "";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;
				_crewcomHelmet = "";
				_crewHelmet = "";
				_pilotHelmet = "";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_medHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmvestOne = "";
		_rflmvestTwo = "";
		_rflmvestThree = "";
		_rflmvestFour = "";
		_rflmvestFive = "";
		_gunnerVest = "";
		_medicVest = "";
		_crewcomVest = "";
		_crewVest = "";
		_pilotVest = "";
		_coyVest = "";
		_slVest = "";
		_tlVest = "";
		_sniperVest = "";

		// ===================== Rucks ====================

		_smallRuck = "";
		_mediumRuck = "";
		_largeRuck = "";
		_medicRuck = "";
		_atRuck = "";
		_sniperRuck = "";
		_fireRuck = "";

		// =================== Goggles ===================

		_gogglesArray = [""];
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

// =======================================================================