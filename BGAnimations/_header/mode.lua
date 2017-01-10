local t = Def.ActorFrame {};

	t[#t+1] = LoadActor("../_titles/mode_std")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;diffusealpha,0.5;zoom,1.042;linear,0.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Regular"
	};

	t[#t+1] = LoadActor("../_titles/mode_course")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;diffusealpha,0.5;zoom,1.042;linear,0.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Nonstop" or GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
	};

	t[#t+1] = LoadActor("../_titles/mode_battle")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;diffusealpha,0.5;zoom,1.042;linear,0.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Rave"
	};

	t[#t+1] = LoadActor("../_titles/mode_endless")..{
		OnCommand=cmd(rotationz,-4;addy,-8;diffusealpha,0;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;diffusealpha,0.5;zoom,1.042;linear,0.05;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
		Condition= GAMESTATE:GetPlayMode() == "PlayMode_Endless"
	};

return t;