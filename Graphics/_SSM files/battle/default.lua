return Def.ActorFrame {
	LoadActor( "_img.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-80);
	};

	LoadActor( "_img2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-80);
	};

	LoadActor( "_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-36);
	};
}