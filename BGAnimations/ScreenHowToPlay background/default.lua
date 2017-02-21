local t = Def.ActorFrame {};

t[#t+1] = LoadActor("floorbg")..{
	InitCommand=cmd(Center);
};

return t;