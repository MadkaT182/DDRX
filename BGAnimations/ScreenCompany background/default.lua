local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = Def.ActorFrame {

LoadActor("../white")..{
OnCommand=cmd(FullScreen;);
};

LoadActor("konami")..{
OnCommand=cmd(Center;diffusealpha,0;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
};

LoadActor( "eamuse" )..{
OnCommand=cmd(diffusealpha,0;Center;sleep,12.8;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
};

LoadActor( "rsa" )..{
OnCommand=cmd(diffusealpha,0;Center;sleep,15.4;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
};

};

t[#t+1] = LoadActor("bemani"..lang)..{
OnCommand=cmd(Center;diffusealpha,0;sleep,6.4;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
};

return t;