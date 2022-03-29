return Def.ActorFrame {
	LoadActor("../failed")..{
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("cage")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addy,-480;sleep,0;accelerate,.316;addy,480;sleep,3;diffusealpha,0);
	};
	LoadActor("../door1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH/2;sleep,0;sleep,.316;linear,.2;addx,SCREEN_WIDTH/2;sleep,2.267);
	};
	LoadActor("../door2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH/2;sleep,0;sleep,.316;linear,.2;addx,-SCREEN_WIDTH/2;sleep,2.267);
	};
	LoadActor("../ScreenGameplay out/s01")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+188;y,SCREEN_CENTER_Y-115;diffusealpha,0;sleep,0;sleep,.766;diffusealpha,1);
	};
	LoadActor("../ScreenGameplay out/s02")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,0;sleep,.833;diffusealpha,1);
	};
	LoadActor("../ScreenGameplay out/s01")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-104;y,SCREEN_CENTER_Y+109;diffusealpha,0;sleep,0;sleep,.883;diffusealpha,1);
	};
	LoadActor("../ScreenGameplay out/s03")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+96;y,SCREEN_CENTER_Y+22;diffusealpha,0;sleep,0;sleep,.899;diffusealpha,1);
	};
	LoadActor("../ScreenGameplay out/s04")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+20;diffusealpha,0;sleep,0;sleep,.933;diffusealpha,1);
	};
	LoadActor("../ScreenGameplay out/s05")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+134;y,SCREEN_CENTER_Y-102;diffusealpha,0;sleep,0;sleep,.966;diffusealpha,1);
	};
	LoadActor("failed")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-59;vertalign,top;diffusealpha,0;rotationz,-35.5;sleep,0;sleep,.233;accelerate,.316;rotationz,0;diffusealpha,1;accelerate,.05;zoom,1.6;decelerate,.083;zoom,.95;decelerate,.016;zoom,1);
	};
}