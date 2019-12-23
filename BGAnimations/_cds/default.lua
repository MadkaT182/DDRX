return Def.ActorFrame{
	LoadActor(GetSongDisc(GAMESTATE:GetCurrentSong():GetDisplayMainTitle()))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,1.866;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1;sleep,6;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.1;zoomx,1.625;zoomy,0);
		Condition=GAMESTATE:GetCurrentStage() == "Stage_Final" or GAMESTATE:GetCurrentStage() == "Stage_Extra1" or GAMESTATE:GetCurrentStage() == "Stage_Extra2"
	};
};