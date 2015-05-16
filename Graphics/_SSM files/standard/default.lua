return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-120;y,SCREEN_CENTER_Y-80);
	};

	-- LoadActor( "_wheel" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-134;diffusealpha,0;spin;effectmagnitude,0,0,-300;linear,0.15;diffusealpha,1);
	-- };
}