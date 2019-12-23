local t = Def.ActorFrame {
	LoadActor( "../_header" )..{};
	LoadActor( "../_footer" )..{};
	LoadActor( "../_footer/style" )..{
		OnCommand=cmd(draworder,1)
	};
	LoadActor("../_titles/sel_opt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,.516;sleep,.283;decelerate,.083;diffusealpha,1;decelerate,.083;zoom,1);
		OffCommand=cmd(linear,.05;addx,-35;diffusealpha,0);
	};
};

return t;