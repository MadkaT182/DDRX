local t = Def.ActorFrame {
	LoadActor( "../_header/clean" )..{};
	LoadActor( "../_footer" )..{
		OnCommand=cmd(draworder,1)
	};
	LoadActor( "../_footer/style" )..{
		OnCommand=cmd(draworder,1)
	};
	LoadActor("../_titles/option")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,0.516000;sleep,0.283;decelerate,0.083;diffusealpha,1;decelerate,0.083;zoom,1);
	OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
	};

	--Dummy rows
	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y-171);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y-141);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y-111);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y-81);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y-51);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y-21);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+188;y,SCREEN_CENTER_Y+9);
	OffCommand=cmd();
	};

	LoadActor("rowbg")..{
	OnCommand=cmd(x,SCREEN_LEFT+100;y,SCREEN_CENTER_Y+39);
	OffCommand=cmd();
	};

	LoadActor( "../CommonScreen/sides" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_BOTTOM-90;);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
	};

	LoadActor( "../CommonScreen/sides" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+302;y,SCREEN_BOTTOM-90;zoomx,-1);
		OffCommand=cmd(accelerate,0.233;addx,-20;sleep,0;diffusealpha,0);
	};
	LoadActor("description")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-110);
	OffCommand=cmd();
	};
};

return t;