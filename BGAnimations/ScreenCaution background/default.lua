local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = LoadActor("caut"..lang)..{
		OnCommand=cmd(Center;FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1;sleep,2.4;accelerate,0.3;diffusealpha,0);
};

return t;