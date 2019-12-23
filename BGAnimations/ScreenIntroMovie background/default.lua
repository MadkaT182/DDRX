return Def.ActorFrame {
	LoadActor("intro")..{
		OnCommand=cmd(FullScreen);
	};
}