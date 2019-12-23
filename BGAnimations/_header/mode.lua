return Def.ActorFrame{
	LoadActor("../_titles/mode_std")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0;sleep,.3;linear,.05;addy,8;diffusealpha,.5;zoom,1.042;linear,.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Regular"
	};
	LoadActor("../_titles/mode_course")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0;sleep,.3;linear,.05;addy,8;diffusealpha,.5;zoom,1.042;linear,.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Nonstop" or GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
	};
	LoadActor("../_titles/mode_battle")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0;sleep,.3;linear,.05;addy,8;diffusealpha,.5;zoom,1.042;linear,.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Rave"
	};
	LoadActor("../_titles/mode_endless")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0;sleep,.3;linear,.05;addy,8;diffusealpha,.5;zoom,1.042;linear,.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Endless"
	};
};