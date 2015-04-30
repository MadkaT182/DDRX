return Def.ActorFrame {
	LoadActor( "footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+229;zoomx, 1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor( "command_bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		--OnCommand=cmd(x,SCREEN_CENTER_X+283;y,SCREEN_CENTER_Y+210;addx,272;sleep,0.033;decelerate,0.233;addx,-272);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};
}