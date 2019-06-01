/// @function scr_AnimationController()
//	
/// @description General script for character animations and facing switching
//
{

//Verbs declaration
	var moveVerb,actionVerb;

///Grab Arguments
	moveVerb = argument0;
	actionVerb = argument1;
	
//Check control state
	if(control == controlState.outAbility)
	{

//Standing animation
		if (moveVerb = "Standing")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Standing];
		}

//Running animation
		if (moveVerb = "Running")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Running];
		}

//Jumping animation
		if (moveVerb == "Jumping")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Jumping];
		
		}

//Rising animation
		if (moveVerb == "Rising")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Rising];
		}
	
//Falling animation
		if (moveVerb == "Falling")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Falling];
		}

//Crouching animation
		if (moveVerb == "Crouching")
		{
			image_speed = 1;
			sprite_index = 	animation_List[|animationState.Crouching];
		}
		if (actionVerb == "CrouchAttack")
		{
			image_speed = 1;
			sprite_index = 	animation_List[|animationState.CrouchAttack];
		}
	
	}
	

//Abilities and Flinch
	{
//Ability 1 animation
		if (actionVerb = "Ability1")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Ability1];
		}
	
//Ability 2 animation
		if (actionVerb = "Ability2")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Ability2];
		}
	
//Ability 3 animation	
		if (actionVerb = "Ability3")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Ability3];
		}

//Ability 4 animation	
		if (actionVerb = "Ability4")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Ability4];
		}
	
//Flinching animation	
		if (actionVerb = "Flinching")
		{
			image_speed = 1;
			sprite_index = animation_List[|animationState.Flinching];
		}
//CrouchAttack
	if (actionVerb == "CrouchAttack")
		{
			image_speed = 1;
			sprite_index = 	animation_List[|animationState.CrouchAttack];
		}
	}

//Sprite Facing
	if (hsp != 0) image_xscale = sign(hsp);

//Check Control state
	if(control == controlState.inAbility)
	{
		if(image_index > image_number - 1)
		{
			control = controlState.outAbility;
		}
	}

}