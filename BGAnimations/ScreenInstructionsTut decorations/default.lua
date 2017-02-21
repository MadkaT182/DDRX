local lang = "us";
local t = Def.ActorFrame {};
local s = SONGMAN:FindSong("DDR X/HOW TO PLAY (English)");

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
	s = SONGMAN:FindSong("DDR X/HOW TO PLAY");
end;

GAMESTATE:SetPreferredSong(s);

t[#t+1] = LoadActor("../ScreenInstructions decorations/instructions"..lang)..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH;linear,0.25;addx,-SCREEN_WIDTH);
	OffCommand=cmd(linear,0.29;addx,-SCREEN_WIDTH);
};

return t;