return Def.ActorFrame{
	LoadActor("avatar/"..string.format("%02d",math.random(1,19)))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_CENTER_Y+136;vertalign,bottom;zoomx,math.random(0,10)%2 == 0 and 1 or -1;diffusealpha,0;sleep,5;linear,1.316;diffusealpha,1;sleep,2.45;linear,.95;diffusealpha,0);
	};
	LoadActor("avatar/"..string.format("%02d",math.random(1,19)))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_CENTER_Y+136;vertalign,bottom;zoomx,math.random(0,10)%2 == 0 and 1 or -1;diffusealpha,0;sleep,11;linear,1.316;diffusealpha,1;sleep,2.45;linear,.95;diffusealpha,0);
	};
	LoadActor("avatar/"..string.format("%02d",math.random(1,19)))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_CENTER_Y+136;vertalign,bottom;zoomx,math.random(0,10)%2 == 0 and 1 or -1;diffusealpha,0;sleep,17;linear,1.316;diffusealpha,1;sleep,2.45;linear,.95;diffusealpha,0);
	};
	LoadActor("avatar/"..string.format("%02d",math.random(1,19)))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_CENTER_Y+136;vertalign,bottom;zoomx,math.random(0,10)%2 == 0 and 1 or -1;diffusealpha,0;sleep,23;linear,1.316;diffusealpha,1;sleep,2.45;linear,.95;diffusealpha,0);
	};
	LoadActor("avatar/"..string.format("%02d",math.random(1,19)))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_CENTER_Y+136;vertalign,bottom;zoomx,math.random(0,10)%2 == 0 and 1 or -1;diffusealpha,0;sleep,29;linear,1.316;diffusealpha,1;sleep,2.45;linear,.95;diffusealpha,0);
	};
	LoadActor("end/"..string.format("%02d",math.random(1,3)))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_CENTER_Y;diffusealpha,0;zoom,.5;sleep,35;linear,1.316;diffusealpha,1;sleep,2.45;linear,.95;diffusealpha,0);
	};
	LoadActor("text")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-255;y,SCREEN_BOTTOM;sleep,1.7;linear,38.8;y,SCREEN_TOP-5500);
	};
	LoadActor("music")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;sleep,40.533;linear,41.583;y,SCREEN_TOP-5310);
	};
	Def.ActorFrame{
		OnCommand=cmd(vertalign,top;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+90;sleep,82.716;linear,13.416;y,SCREEN_CENTER_Y-1560);
		LoadActor("eyetoy");
		LoadActor("dolby")..{
			OnCommand=cmd(y,520);
		};
		LoadActor("konsport")..{
			OnCommand=cmd(y,1050);
		};
		LoadActor("copy")..{
			OnCommand=cmd(y,1560);
		};
	};
};