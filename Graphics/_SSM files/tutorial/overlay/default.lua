return Def.ActorFrame {
	LoadActor( "../../_shared/back" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-300;zoom,0;sleep,0.266;linear,0.15;zoom,1);
		OffCommand=cmd(stopeffect;linear,0.166;zoomy,0.5);
	};

	LoadActor( "circle" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-287;zoom,0;spin;effectmagnitude,0,0,-300;sleep,0.266;linear,0.15;zoom,1);
		OffCommand=cmd(stopeffect;linear,0.166;zoomy,0.5);
	};

	LoadActor( "name" )..{
		OnCommand=cmd(shadowlength,2;bob;effectperiod,1;effectmagnitude,0,2,0);
		OffCommand=cmd(stopeffect;linear,0.166;zoomy,0.5);
	};
}