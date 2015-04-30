return Def.ActorFrame{
		-- Def.Quad{
		-- InitCommand=cmd(FullScreen;diffuse,color("0,0,0,0"));
		-- OnCommand=cmd(linear,5;diffusealpha,1);
	-- };
	
	-- Cleared song --
    LoadActor("../SongCLR.mp3") .. {
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("../door1.png")..{
		InitCommand=cmd(zoomx,1.41;x,SCREEN_CENTER_X-SCREEN_WIDTH;y,SCREEN_CENTER_Y);
		OnCommand=cmd(sleep,2;linear,1.55;x,SCREEN_CENTER_X/2+2);
	};
	LoadActor("../door2.png")..{
		InitCommand=cmd(zoomx,1.41;x,SCREEN_CENTER_X+SCREEN_WIDTH;y,SCREEN_CENTER_Y);
		OnCommand=cmd(sleep,2;linear,1.55;x,SCREEN_CENTER_X*3/2-2);
	};
--[[
	LoadActor("../ClearDoor.mp3") .. {
		OnCommand=cmd(play);
	};	
--]]
	-------coursemode

	
	LoadActor("../ClearedSong.mp3") .. {
	    Condition=GAMESTATE:IsCourseMode();
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("../2013Door01.png")..{
	    Condition=GAMESTATE:IsCourseMode();
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-360;zoom,1.01);
		OnCommand=cmd(sleep,2;linear,0.25;addy,SCREEN_CENTER_Y;sleep,3;linear,0.25;addy,-SCREEN_CENTER_Y);
		
	};
	LoadActor("../2013Door02.png")..{
	    Condition=GAMESTATE:IsCourseMode();
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+360;zoom,1.01);
		OnCommand=cmd(sleep,2;linear,0.25;addy,-SCREEN_CENTER_Y;sleep,3;linear,0.25;addy,SCREEN_CENTER_Y);
	};
			
	--------CLEARED-----------
	
	LoadActor( "cleared" )..{
		OnCommand=cmd(diffusealpha,0;sleep,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;accelerate,0.3;rotationz,360;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1;sleep,3.5;linear,0.066;zoomx,0.90;linear,0.05;zoomy,0;zoomx,1;diffusealpha,0);
	};
	
};