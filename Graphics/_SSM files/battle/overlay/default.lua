return Def.ActorFrame {
	LoadActor( "circle 4x2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+31;y,SCREEN_CENTER_Y-50;zoom,0;spin;effectmagnitude,0,0,-300;sleep,0.266;linear,0.15;zoom,1);
		OffCommand=cmd(stopeffect;linear,0.166;diffusealpha,0;zoomy,0.5);
	};

	LoadActor( "name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+39;y,SCREEN_CENTER_Y-50;shadowlength,2;bob;effectperiod,1;effectmagnitude,0,2,0);
		OffCommand=cmd(stopeffect;linear,0.166;diffusealpha,0;zoomy,0.5);
	};
}