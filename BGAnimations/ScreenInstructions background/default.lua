return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "instructions" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addx,640;linear,0.25;addx,-640);
		OffCommand=cmd(linear,0.29;addx,-720);
	};
}