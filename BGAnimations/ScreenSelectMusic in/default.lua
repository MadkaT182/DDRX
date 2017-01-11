return Def.ActorFrame {
	LoadActor("music_in")..{
		OnCommand=cmd(play);
	};
}