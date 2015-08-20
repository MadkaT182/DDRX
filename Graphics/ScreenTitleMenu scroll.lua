local gc = Var("GameCommand");

return Def.ActorFrame {
	LoadFont("ScreenTitleMenu choices") .. {
		Text=THEME:GetString("ScreenTitleMenu",gc:GetText());
		OnCommand=cmd(shadowlength,1);
		GainFocusCommand=cmd(stoptweening;linear,0.1;zoom,1;diffuse,color("1,1,1,1"));
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoom,0.75;diffuse,color("0.5,0.5,0.5,1"));
	};
};