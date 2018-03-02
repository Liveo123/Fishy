moveRnd = irandom(3);

// Move the plankton up down left or right a little, at random.
switch(moveRnd) {
	case 0:
		x+=irandom(3);
		break;
	case 1:
		x-=irandom(3);
		break;
	case 2:
		y+=irandom(3);
		break;
	case 3:
		y-=irandom(3);
		break;
	default:
		show_message("Random fish movement fuck up!");
		break;
}
