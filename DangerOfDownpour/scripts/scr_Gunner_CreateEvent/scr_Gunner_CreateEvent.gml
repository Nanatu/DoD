/// @function scr_Gunner_CreateEvent
//
/// @description Gunner create event

scr_Enemy_General_Init();
scr_Enemy_Gunner_Load();

//Init move and gravity
hsp = 0;
vsp = 0;
grv = 0.4;
walksp = 2;
facing = sign(hsp);
attackCD = 0;
time_in_state = 0;
//Test walking
hsp = walksp;

//Enemy specific values
hp = 20;
flash = 0;
hitfrom = 0;
facing = sign(hsp);
sightRange = 15;
fireCD = 30;
targetVisible = false;

target = noone;

control = controlState.inAbility;

state = enemyStates.idle;
