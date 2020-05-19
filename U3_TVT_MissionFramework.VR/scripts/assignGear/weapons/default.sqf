	default {

		// ============ Weaponry ===========

		_rifleArray = [""];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = [""];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "";
		_autoRifle = "";
		_carbine = "";
		_dmr = "";
		_mmg = "";
		_smg = "";
		_pistol = "";
		_shotty = "";
		_boltRifle = "";
		_amRifle = "";

		// =========== Ammunition ==========

		_rifleMag = "";
		_rifleTracerMag = "";
		_rifleSubsonicMag = "";
		_rifleGLMag = "";
		_rifleScopedMag = "";
		_carbineMag = "";
		_smgMag = "";
		_pistolMag = "";

		_autoRifleMag = "";
		_autoTracerMag = "";
		_autoSubsonicMag = "";
		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMag = "";
		_mmgTracerMag = "";
		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		_shottyBuck = "";
		_shottySlug = "";

		_dmrMag = "";
		_boltRifleMag = "";
		_amRifleMag = "";

		_glExplody = "";
		_glSmokeOne = "";
		_glSmokeTwo = "";
		_glSmokeThree = "";
		_glFlareOne = "";
		_glFlareTwo = "";

		_grenade = "";
		_flashbang = "";
		_smokeOne = "";
		_smokeTwo = "";
		_smokeThree = "";

		// ========== Attachments ==========

		_generalAttachments_reflex = "";
		_generalAttachments_scoped = "";
		_generalAttachments_muzz = "";
		_generalAttachments_supp = "";
		_generalAttachments_gunLight = "";
		_generalAttachments_gunIR = "";
		_generalAttachments_grip = "";

		_autoRifleAttachments_reflex = "";
		_autoRifleAttachments_scoped = "";
		_autoRifleAttachments_muzz = "";
		_autoRifleAttachments_supp = "";
		_autoRifleAttachments_gunLight = "";
		_autoRifleAttachments_gunIR = "";
		_autoRifleAttachments_grip = "";

		_mmgAttachments_reflex = "";
		_mmgAttachments_scoped = "";
		_mmgAttachments_muzz = "";
		_mmgAttachments_supp = "";
		_mmgAttachments_gunLight = "";
		_mmgAttachments_gunIR = "";
		_mmgAttachments_grip = "";

		_dmrAttachments_reflex = "";
		_dmrAttachments_scoped = "";
		_dmrAttachments_muzz = "";
		_dmrAttachments_supp = "";
		_dmrAttachments_gunLight = "";
		_dmrAttachments_gunIR = "";
		_dmrAttachments_grip = "";

		_boltRifleAttachments_base = [""];
		_boltRifleAttachments_muzz = "";
		_boltRifleAttachments_supp = "";

		_amRifleAttachments_base = [""];

		_pistolAttachments_reflex = "";
		_pistolAttachments_muzz = "";
		_pistolAttachments_supp = "";
		_pistolAttachments_gunLight = "";
		_pistolAttachments_gunIR = "";

		// =================================
	};