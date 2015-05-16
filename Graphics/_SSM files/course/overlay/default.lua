return Def.ActorFrame {
	LoadActor( "../../_shared/back 2x4" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+130;y,SCREEN_CENTER_Y-104;zoom,0;sleep,0.266;linear,0.15;zoom,1);
		OffCommand=cmd(stopeffect;linear,0.166;diffusealpha,0;zoomy,0.5);
	};

	LoadActor( "circle 4x2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+142;y,SCREEN_CENTER_Y-104;zoom,0;spin;effectmagnitude,0,0,-300;sleep,0.266;linear,0.15;zoom,1);
		OffCommand=cmd(stopeffect;linear,0.166;diffusealpha,0;zoomy,0.5);
	};

	LoadActor( "name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+157;y,SCREEN_CENTER_Y-107;shadowlength,2;bob;effectperiod,1;effectmagnitude,0,2,0);
		OffCommand=cmd(stopeffect;linear,0.166;diffusealpha,0;zoomy,0.5);
	};
}