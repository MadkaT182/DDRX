local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

LoadActor("bg/gm")..{
	OnCommand=cmd(rotationz,-2.19);
};

LoadActor("bg/sm")..{
	OnCommand=cmd(addy,28;rotationz,1.84);
};

LoadActor("bg/wo")..{
	OnCommand=cmd(addy,56;rotationz,-1.96);
};

LoadActor("bg/tr")..{
	OnCommand=cmd(addy,84;rotationz,1.97);
};

LoadActor("bg/ed")..{
	OnCommand=cmd(addy,112;rotationz,-1.91);
};

LoadActor("bg/pz")..{
	OnCommand=cmd(addy,140;rotationz,-3.01);
};

LoadActor("bg/re")..{
	OnCommand=cmd(addy,168;rotationz,3.06);
};

LoadActor("bg/op")..{
	OnCommand=cmd(addy,196;rotationz,1.35);
};

LoadActor("bg/jk")..{
	OnCommand=cmd(addy,224;rotationz,-1.97);
};

LoadActor("bg/in")..{
	OnCommand=cmd(addy,252;rotationz,-1.93);
};

LoadActor("bg/ex")..{
	OnCommand=cmd(addy,280;rotationz,1.84);
};

};

return t;