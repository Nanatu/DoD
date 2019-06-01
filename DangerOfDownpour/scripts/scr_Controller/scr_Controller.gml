/// @function scr_Controller()
//	
/// @description Controller object AI.
//		Handles persistence
//
{
//	Set Controller object to not be seen
	visible = false;
//	Enum for the currently selected character
//	Used to spawn in appropriate character per room
	enum currentCharacter
	{
		Player,
		Gunslinger,
		Marksman,
		Mechanic,
		Huntress,
		LRB,
		Beyonder
	}
//	Enum for keeping track if player can move character
	enum controlState
	{
		inAbility,
		outAbility
	}
//	enum for different animation states, generally for all characters
	enum animationState
	{
		Standing,
		Running,
		Jumping,
		Crouching,
		Falling,
		Rising,
		Flinching,
		Ability1,
		Ability2,
		Ability3,
		Ability4,
		CrouchAttack
	}
//	Enum for enemy animation states
	enum enemyAnimationState
	{
		Standing,
		Idling,
		Running,
		Attacking,
		Flinching
	}
//	Check if player used a level transition
//	Used to insure character doesnt spawn at entry point
	global.usedTransistion = false;
//	Current character type to keep character between rooms
	global.characterType = currentCharacter.Gunslinger;
//	Keep character facing
	global.lastTransitionDirection = 1;
//	Current currency player has in inventory	
	global.currentShineAmount = 0;
// Determining to play room transition
	global.playTransition = false;

}