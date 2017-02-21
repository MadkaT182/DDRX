local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = LoadActor("warn"..lang)..{
OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.6;diffusealpha,1;sleep,6;accelerate,0.6;diffusealpha,0);
};

return t;