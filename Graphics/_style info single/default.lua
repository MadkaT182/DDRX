return Def.ActorFrame {
	LoadActor( "info" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-350);
		OnCommand=cmd();
	};
}