return Def.ActorFrame {
	OnCommand=cmd(zoom,0;sleep,.05;linear,.083;zoom,1.2;linear,.033;zoom,1);
	OffCommand=cmd(linear,.117;zoomx,0);
	LoadActor("Color")..{
		GainFocusCommand=cmd(finishtweening;diffusealpha,1;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,.75,.75,.75,1;effectperiod,.2);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("Gray")..{
		GainFocusCommand=cmd(diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,1);
	};
};