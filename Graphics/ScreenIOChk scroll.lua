local gc = Var("GameCommand");

local t = Def.ActorFrame {};

t[#t+1] = LoadFont("Common Normal") .. {
    Text=gc:GetText();
    OnCommand=cmd(horizalign,left;zoom,.8);
	GainFocusCommand=cmd(diffusealpha,1;diffuse,color("#FF0000"));
	LoseFocusCommand=cmd(diffusealpha,.7;diffuse,color("#FFFFFF"));
	DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
};

return t;