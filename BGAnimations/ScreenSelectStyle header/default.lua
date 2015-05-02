return Def.ActorFrame {
	LoadActor( "../_shared options header/header" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-240;zoomx,1.34;vertalign,top;addy,-56;sleep,0.516000;linear,0.133;addy,56);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../_shared options header/frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-159;y,SCREEN_CENTER_Y-232;vertalign,top;horizalign,right;zoom,0;diffusealpha,0;sleep,0.516000;sleep,0.033;linear,0.1;diffusealpha,1;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};

	LoadActor( "screen_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-309;y,SCREEN_CENTER_Y-205;diffusealpha,0;zoom,1.06;sleep,0.516000;sleep,0.133;linear,0.1;diffusealpha,1;linear,0.133;zoom,1);
		OffCommand=cmd(diffusealpha,0);
	};
--[[	LoadActor("../ScreenSelectStyle footer")..{
		OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_CENTER_Y-242)
	};
--]]
}