// Options on menu
option = 0;
maxOption = 2;

// x and y pixels where menu options lettering starts
optStartX = 260;

// Pixel difference between menu options
optDiff = 30;

// y pixels for each menu option
for(i = 0; i <= maxOption; i++)
	optStartY[i] = 220 + i*optDiff;
	
mnuTxt[0] = "New Game";
mnuTxt[1] = "Credits";
mnuTxt[2] = "Quit";

globalvar level;
level = 1;

globalvar lvlTimer;
lvlTimer = 60;

globalvar levelX;
levelX = 1200;

globalvar levelY;
levelY = 800;

globalvar gameScore;
gameScore = 0;

globalvar highScore;
highScore = 0;

lives = 50;
