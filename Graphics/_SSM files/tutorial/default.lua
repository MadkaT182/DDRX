return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-196;y,SCREEN_CENTER_Y-104);
	};

	LoadActor( "_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-194;y,SCREEN_CENTER_Y-26);
	};
}