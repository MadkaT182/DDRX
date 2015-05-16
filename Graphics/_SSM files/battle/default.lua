return Def.ActorFrame {
	LoadActor( "_img.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-80);
	};

	-- LoadActor( "_wheel" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-73;y,SCREEN_CENTER_Y-134;diffusealpha,0;spin;effectmagnitude,0,0,-300;linear,0.15;diffusealpha,1);
	-- };

	LoadActor( "_img2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-80);
	};
}