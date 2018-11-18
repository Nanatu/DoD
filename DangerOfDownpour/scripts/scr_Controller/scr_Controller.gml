visible = false;
enum currentCharacter
{
	Player,
	Gunslinger,
	Marksman,
	Mechanic,
	Huntress,
	LRB,
	Beyonder,
}

enum animationState
{
	Standing,
	Running,
	Jumping,
	Crouching,
	Falling,
	Rising,
	Ability1,
	Ability2,
	Ability3,
	Ability4
}

enum enemyAnimationState
{
	Idle,
	Running,
	Attack,
}

global.usedTransistion = false;

global.characterType = currentCharacter.Gunslinger;

global.lastTransitionDirection = 1;