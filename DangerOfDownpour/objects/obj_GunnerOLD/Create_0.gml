//Init move and gravity
hsp = 0;
vsp = 0;
grv = 0.4;
walksp = 2;
facing = sign(hsp);

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