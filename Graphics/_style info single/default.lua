return Def.ActorFrame {
	LoadActor( "info" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-21;y,SCREEN_CENTER_Y-335);
		OnCommand=cmd();
	};
}