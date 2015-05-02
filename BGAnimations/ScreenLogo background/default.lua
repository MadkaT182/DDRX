return Def.ActorFrame {

	LoadActor( "ddrx_logobg.png" )..{
		OnCommand=cmd(Center;FullScreen;linear,0.75);
	};

	LoadActor( "ddrx_logobg_bright.png" )..{
		OnCommand=cmd(Center;FullScreen;linear,0.75;sleep,0.333;decelerate,0.033;accelerate,0.033;decelerate,0.033;accelerate,0.033);
		-- OnCommand=cmd(Center;FullScreen;linear,0.75;sleep,0.333;decelerate,0.033;zoom,1.02;accelerate,0.033;zoom,1;decelerate,0.033;zoom,1.02;accelerate,0.033;zoom,1);
	};

	LoadActor( "ddrx_splat.png" )..{
		OnCommand=cmd(Center;FullScreen;linear,0.75);
	};

	LoadActor( "../ScreenLogo background/ddrx_light1.png" )..{
	OnCommand=cmd(queuecommand,"Animate";queuecommand,"Later");
	AnimateCommand=cmd(diffusealpha,0.2;blend,'BlendMode_Add';horizalign,left;vertalign,top;y,0;x,-320;rotationz,-90;linear,7;rotationz,6;linear,7;rotationz,-90);
	LaterCommand=cmd(sleep,14;queuecommand,"Animate");
	};

	LoadActor( "../ScreenLogo background/ddrx_light1.png" )..{
	OnCommand=cmd(queuecommand,"Animate";queuecommand,"Later");
	AnimateCommand=cmd(diffusealpha,0.2;blend,'BlendMode_Add';horizalign,left;vertalign,top;y,770;x,714;rotationx,180;rotationz,98;linear,7;rotationz,24;linear,7;rotationz,98);
	LaterCommand=cmd(sleep,14;queuecommand,"Animate");
	};

	LoadActor( "ddrx_logo.png" )..{
		OnCommand=cmd(queuecommand,"Logo");
		LogoCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;diffusealpha,0;sleep,0.183;diffusealpha,0.3;zoom,2;accelerate,0.15;zoom,1.2;decelerate,0.15;diffusealpha,0;zoom,1.5;rotationz,3);
		-- OnCommand=cmd(y,SCREEN_CENTER_Y-11;x,SCREEN_CENTER_X;addx,-720;sleep,0.5;linear,0.533;addx,720;linear,0.233;zoom,1.1;linear,0.133;zoom,1);
	};

	LoadActor( "ddrx_logo.png" )..{
		OnCommand=cmd(queuecommand,"Logo");
		LogoCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;diffusealpha,0;sleep,0.183;diffusealpha,0.2;zoom,2;accelerate,0.15;diffusealpha,0.8;zoom,1;decelerate,0.033;diffusealpha,1;rotationz,1;accelerate,0.033;rotationz,-2;decelerate,0.033;zoom,1.02;rotationz,-1;accelerate,0.066;zoom,1;rotationz,0);
		-- OnCommand=cmd(y,SCREEN_CENTER_Y-11;x,SCREEN_CENTER_X;addx,-720;sleep,0.5;linear,0.533;addx,720;linear,0.233;zoom,1.1;linear,0.133;zoom,1);
	};

	LoadActor( "../konami_copyright" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,0.916;linear,0.4;diffusealpha,1);
	};

	LoadActor( "D1.png" )..{
		OnCommand=cmd(queuecommand,"D1";queuecommand,"Later");
		D1Command=cmd(x,SCREEN_CENTER_X-156;y,SCREEN_CENTER_Y+11;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
		LaterCommand=cmd(sleep,18.6;queuecommand,"D1");
	};

	LoadActor( "D2.png" )..{
		OnCommand=cmd(queuecommand,"D2";queuecommand,"Later");
		D2Command=cmd(x,SCREEN_CENTER_X-138;y,SCREEN_CENTER_Y+58;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.466;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
		LaterCommand=cmd(sleep,18.6;queuecommand,"D2";queuecommand,"Later");
	};

	LoadActor( "R.png" )..{
		OnCommand=cmd(queuecommand,"R";queuecommand,"Later");
		RCommand=cmd(x,SCREEN_CENTER_X-30;y,SCREEN_CENTER_Y+110;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.932;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
		LaterCommand=cmd(sleep,18.6;queuecommand,"R";queuecommand,"Later");
	};

	LoadActor( "X.png" )..{
		OnCommand=cmd(queuecommand,"X1";queuecommand,"Later");
		X1Command=cmd(x,SCREEN_CENTER_X+84;y,SCREEN_CENTER_Y-11;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,2.183;sleep,1.631;linear,0.383;diffusealpha,0.4;zoom,1.15;linear,0.383;diffusealpha,0;zoom,1.3);
		LaterCommand=cmd(sleep,18.6;queuecommand,"X1";queuecommand,"Later");
	};

	LoadActor( "X.png" )..{
		OnCommand=cmd(queuecommand,"X2";queuecommand,"Later");
		X2Command=cmd(x,SCREEN_CENTER_X+84;y,SCREEN_CENTER_Y-11;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,0.416;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65);
	};

	LoadActor( "X.png" )..{
		OnCommand=cmd(queuecommand,"X3";queuecommand,"Later");
		X3Command=cmd(x,SCREEN_CENTER_X+84;y,SCREEN_CENTER_Y-11;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,0.55;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65);
	};

	LoadActor( "serial.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-323;y,SCREEN_CENTER_Y-224);
	};

	LoadActor( "../_black" )..{
		OnCommand=cmd(diffusealpha,1;decelerate,0.166;diffusealpha,0);
	};

	LoadActor( "../_black" )..{
		OnCommand=cmd(diffusealpha,0;sleep,64.5;accelerate,0.5;diffusealpha,1);
	};
}

-- Initial addx were + or - 534
-- x,SCREEN_CENTER_X;