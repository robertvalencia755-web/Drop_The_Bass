function setForce(_forceMin, _forceMax){
	forceMin = _forceMin;
	forceMax = _forceMax;
}

function setStats(_lossSpeedStep, _direction, _catchMultiplier){
	speed = force;
	lossSpeedStep = _lossSpeedStep;
	direction = _direction;
	catchChance *= _catchMultiplier;
}

function increment(){
	if (alarm[3] == -1){
		alarm[3] = game_get_speed(gamespeed_fps) * .2;
	}
}

function updateForceGUI(){
	var percent = ((force - 2) / 5) * 100;
	draw_healthbar(550, 800, 1200, 900, percent, c_dkgrey, c_yellow, c_lime, 0, true, true);
}





//Default force values
forceMin = 2;
forceMax = 7;
force = forceMin;



landed = false;
objOn = noone;
bob = true;

// Bobber line attachment offset (relative to bobber center)
bobberOffsetX = 10;
bobberOffsetY = 10;