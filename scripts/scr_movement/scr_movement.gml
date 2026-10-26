function EightMovementControls(right, left, up, down){
	hInput = keyboard_check(right) - keyboard_check(left);
	vInput = keyboard_check(down) - keyboard_check(up);
}

function EightMovement(right, upRight, up, upLeft, left, downLeft, down, downRight) {
	if (hInput != 0 or vInput != 0) {
		dir = point_direction(0, 0, hInput, vInput);
		xSpeed = lengthdir_x(moveSpeed, dir);
		ySpeed = lengthdir_y(moveSpeed, dir);
		
		x += xSpeed;
		y += ySpeed;
		
		//Sprite switching anims
		switch(dir) {
				case 0: sprite_index = right; break;
				case 45: sprite_index = upRight; break;
				case 90: sprite_index = up; break;
				case 135: sprite_index = upLeft break;
				case 180: sprite_index = left; break;
				case 225: sprite_index = downLeft; break;
				case 270: sprite_index = down; break;
				case 315: sprite_index = downRight; break;
		}
	}
}