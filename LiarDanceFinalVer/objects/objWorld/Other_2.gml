/// @description Initialize everything

// Initialize all variables
scrInitGlobals();

// Load the current config file (sets default config if it doesn't exist)
scrLoadConfig();

if (NO_FILE_SELECT_MODE) { // No file select mode is on, immediately start a new file
	// Start a new game using file 0
	global.saveNum = 0;
	
	if (file_exists("Data\\save"+string(global.saveNum))) {
		file_delete("Data\\save"+string(global.saveNum));
	}
	
	global.gameStarted = true; // Sets game in progress (enables saving, restarting, etc.)
	global.autosave = true;
	
	global.difficulty = 1; // Set to hard mode
	
	room_goto(global.startRoom);
} else { // No file select mode is off, go to the main menu
	room_goto_next();
}

sprite_prefetch(shSSMirror)
sprite_prefetch(sprAvdTeto1)
sprite_prefetch(sprAvdTeto2)
sprite_prefetch(sprDtetS)
sprite_prefetch(sprHukidashi)
sprite_prefetch(sprSSBgSquare)
sprite_prefetch(sprSSBlack1)
sprite_prefetch(sprSSBrighting)
sprite_prefetch(sprSSCherry1)
sprite_prefetch(sprSSDarkness)
sprite_prefetch(sprSSLight)
sprite_prefetch(sprSSNothing)
sprite_prefetch(sprSSPlayer)
sprite_prefetch(sprSSSabTt)
sprite_prefetch(sprSSSBg)
sprite_prefetch(sprSSShapedStar)
sprite_prefetch(sprSSTen)
sprite_prefetch(sprSSTetKid)
sprite_prefetch(sprSSTetKidBg)
sprite_prefetch(sprSSWhite1)
sprite_prefetch(sprT4P)
sprite_prefetch(sprTetoDance)
sprite_prefetch(sprTetoFD)
sprite_prefetch(sprWorkingTeto)
sprite_prefetch(sprLiarDanceAtk1TransitionText)
sprite_prefetch(sprLiarDanceAtk3Cloud)
sprite_prefetch(sprLiarDanceAtk3CloudDistorted)
sprite_prefetch(sprLiarDanceAtk3Phone)
sprite_prefetch(sprLiarDanceAtk3VariousScreens)
sprite_prefetch(sprLiarDanceHappyTeto)
sprite_prefetch(sprLiarDanceAtk4Road)
sprite_prefetch(sprLiarDanceAtk4Signs)
sprite_prefetch(sprLiarDanceAtk4WhiteNoiseTexture)
sprite_prefetch(sprLiarDanceAtk5BRB)
sprite_prefetch(sprLiarDanceAtk5CherryStar)
sprite_prefetch(sprLiarDanceAtk5KaijuBG)
sprite_prefetch(sprLiarDanceAtk5Spotlight)
sprite_prefetch(sprLiarDanceAtk5TechnicalIssues)
sprite_prefetch(sprLiarDanceAtk6CherryLine)
sprite_prefetch(sprLiarDanceAtk6Dance)
sprite_prefetch(sprLiarDanceAtk6Glow)
sprite_prefetch(sprLiarDanceAtk6Liar)
sprite_prefetch(sprLiarDanceAtk6MayuLine)
sprite_prefetch(sprLiarDanceAtk6NeonTeto)
sprite_prefetch(sprLiarDanceAtk6PlayerFall)
sprite_prefetch(sprLiarDanceAtk6Teto)
sprite_prefetch(sprLiarDanceAtk6TetoSilhoulette)
sprite_prefetch(sprLiarDanceAtk6Usodeodorunosa)
sprite_prefetch(sprBlockMaskCentered)
sprite_prefetch(sprCustomGreyCherry)
sprite_prefetch(sprCustomRegularCherry)
sprite_prefetch(sprEmptyCherry)
sprite_prefetch(sprInvertedLeeheCherry)
sprite_prefetch(sprLeeheCherry)
sprite_prefetch(sprMayuCherry)
sprite_prefetch(sprWBCherry)
sprite_prefetch(sprWBCherry_2)
sprite_prefetch(sprWhiteCherry)