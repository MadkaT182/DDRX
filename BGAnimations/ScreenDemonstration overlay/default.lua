return Def.ActorFrame {
	LoadActor( "../footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+240;vertalign,bottom;addy,23;sleep,0.436;accelerate,0.133;addy,-22);
	};

	LoadActor( "../footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-240;vertalign,top;addy,-23;sleep,0.436;accelerate,0.133;addy,22);
	};

	LoadActor( "dem" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-236;addy,-62;sleep,0.366;accelerate,0.136;addy,62);
	};

	LoadActor( "../_black" )..{
		OnCommand=cmd(diffusealpha,1;decelerate,0.25;diffusealpha,0);
	};

	LoadActor( "../_black" )..{
		OnCommand=cmd(diffusealpha,0;sleep,89.74;accelerate,0.25;diffusealpha,1);
	};
}