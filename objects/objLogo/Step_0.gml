if keyboard_check_pressed(vk_down)
	option += 1;
else if keyboard_check_pressed(vk_up)
	option -= 1;
	
if option < 0
	option = maxOption;
else if option > maxOption
	option = 0;
	
if keyboard_check_pressed(vk_space) {

	switch option {
		case 0:
			room_goto(rmTank);
			break;
		case 1:
			show_message("Options!!!");
			break;
		case 2:
			game_end();
			break;
		default:
			show_message("Error - invalid menu option");
			break;
	}
}
		
			
		