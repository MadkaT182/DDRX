local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = LoadActor("instructions"..lang)..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH;linear,0.25;addx,-SCREEN_WIDTH);
	OffCommand=cmd(linear,0.29;addx,-SCREEN_WIDTH);
};

return t;