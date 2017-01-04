return Def.ActorFrame {
	LoadActor("../_black")..{
		OnCommand=cmd(FullScreen;diffusealpha,0;accelerate,0.25;diffusealpha,1);
	};
}