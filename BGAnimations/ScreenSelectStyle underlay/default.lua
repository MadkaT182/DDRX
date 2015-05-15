return Def.ActorFrame {
	LoadActor("graysingle")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+40);
};

	LoadActor("grayversus")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+86;y,SCREEN_CENTER_Y+40);
};

	LoadActor("graydouble")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+166;y,SCREEN_CENTER_Y+40);
};
}