/// @function scr_Enemy_TakeDamage(damage, flashTime, aggressionTime, flinch)
//
/// @description Have enemy object take damage, trigger flash shader, give aggression, and flinch bool.
/// @param {number} damage The amount of damage to take.
/// @param {number} flashTime How many frames to flash for damage.
/// @param {number} aggressionTime How long the target should be aggressive and chase player.
/// @param {real} flinch If the Enemy should flinch from the attack.

var damage, flashTime, aggressionTime, flinch;

///Grab Arguments
	damage = argument0;
	flashTime = argument1;
	aggressionTime = argument2;
	flinch = argument3;

hp = hp - damage;
flash = flashTime;
aggressionTimer += aggressionTime;
flinchTrigger = flinch;