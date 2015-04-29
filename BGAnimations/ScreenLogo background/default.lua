return Def.ActorFrame {
	
	LoadActor( "ddrx_logobg.png" )..{
		OnCommand=cmd(Center;FullScreen;linear,0.75);
	};

	LoadActor( "ddrx_logo.png" )..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-11;x,SCREEN_CENTER_X;addx,-720;sleep,0.5;linear,0.533;addx,720;linear,0.233;zoom,1.1;linear,0.133;zoom,1);
	};

	LoadActor( "ddrx_logo2" )..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-11;x,SCREEN_CENTER_X;addx,720;sleep,0.5;linear,0.533;addx,-720;linear,0.233;zoom,1.1;linear,0.133;zoom,1);
	};

	LoadActor( "../konami_copyright" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,0.916;linear,0.4;diffusealpha,1);
	};

	LoadActor( "../_black" )..{
		OnCommand=cmd(diffusealpha,1;decelerate,0.166;diffusealpha,0);
	};
}

-- Initial addx were + or - 534
-- x,SCREEN_CENTER_X;