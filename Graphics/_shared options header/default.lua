return Def.ActorFrame {
	LoadActor( "header" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP;vertalign,top;zoomx, 1.34;addy,-24;linear,0.133;addy,24);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_LEFT+289;y,SCREEN_TOP-14;vertalign,top;horizalign,right;zoom,0;sleep,0.283;linear,0.233;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};
}