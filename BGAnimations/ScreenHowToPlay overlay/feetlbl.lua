local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = LoadActor("feet"..lang)..{};

return t;