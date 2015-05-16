return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y-80);
	};

	-- LoadActor( "_wheel" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-134;zoom,0;spin;effectmagnitude,0,0,-300;sleep,0.266;linear,0.15;zoom,1);
	-- };
}