// Check for collision with red Plankton.  kill fish and decrease score if it is so.
// End game if all gone.
instPlace = instance_place(x,y,objRedPlankton)
if instPlace != noone {
	with (self) instance_destroy();
	lives--;
	// Check if all fish dead.  If so, end it.
	if instance_number(objFish) == 0
		room_goto(rmEnd);
	
}

// Check for collision with blue plankton.  Increase score and check for end of level.
instPlace = instance_place(x,y,objBluePlankton)
if instPlace != noone {
	with (instPlace) instance_destroy();
	gameScore++;

	if ( instance_number(objBluePlankton) < (level * 100)) {
		level++;
		room_restart();
	}
}


// Accelerate fish towards mouse pointer if the pointer is to the left
if (mouse_x < x && fishXSpeed > -maxXSpeed && abs(mouse_x - x) > fishAcceleration)
	fishXSpeed -= fishAcceleration;
// Accelerate fish towards mouse pointer if the pointer is to the right
else if (mouse_x > x && fishXSpeed < maxXSpeed && abs(mouse_x - x) > fishAcceleration)
	fishXSpeed += fishAcceleration;
// If fish is very near mouse, decelerate to 0
else if (fishXSpeed > 0)
	fishXSpeed -= 1;
else if (fishXSpeed < 0)
	fishXSpeed += 1;
	
	
// Accelerate fish towards mouse pointer if the pointer is to the top
if (mouse_y < y && fishYSpeed > -maxYSpeed && abs(mouse_y - y) > fishAcceleration)
	fishYSpeed -= fishAcceleration;
// Accelerate fish towards mouse pointer if the pointer is to the right
else if (mouse_y > y && fishYSpeed < maxYSpeed && abs(mouse_y - y) > fishAcceleration)
	fishYSpeed += fishAcceleration;
// If fish is very near mouse, decelerate to 0
else if (fishYSpeed > 0)
	fishYSpeed -= 1;
else if (fishYSpeed < 0)
	fishYSpeed += 1;


// Check whether fish needs to flip i.e. speed changed from -ve to +ve
// or vice versa
if(((xSpdPositive && fishXSpeed < 0) 
	|| (!xSpdPositive && fishXSpeed > 0))) {
		// Flip image of fish
		objFish.image_xscale = -objFish.image_xscale;
		if (xSpdPositive)
			xSpdPositive = false;
		else
			xSpdPositive = true;
		
		// Make whoosh sound if time since last sound > whoosh delay
		if(get_timer() > lastFlipTime + whooshDelay){
			//audio_play_sound(sndWaterWhirl, 1, false);
			lastFlipTime = get_timer();
		}
}
	


moveRnd = irandom(7);

// Move the fish up down left or right a little, at random, to keep swarm from grathering up.
if (moveRnd < 4) {
	switch(moveRnd) {
		case 0:
			fishXSpeed+=irandom(3);
		break;
		case 1:
			fishXSpeed-=irandom(3);
		break;
		case 2:
			fishYSpeed+=irandom(3);
		break;
		case 3:
			fishYSpeed-=irandom(3);
		break;
		default:
			show_message("Random fish movement fuck up!");
			break;
	}
}
	
// Move the fish
if (fishXSpeed > 0 && x+fishXSpeed < levelX) || (fishXSpeed < 0 && x+fishXSpeed > 0)
	x += fishXSpeed;

// If not hitting seabed, move down, otherwise ignore.
//if !place_meeting(x, y+fishYSpeed, objSeaBed1) && !place_meeting(x, y+fishYSpeed, objSeaBed2)
if fishYSpeed > 0 || y -fishYSpeed > 0
	y += fishYSpeed;	


	
// TODO: Remove - Change screen 
//if keyboard_check_pressed(vk_ralt)
//	room_goto(rmEnd);

