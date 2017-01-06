local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	LoadActor( "circle" )..{
	};

	LoadActor( "star2" )..{
		OnCommand=cmd(spin;effectmagnitude,0,0,-040);
	};

	LoadActor( "star1" )..{
		OnCommand=cmd(spin;effectmagnitude,0,0,040);
	};

};

t[#t+1] = Def.ActorFrame {

	LoadActor( "lvlmax" )..{
	};

};

return t