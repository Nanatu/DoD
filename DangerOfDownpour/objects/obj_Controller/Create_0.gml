//obj_Controller
//ONLY HAVE ON OF THESE
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
Idle,
Run,
Jump,
Crouch,
Fall,
Ability1,
Ability2,
Ability3,
Ability4
}

global.characterType = currentCharacter.Gunslinger;
