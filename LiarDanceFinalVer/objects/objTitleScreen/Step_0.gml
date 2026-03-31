

if(MenuMode)
{
CanSelectStep+=1
if(!MenuSelect and !DataWarn and !OptionMode and !RoomTrance and CanSelectStep>50)
{
        if (scrButtonCheckPressed(global.menuUpButton)) { 
            audio_play_sound(sndTitleMove,0,false);
            fileSelect -= 1;
            if (fileSelect < 0) {
                fileSelect = 2;
			}
        }  
		if(scrButtonCheckPressed(global.menuDownButton)) {
            audio_play_sound(sndTitleMove,0,false);
            fileSelect += 1;
            if (fileSelect > 2) {
                fileSelect = 0;
			}
        }
		if (scrButtonCheckPressed(global.menuAcceptButton)) {
			if(fileSelect=0)
             {
if(file_exists("Data\\save"+string(1))){LoadMode=1 RoomTrance=1 MenuSelect=1 audio_play_sound(sndTitleAccept,0,false);}
else
{
                        global.gameStarted = true;
                        global.autosave = true;
                        
                        global.difficulty = 1;
                        
						RoomTrance=1 MenuSelect=1
						audio_play_sound(sndTitleAccept,0,false);
}
			}	
			if(fileSelect=1)
			{
                    if (!file_exists("Data\\save"+string(1))) {
                        global.gameStarted = true;
                        global.autosave = true;
                        
                        global.difficulty = 1;
                        
						RoomTrance=1 MenuSelect=1
						audio_play_sound(sndTitleAccept,0,false);
                    }
					else
					{
						MenuSelect=1
						DataWarn=1
						audio_play_sound(sndTitleAccept,0,false);
					}
			}	
			if(fileSelect=2)
			{
	MenuSelect=1 OptionMode=1
	instance_create_depth(0,0,depth-1,objOptionsMenu)
	audio_play_sound(sndTitleAccept,0,false);
            }
		}
			
}

else if(DataWarn and !RoomTrance)
{
if (scrButtonCheckPressed(global.menuAcceptButton)) {
	
                        global.gameStarted = true;
                        global.autosave = true;
                        
                        global.difficulty = 1;
                        audio_play_sound(sndTitleAccept,0,false);
						RoomTrance=1 MenuSelect=1
}
if (scrButtonCheckPressed(global.menuBackButton)) {
DataWarn=0
MenuSelect=0
audio_play_sound(sndTitleCancel,0,false);
}

}

else if(OptionMode)
{
if (scrButtonCheckPressed(global.menuBackButton) and instance_exists(objOptionsMenu)) {
	audio_play_sound(sndTitleCancel,0,false);
OptionMode=0
MenuSelect=0
with(objOptionsMenu){des()}
}

}

else if(RoomTrance)
{
RoomTranceStep+=1
if(!instance_exists(objScreenChangeBlackWall)){cre(0,0,objScreenChangeBlackWall)}
if(RoomTranceStep=50){
if(!LoadMode){room_goto(global.startRoom)}
	else{scrLoadGame(true)}
	}
}


}
else if (scrButtonCheckPressed(global.menuAcceptButton)){MenuMode=1 audio_play_sound(sndTitleAccept,0,false);}
