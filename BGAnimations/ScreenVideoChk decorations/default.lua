return Def.ActorFrame{
	LoadActor( "bg" )..{
		OnCommand=cmd(Center);
	};
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+16);
		Def.Quad{
			InitCommand=cmd(zoomto,200,28;diffusecolor,color("#000000"));
		};
		LoadFont("_service")..{
			Text="SCREEN CHECK";
			OnCommand=cmd(zoom,.8);
		};
	};
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-48);
		Def.Quad{
			InitCommand=cmd(zoomto,200,28;diffusecolor,color("#000000"));
		};
		LoadFont("_service")..{
			Text="PRESS 1P START BUTTON = EXIT";
			OnCommand=cmd(zoom,.8;maxwidth,220);
		};
	};
};