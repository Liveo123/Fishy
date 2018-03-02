distFromTxt = 4;

draw_self();

// Draw arrow
draw_sprite(sprArrow, 0, optStartX - distFromTxt, optStartY[option]);


// Draw text
draw_set_font(fntStartScreen);
draw_set_valign(fa_middle);

for (j=0; j<=maxOption; j++){
	draw_text(optStartX, optStartY[j], mnuTxt[j]);
}

