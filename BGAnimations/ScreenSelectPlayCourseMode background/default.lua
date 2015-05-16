return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../header" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-240;zoomx,1.34;vertalign,top;addy,-24;linear,0.133;addy,24);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../headerframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-159;y,SCREEN_CENTER_Y-232;vertalign,top;horizalign,right;zoom,0;sleep,0.283;linear,0.1;zoom,1.05;linear,0.033;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};
}