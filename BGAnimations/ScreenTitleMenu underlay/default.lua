return Def.ActorFrame {

	-- Def.Quad {
	-- 	InitCommand=cmd(horizalign,left;vertalign,top;y,SCREEN_TOP+8);
	-- 	OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.5;zoomto,256,84;faderight,1);
	-- };
	-- Def.Quad {
	-- 	InitCommand=cmd(horizalign,right;vertalign,top;x,SCREEN_RIGHT;y,SCREEN_TOP+8);
	-- 	OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.5;zoomto,256,46;fadeleft,1);
	-- };

	LoadActor( "../ScreenLogo background/ddrx_logobg.png" )..{
		OnCommand=cmd(Center;FullScreen);
	};

	LoadActor( "../ScreenLogo background/ddrx_logobg_bright.png" )..{
		OnCommand=cmd(Center;FullScreen);
	};

	LoadActor( "../ScreenLogo background/ddrx_splat.png" )..{
		OnCommand=cmd(Center;FullScreen);
	};

	-- LoadActor( "../ScreenLogo background/ddrx_light1.png" )..{
	-- 	OnCommand=cmd(diffusealpha,0.2;blend,'BlendMode_Add';horizalign,left;vertalign,top;y,0;x,-320;rotationz,-90;linear,7;rotationz,6;linear,7;rotationz,-90);
	-- 	-- CommandRepeatSeconds=14
	-- };

	-- LoadActor( "../ScreenLogo background/ddrx_light1.png" )..{
	-- 	OnCommand=cmd(diffusealpha,0.2;blend,'BlendMode_Add';horizalign,left;vertalign,top;y,770;x,714;rotationx,180;rotationz,98;linear,7;rotationz,24;linear,7;rotationz,98);
	-- 	-- CommandRepeatSeconds=14
	-- };

	LoadActor( "../ScreenLogo background/ddrx_logo.png" )..{
		OnCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;diffusealpha,0;sleep,0.183;diffusealpha,0.3;zoom,2;accelerate,0.15;zoom,1.2;decelerate,0.15;diffusealpha,0;zoom,1.5;rotationz,3);
	};

	LoadActor( "../ScreenLogo background/ddrx_logo.png" )..{
		OnCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;diffusealpha,0;sleep,0.183;diffusealpha,0.2;zoom,2;accelerate,0.15;diffusealpha,0.8;zoom,1;decelerate,0.033;diffusealpha,1;rotationz,1;accelerate,0.033;rotationz,-2;decelerate,0.033;zoom,1.02;rotationz,-1;accelerate,0.066;zoom,1;rotationz,0);
	};

	LoadActor( "../konami_copyright" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,0.916;linear,0.4;diffusealpha,1);
	};

	-- LoadActor( "../ScreenLogo background/D1.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,2.183;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
	-- 	-- blend,add
	-- 	-- CommandRepeatSeconds=18.6
	-- };

	-- LoadActor( "../ScreenLogo background/D2.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,2.183;sleep,0.466;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
	-- 	-- blend,add
	-- 	-- CommandRepeatSeconds=18.6
	-- };

	-- LoadActor( "../ScreenLogo background/R.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;sleep,2.183;sleep,0.932;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0);
	-- 	-- blend,add
	-- 	-- CommandRepeatSeconds=18.6
	-- };

	-- LoadActor( "../ScreenLogo background/X.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;zoom,1;sleep,2.183;sleep,1.631;linear,0.383;diffusealpha,0.4;zoom,1.15;linear,0.383;diffusealpha,0;zoom,1.3);
	-- 	-- blend,add
	-- 	-- CommandRepeatSeconds=18.6
	-- };

	-- LoadActor( "../ScreenLogo background/X.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;zoom,1;sleep,0.416;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65);
	-- 	-- blend,add
	-- };

	-- LoadActor( "../ScreenLogo background/X.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+215;diffusealpha,0;zoom,1;sleep,0.55;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65);
	-- 	-- blend,add
	-- };

	-- LoadActor( "../_black" )..{
	-- 	OnCommand=cmd(diffusealpha,0;sleep,64.5;accelerate,0.5;diffusealpha,1);
	-- };

	-- LoadActor( "left_tab.png" )..{
	-- 	OnCommand=cmd(x,39;y,240;addx,-78;sleep,0.283;decelerate,0.066;addx,78);
	-- };

	-- LoadActor( "left_panel.png" )..{
	-- 	OnCommand=cmd(x,112;y,212;addx,-224;rotationz,-45;sleep,0.233;decelerate,0.166;addx,224;rotationz,0);
	-- };

	-- LoadActor( "01.png" )..{
	-- 	OnCommand=cmd(x,36;y,192;diffusealpha,0;addx,10;sleep,0.483;diffusealpha,1;decelerate,0.05;addx,-13;accelerate,0.016;addx,3);
	-- };

	-- LoadActor( "02.png" )..{
	-- 	OnCommand=cmd(x,320;y,192;diffusealpha,0;addx,-10;sleep,0.483;diffusealpha,1;decelerate,0.05;addx,13;accelerate,0.016;addx,-3);
	-- };

	-- LoadActor( "image.png" )..{
	-- 	OnCommand=cmd(x,178;y,194;zoomy,0;sleep,0.383;zoomy,0.2;decelerate,0.1;zoomy,1.05;accelerate,0.016;zoomy,1);
	-- };

	-- LoadActor( "dialog_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,410;diffusealpha,0;zoomx,0.1;sleep,0.333;linear,0.083;zoomx,1.1;diffusealpha,1;linear,0.016;zoomx,1);
	-- };

	-- LoadActor( "dialog.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y+170;diffusealpha,0;sleep,0.433;linear,0.05;diffusealpha,1);
	-- };

	-- LoadActor( "choice_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y-176;rotationz,-2;zoomx,0;sleep,0.15;decelerate,0.083;zoomx,1.1;accelerate,0.016;zoomx,1);
	-- };

	-- LoadActor( "choice_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y-134;rotationz,-2;zoomx,0;sleep,0.15;decelerate,0.083;zoomx,1.1;accelerate,0.016;zoomx,1);
	-- };

	-- LoadActor( "choice_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y-102;rotationz,-2;zoomx,0;sleep,0.15;decelerate,0.083;zoomx,1.1;accelerate,0.016;zoomx,1);
	-- };

	-- LoadActor( "choice_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y-70;rotationz,-2;zoomx,0;sleep,0.15;decelerate,0.083;zoomx,1.1;accelerate,0.016;zoomx,1);
	-- };

	-- LoadActor( "choice_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y-38;rotationz,-2;zoomx,0;sleep,0.15;decelerate,0.083;zoomx,1.1;accelerate,0.016;zoomx,1);
	-- };

	-- LoadActor( "choice_frame.png" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y-6;rotationz,-2;zoomx,0;sleep,0.15;decelerate,0.083;zoomx,1.1;accelerate,0.016;zoomx,1);
	-- };

	-- LoadActor( "../_black" )..{
	-- 	OnCommand=cmd(diffusealpha,0;sleep,64.5;accelerate,0.5;diffusealpha,1);
	-- };

};