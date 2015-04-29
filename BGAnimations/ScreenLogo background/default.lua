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

	LoadActor( "ddrx_light1.png" )..{
		OnCommand=cmd(diffusealpha,0.2;blend,'BlendMode_Add';horizalign,left;vertalign,top;y,0;x,-320;rotationz,-90;linear,7;rotationz,6;linear,7;rotationz,-90);
		-- CommandRepeatSeconds=14
	};

	LoadActor( "ddrx_light1.png" )..{
		OnCommand=cmd(diffusealpha,0.2;blend,'BlendMode_Add';horizalign,left;vertalign,top;y,770;x,540;rotationx,180;rotationz,98;linear,7;rotationz,24;linear,7;rotationz,98);
		-- CommandRepeatSeconds=14
	};

	LoadActor( "ddrx_logo.png" )..{
		OnCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;diffusealpha,0;sleep,0.183;diffusealpha,0.3;zoom,2;accelerate,0.15;zoom,1.2;decelerate,0.15;diffusealpha,0;zoom,1.5;rotationz,3);
		-- OnCommand=cmd(y,SCREEN_CENTER_Y-11;x,SCREEN_CENTER_X;addx,-720;sleep,0.5;linear,0.533;addx,720;linear,0.233;zoom,1.1;linear,0.133;zoom,1);
	};

	LoadActor( "ddrx_logo.png" )..{
		OnCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;diffusealpha,0;sleep,0.183;diffusealpha,0.2;zoom,2;accelerate,0.15;diffusealpha,0.8;zoom,1;decelerate,0.033;diffusealpha,1;rotationz,1;accelerate,0.033;rotationz,-2;decelerate,0.033;zoom,1.02;rotationz,-1;accelerate,0.066;zoom,1;rotationz,0);
		-- OnCommand=cmd(y,SCREEN_CENTER_Y-11;x,SCREEN_CENTER_X;addx,-720;sleep,0.5;linear,0.533;addx,720;linear,0.233;zoom,1.1;linear,0.133;zoom,1);
	};

	LoadActor( "../konami_copyright" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,0.916;linear,0.4;diffusealpha,1);
	};

	LoadActor( "D1.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
		-- CommandRepeatSeconds=18.6
	};

	LoadActor( "D2.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.466;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
		-- CommandRepeatSeconds=18.6
	};

	LoadActor( "R.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.932;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
		-- CommandRepeatSeconds=18.6
	};

	LoadActor( "X.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,2.183;sleep,1.631;linear,0.383;diffusealpha,0.4;zoom,1.15;linear,0.383;diffusealpha,0;zoom,1.3);
		-- CommandRepeatSeconds=18.6
	};

	LoadActor( "X.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,0.416;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65);
	};

	LoadActor( "X.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,0.55;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65);
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