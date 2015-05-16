return Def.ActorFrame {
	LoadActor("graysingle")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+31;y,SCREEN_CENTER_Y+40);
	OffCommand=cmd(linear,0.1175;zoomx,0);
};

	LoadActor("grayversus")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+113;y,SCREEN_CENTER_Y+40);
	OffCommand=cmd(linear,0.1175;zoomx,0);
};

	LoadActor("graydouble")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+195;y,SCREEN_CENTER_Y+40);
	OffCommand=cmd(linear,0.1175;zoomx,0);
};
}