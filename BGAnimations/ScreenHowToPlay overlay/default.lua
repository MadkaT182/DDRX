local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	LoadActor("howto")..{
	OnCommand=cmd(draworder,1;zoom,.75;Center;diffusealpha,0;sleep,0.32;linear,0.28;rotationz,360;zoom,1;diffusealpha,1;linear,0.04;addy,-8;sleep,0.04;linear,0.24;addy,8;linear,0.24;addy,-8;linear,0.24;addy,8;linear,0.24;addy,-8;rotationz,-135;diffusealpha,0);
	};

	LoadActor("htmini")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+152;y,SCREEN_CENTER_Y-199;draworder,1;diffusealpha,0;sleep,1.74;linear,0.28;rotationz,360;zoom,1;diffusealpha,1;);
	};

	LoadActor("../_black")..{
	OnCommand=cmd(draworder,1;FullScreen;linear,0.72;diffusealpha,0);
	};

	LoadActor("feetlbl")..{
	OnCommand=cmd(diffusealpha,0;Center;sleep,1.8;linear,.16;diffusealpha,1;sleep,1.32;linear,.16;diffusealpha,0;);
	};

	LoadActor("htp01")..{
	OnCommand=cmd(zoomy,0;sleep,5.88;linear,.28;zoomy,1;sleep,5.2;diffusealpha,0);
	};

	LoadActor("htp02")..{
	OnCommand=cmd(zoomy,0;sleep,15.52;linear,.28;zoomy,1;sleep,5.2;diffusealpha,0);
	};

	LoadActor("htp03")..{
	OnCommand=cmd(zoomy,0;sleep,24.04;linear,.28;zoomy,1;sleep,5.2;diffusealpha,0);
	};

	LoadActor("htp04")..{
	OnCommand=cmd(zoomy,0;sleep,30.84;linear,.28;zoomy,1;sleep,5.2;diffusealpha,0);
	};

	LoadActor("htp05")..{
	OnCommand=cmd(zoomy,0;sleep,39.04;linear,.28;zoomy,1;sleep,5.2;diffusealpha,0);
	};

	LoadActor("htp06")..{
	OnCommand=cmd(zoomy,0;sleep,48.36;linear,.28;zoomy,1;sleep,5.2;diffusealpha,0);
	};

};

return t;