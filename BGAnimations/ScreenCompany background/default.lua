return Def.ActorFrame {
	LoadActor("../white")..{
		OnCommand=cmd(FullScreen;);
	};
	LoadActor("konami")..{
		OnCommand=cmd(Center;diffusealpha,0;decelerate,.6;diffusealpha,1;sleep,5.2;accelerate,.6;diffusealpha,0);
	};
	LoadActor( "eamuse" )..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,12.8;decelerate,.3;diffusealpha,1;sleep,2;decelerate,.3;diffusealpha,0);
	};
	LoadActor( "rsa" )..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,15.4;decelerate,.3;diffusealpha,1;sleep,2;decelerate,.3;diffusealpha,0);
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "bemanijp" or "bemanius")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,6.4;decelerate,.6;diffusealpha,1;sleep,5.2;accelerate,.6;diffusealpha,0);
	};
};