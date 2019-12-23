local path = "../ScreenSelectMusic decorations/"
local t = Def.ActorFrame {
	LoadActor(path.."_bg")..{
		OnCommand=cmd(FullScreen;cropbottom,1;sleep,.265;linear,.25;cropbottom,0);
		OffCommand=cmd(sleep,.016;accelerate,.25;addx,380);
	};
	LoadActor("../_header/music");
	LoadActor("../_titles/sel_course")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,.283;decelerate,.083;diffusealpha,1;decelerate,.083;zoom,1);
		OffCommand=cmd(linear,.05;addx,-35;diffusealpha,0);
	};
	LoadActor("../_header/mode")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y-223);
		OffCommand=cmd(linear,.05;addx,-35;diffusealpha,0);
	};
	LoadActor("../_footer");
	LoadActor("../_footer/music");
	LoadActor(path.."playerframe_bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-170;y,SCREEN_CENTER_Y+93;addx,-294;rotationz,-90;diffusealpha,0;sleep,.2;linear,.166;rotationz,0;addx,230;diffusealpha,1;linear,.05;rotationz,10;addx,64;linear,.066;rotationz,0);
		OffCommand=cmd(sleep,.266;accelerate,.133;addx,-SCREEN_WIDTH/2);
	};
	LoadActor("banner")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-177;y,SCREEN_CENTER_Y-136);
	};
	LoadActor("courselist_AC")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-170;y,SCREEN_CENTER_Y+61);
	};
	LoadActor(THEME:GetPathG("","CourseDiffList"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X-170;y,SCREEN_CENTER_Y+155);
	};
};

return t;