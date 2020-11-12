//#include "SAP\ambiance_SAP.hpp"

class CfgSFX
{
	class FallMortar
	{
		sound0[] = {"@A3\sounds_f\weapons\falling_bomb\fall_01", db+1, 1.0, 1000, 0.25, 4, 6, 8};
		sound1[] = {"@A3\sounds_f\weapons\falling_bomb\fall_02", db+1, 1.0, 1000, 0.25, 4, 6, 8};
		sound2[] = {"@A3\sounds_f\weapons\falling_bomb\fall_03", db+1, 1.0, 1000, 0.25, 4, 6, 8};
		sound3[] = {"@A3\sounds_f\weapons\falling_bomb\fall_04", db+1, 1.0, 1000, 0.25, 4, 6, 8};
		sounds[] = {sound0, sound1, sound2, sound3};
		empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	};
	
	class FireMortar
	{
		sound0[] = {"@A3\sounds_f\weapons\Mortar\Mortar_01", db+1, 1.0, 1000, 0.25, 4, 6, 7};
		sound1[] = {"@A3\sounds_f\weapons\Mortar\Mortar_02", db+1, 1.0, 1000, 0.25, 4, 6, 7};
		sound2[] = {"@A3\sounds_f\weapons\Mortar\Mortar_03", db+1, 1.0, 1000, 0.25, 4, 6, 7};  
		sound3[] = {"@A3\sounds_f\weapons\Mortar\Mortar_04", db+1, 1.0, 1000, 0.25, 4, 6, 7}; 
		sounds[] = {sound0, sound1, sound2, sound3};
		empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	};
	
	class ExploseMortar
	{
		sound0[] = {"@A3\sounds_f\weapons\Explosion\expl_big_1", db+1, 1.0, 1000, 0.25, 4, 6, 8};
		sound1[] = {"@A3\sounds_f\weapons\Explosion\expl_big_1", db+1, 1.0, 1000, 0.25, 4, 6, 8};
		sound2[] = {"@A3\sounds_f\weapons\Explosion\expl_big_1", db+1, 1.0, 1000, 0.25, 4, 6, 8};  
		sounds[] = {sound0, sound1, sound2};
		empty[] = {"", 0, 0, 0, 0, 0, 0, 0};
	};
};

class CfgVehicles
{
	class MyFallMortarSound // class name to be used with createSoundSource
	{
		sound = "FallMortar"; // reference to CfgSFX class
	};
	
	class MyFireMortarSound
	{
		sound = "FireMortar";
	};	

	class MyExploseMortarSound
	{
		sound = "ExploseMortar";
	};
};