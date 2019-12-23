return Def.ActorFrame{
	LoadActor("_black")..{
		OnCommand=cmd(diffusealpha,0;sleep,1.5;);
	};
};