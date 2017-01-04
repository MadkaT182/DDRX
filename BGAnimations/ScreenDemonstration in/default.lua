return Def.ActorFrame {
	LoadActor("../_black")..{
		OnCommand=cmd(FullScreen;diffusealpha,1;decelerate,0.25;diffusealpha,0);
	};
}