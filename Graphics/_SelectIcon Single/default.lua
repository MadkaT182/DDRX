return Def.ActorFrame {

	OnCommand=cmd(zoom,0;sleep,.016;linear,.084;zoom,1.2;linear,.033;zoom,1);
	OffCommand=cmd(linear,0.1175;zoomx,0);

	LoadActor("Color")..{
	GainFocusCommand=cmd(finishtweening;diffusealpha,1;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,0.75,0.75,0.75,1;effectperiod,0.2);
	LoseFocusCommand=cmd(diffusealpha,0);
	};

	LoadActor("Gray")..{
	GainFocusCommand=cmd(diffusealpha,0);
	LoseFocusCommand=cmd(diffusealpha,1);
	};

};