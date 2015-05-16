return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd();
	};

	LoadActor( "_wheel" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-393;y,SCREEN_CENTER_Y-295;zoom,0;spin;effectmagnitude,0,0,-300;sleep,0.266;linear,0.15;zoom,1);
	};
}