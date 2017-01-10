local t = Def.ActorFrame {};

	t[#t+1] = LoadActor( "../header_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-228;addy,-24;sleep,0.000;linear,0.133;addy,24);
		OffCommand=cmd(linear,0.433;addy,-24);
	};

	t[#t+1] = LoadActor("../timerBG")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y-213);
	};

	t[#t+1] = LoadActor( "headbg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-204;rotationz,360;addy,-89;addy,-8;sleep,0.000;linear,0.316;rotationz,0;addy,89;decelerate,0.033;addy,8);
		OffCommand=cmd(linear,0.066;addy,-8;linear,0.2;rotationz,250;addy,-89;linear,0.05;rotationz,280;diffusealpha,0);
	};

	t[#t+1] = LoadActor("mode")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-45;y,SCREEN_CENTER_Y-226;);
	};

return t;