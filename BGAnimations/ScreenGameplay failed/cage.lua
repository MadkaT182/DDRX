return Def.ActorFrame{
	LoadActor(IsUsingWideScreen() and "basew" or "basen")..{
		OnCommand=cmd(addy,225);
	};
	LoadActor("cgbg");
};