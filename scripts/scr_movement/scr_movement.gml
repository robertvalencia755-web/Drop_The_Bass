function EightMovementControls(right, left, up, down){
	hInput = keyboard_check(right) - keyboard_check(left);
	vInput = keyboard_check(down) - keyboard_check(up);
}

function EightMovement(right, up, left, down) {
	if (hInput != 0 or vInput != 0) {
		direction = point_direction(0, 0, hInput, vInput);
		xSpeed = lengthdir_x(moveSpeed, direction);
		ySpeed = lengthdir_y(moveSpeed, direction);
		
        // horizontal coll
        if (place_meeting(x + xSpeed, y, obj_wall)) {
            while (!place_meeting(x + sign(xSpeed), y, obj_wall)) {
                x += sign(xSpeed);
            }
            xSpeed = 0;
        }
        x += xSpeed;

        // vertical coll
        if (place_meeting(x, y + ySpeed, obj_wall)) {
            while (!place_meeting(x, y + sign(ySpeed), obj_wall)) {
                y += sign(ySpeed);
            }
            ySpeed = 0;
        }
        y += ySpeed;
		
		//Sprite switching anims
		image_speed = 1;
		switch(direction) {
				case 0: sprite_index = right; break;
				//case 45: sprite_index = upRight; break;
				case 90: sprite_index = up; break;
				//case 135: sprite_index = upLeft break;
				case 180: sprite_index = left; break;
				//case 225: sprite_index = downLeft; break;
				case 270: sprite_index = down; break;
				//case 315: sprite_index = downRight; break;
		}
	} else{
		image_speed = 0;
	}
}