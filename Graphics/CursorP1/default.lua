return Def.ActorFrame{
	LoadActor("bg")..{
		InitCommand=cmd(spin);
	};
	LoadActor("indicator");
};