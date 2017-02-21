local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = LoadActor("sel2"..lang)..{};

return t;