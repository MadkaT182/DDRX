local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	LoadActor("../ScreenLogo background/ddrx_logobg1")..{
	OnCommand=cmd(FullScreen);
	};

	LoadActor("../ScreenLogo background/ddrx_logobg_bright")..{
	OnCommand=cmd(FullScreen;sleep,0.333;decelerate,0.033;zoom,1.02;zoomtowidth,SCREEN_WIDTH*1.02;accelerate,0.033;zoom,1;zoomtowidth,SCREEN_WIDTH;decelerate,0.033;zoom,1.02;zoomtowidth,SCREEN_WIDTH*1.02;accelerate,0.033;zoom,1;zoomtowidth,SCREEN_WIDTH;);
	};

	LoadActor("../ScreenLogo background/ddrx_splat")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-11);
	};

	LoadActor("../ScreenLogo background/ddrx_light1")..{
	OnCommand=cmd(diffusealpha,0.2;horizalign,left;vertalign,top;y,SCREEN_CENTER_Y-240;x,SCREEN_LEFT-253;blend,'BlendMode_Add';rotationz,-90;linear,7;rotationz,6;linear,7;rotationz,-90;queuecommand,"Later");
	LaterCommand=cmd(sleep,14;queuecommand,"On");
	};

	LoadActor("../ScreenLogo background/ddrx_light1")..{
	OnCommand=cmd(diffusealpha,0.2;horizalign,left;vertalign,top;y,SCREEN_CENTER_Y+530;x,SCREEN_RIGHT-20;blend,'BlendMode_Add';rotationx,180;rotationz,98;linear,7;rotationz,24;linear,7;rotationz,98;queuecommand,"Later");
	LaterCommand=cmd(sleep,14;queuecommand,"On");
	};

	LoadActor("../ScreenLogo background/ddrx_logo1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-11;blend,'BlendMode_Add';diffusealpha,0;sleep,0.183;diffusealpha,0.3;zoom,2;accelerate,0.15;zoom,1.2;decelerate,0.15;diffusealpha,0;zoom,1.5;rotationz,3);
	};

	LoadActor("../ScreenLogo background/ddrx_logo1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-11;diffusealpha,0;sleep,0.183;diffusealpha,0.2;zoom,2;accelerate,0.15;diffusealpha,0.8;zoom,1;decelerate,0.033;diffusealpha,1;rotationz,1;accelerate,0.033;rotationz,-2;decelerate,0.033;zoom,1.02;rotationz,-1;accelerate,0.066;zoom,1;rotationz,0);
	};

	LoadActor("../konami_copyright")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+219;diffusealpha,0;sleep,0.916;linear,0.4;diffusealpha,1);
	};

	LoadActor("../ScreenLogo background/d1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-149;y,SCREEN_CENTER_Y;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(sleep,18.6;queuecommand,"On");
	};

	LoadActor("../ScreenLogo background/d2")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-131;y,SCREEN_CENTER_Y+47;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.466;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(sleep,18.6;queuecommand,"On");
	};

	LoadActor("../ScreenLogo background/r")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-23;y,SCREEN_CENTER_Y+99;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.932;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(sleep,18.6;queuecommand,"On");
	};

	LoadActor("../ScreenLogo background/x")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+92;y,SCREEN_CENTER_Y-21;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,2.183;sleep,1.631;linear,0.383;diffusealpha,0.4;zoom,1.15;linear,0.383;diffusealpha,0;zoom,1.3;queuecommand,"Later");
	LaterCommand=cmd(sleep,18.6;queuecommand,"On");
	};

};

if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
	--Home decorations
	t[#t+1] = Def.ActorFrame {
		LoadActor("../_black")..{
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.266;diffusealpha,0.8);
		};

		LoadActor("left_tab")..{
		OnCommand=cmd(x,SCREEN_LEFT+39;y,SCREEN_CENTER_Y;addx,-78;sleep,0.283;decelerate,0.066;addx,78);
		};

		LoadActor("left_panel")..{
		OnCommand=cmd(x,SCREEN_LEFT+112;y,SCREEN_CENTER_Y-28;addx,-224;rotationz,-45;sleep,0.233;decelerate,0.166;addx,224;rotationz,0);
		};

		LoadActor("dialog_frame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+170;diffusealpha,0;zoomx,0.1;sleep,0.333;linear,0.083;zoomx,1.1;diffusealpha,1;linear,0.016;zoomx,1);
		};

		LoadActor("../_black")..{
		OnCommand=cmd(FullScreen;diffusealpha,0);
		OffCommand=cmd(FullScreen;sleep,0.1;accelerate,0.25;diffusealpha,1);
		};

		LoadActor("bgmenu")..{
		OnCommand=cmd(Center;addx,147;addy,-169);
		};

	};
elseif GAMESTATE:GetCoinMode() == 'CoinMode_Pay' then

	t[#t+1] = Def.ActorFrame {
		LoadActor("../_Arcade decorations")..{};
	};

end

return t;