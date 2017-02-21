local t = Def.ActorFrame {};

t[#t+1] = LoadActor("dolby")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+28;sleep,86;linear,4;y,SCREEN_TOP-28;);
};

return t;