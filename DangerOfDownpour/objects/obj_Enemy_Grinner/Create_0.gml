//Init move and gravity
scr_Enemy_General_Init();
scr_Enemy_Grinner_Load();
//Test movement
//hsp = walksp;

//hp
time_in_state = 0;
hp = 20;
flash = 0;
hitfrom = 0;

target = noone;
targetVisible = false;

control = controlState.inAbility;

attackCD = 0;

state = enemyStates.idle;

aggressionTimer = 0;