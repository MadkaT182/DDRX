return Def.ActorFrame {
	LoadActor( "info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+89);
		OffCommand=cmd();
	};
}