return Def.ActorFrame{
	LoadActor(THEME:GetCurLanguage()=="ja" and "instructionsjp" or "instructionsus")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+210;addx,SCREEN_WIDTH;linear,.25;addx,-SCREEN_WIDTH);
		OffCommand=cmd(linear,.29;addx,-SCREEN_WIDTH);
	};
};