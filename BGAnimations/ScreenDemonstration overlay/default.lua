return Def.ActorFrame {
	LoadActor("../header_shadow")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-240;vertalign,top;addy,-24;sleep,0.436;accelerate,0.133;addy,24);
	};
	LoadActor("../footer_shadow")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+240;vertalign,bottom;addy,24;sleep,0.436;accelerate,0.133;addy,-24);
	};
	LoadActor("dem")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-157;y,SCREEN_CENTER_Y-230;addy,-67;sleep,0.366;accelerate,0.136;addy,67);
	};
}