return Def.ActorFrame {
	LoadActor("bga")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("../_black")..{
		OnCommand=cmd(FullScreen;diffusealpha,.5);
	};
}