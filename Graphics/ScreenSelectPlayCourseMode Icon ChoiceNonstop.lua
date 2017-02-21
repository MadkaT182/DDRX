local t = Def.ActorFrame {};
local lang = "us";

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] =Def.ActorFrame{

OnCommand=cmd(diffusealpha,0;sleep,0.017;zoomy,0.3;diffusealpha,0.3;linear,0.134;diffusealpha,1;zoomy,1.1;linear,0.033;zoomy,1);
OffCommand=cmd(linear,0.1175;zoomy,0);
GainFocusCommand=cmd(stoptweening;linear,0.05;x,19;linear,0.05;x,-19);
LoseFocusCommand=cmd(stoptweening;linear,0.05;x,19;linear,0.05;x,-19);

LoadActor("_CourseArt/yellow")..{
	OnCommand=cmd(addx,0;addy,69;diffusealpha,0;sleep,0.16;diffusealpha,1;addy,1);
	GainFocusCommand=cmd(diffusealpha,1);
	LoseFocusCommand=cmd(diffusealpha,0);
};
LoadActor("_CourseArt/back")..{};
LoadActor("_CourseArt/no"..lang)..{
	OnCommand=cmd(addx,-50;addy,-42);
	GainFocusCommand=cmd(stoptweening;glowshift);
	LoseFocusCommand=cmd(stoptweening;stopeffect);
};
LoadActor("_CourseArt/check")..{
	OnCommand=cmd(addx,110;addy,-36;diffusealpha,0;sleep,0.16;diffusealpha,1);
	GainFocusCommand=cmd(diffusealpha,1);
	LoseFocusCommand=cmd(diffusealpha,0);
};
LoadActor("_CourseArt/desno"..lang)..{
	OnCommand=cmd(addx,-2;addy,17);
};
LoadActor("_CourseArt/dim")..{
	OnCommand=cmd(diffusealpha,0);
	GainFocusCommand=cmd(linear,0.05;diffusealpha,0);
	LoseFocusCommand=cmd(linear,0.05;diffusealpha,.5);
};

};

return t