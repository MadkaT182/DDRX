return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../../Graphics/_footer/footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+229;zoomx, 1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor( "playerFrame_bg" )..{
		OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y+93;addx,-294;rotationz,-90;sleep,0.2;linear,0.166;rotationz,0;addx,230;linear,0.05;rotationz,10;addx,64;linear,0.066;rotationz,0);
		OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-316);
	};

-- 	LoadActor( "difficulty_bg" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT-116;y,SCREEN_CENTER_Y+135;diffusealpha,0;sleep,0.2;linear,0.166;rotationz,0;addx,230;diffusealpha,1;linear,0.05;rotationz,10;addx,64;linear,0.066;rotationz,0);
-- 		OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-350);
		
-- 	};

-- 	LoadActor( "radar.png" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y+6;zoomy,0;sleep,0.466;accelerate,0.05;zoomy,1.30;linear,0.033;zoomy,1;accelerate,0.05;zoomx,1.30;linear,0.033;zoomx,1);
-- 		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		
-- 	};

-- 	LoadActor( "radar_glow" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y+3;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.4");effectperiod,1.33;addx,-999;sleep,1.283;addx,999);
-- 		OffCommand=cmd(sleep,0.233;stopeffect;linear,0.05;diffusealpha,0);
		
-- 	};

-- --Chaos
-- 	LoadActor( "diffused_ray" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+191;y,SCREEN_CENTER_Y-6;vertalign,bottom;rotationz,90;zoom,0;sleep,1.5;linear,0.266;zoomx,0.9;zoomy,1.3;diffusealpha,1;diffuseshift;effectcolor1,color("0.67,1,0.53,0.8");blend,'BlendMode_Add');
-- 		OffCommand=cmd(stopeffect;sleep,0.233;linear,0.133;zoom,0);
		
-- 	};

-- --Voltage
-- 	LoadActor( "diffused_ray" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+108;y,SCREEN_CENTER_Y-6;vertalign,bottom;zoom,0;sleep,1.5;rotationz,-90;linear,0.266;zoomx,0.9;zoomy,1.3;diffusealpha,1;diffuseshift;effectcolor1,color("0.67,1,0.53,0.8");blend,'BlendMode_Add');
-- 		OffCommand=cmd(stopeffect;sleep,0.233;linear,0.133;zoom,0);
		
-- 	};

-- --Freeze
-- 	LoadActor( "diffused_ray" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+174;y,SCREEN_CENTER_Y+39;vertalign,bottom;zoom,0;sleep,1.5;rotationz,100;linear,0.266;zoomx,0.9;zoomy,1.3;diffusealpha,1;diffuseshift;effectcolor1,color("0.67,1,0.53,0.8");blend,'BlendMode_Add');
-- 		OffCommand=cmd(stopeffect;sleep,0.233;linear,0.133;zoom,0);
		
-- 	};

-- --Air
-- 	LoadActor( "diffused_ray" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+126;y,SCREEN_CENTER_Y+39;vertalign,bottom;zoom,0;sleep,1.5;rotationz,-100;linear,0.266;zoomx,0.9;zoomy,1.3;diffusealpha,1;diffuseshift;effectcolor1,color("0.67,1,0.53,0.8");blend,'BlendMode_Add');
-- 		OffCommand=cmd(stopeffect;sleep,0.233;linear,0.133;zoom,0);
		
-- 	};

-- --Stream
-- 	LoadActor( "diffused_ray" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y-37;vertalign,bottom;zoom,0;sleep,1.5;rotationz,180;linear,0.266;zoomx,3;zoomy,-0.34;diffusealpha,1;diffuseshift;effectcolor1,color("0.67,1,0.53,0.8");blend,'BlendMode_Add');
-- 		OffCommand=cmd(stopeffect;sleep,0.233;linear,0.133;zoom,0);
		
-- 	};

-- 	LoadActor( "stream" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+149;y,SCREEN_CENTER_Y-53;rotationz,360;sleep,0.632;sleep,0.2;linear,0.166;rotationz,0;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		
-- 	};

-- 	LoadActor( "voltage" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+56;y,SCREEN_CENTER_Y-6;rotationz,360;sleep,0.632;sleep,0.1;linear,0.166;rotationz,0;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		
-- 	};

-- 	LoadActor( "air" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+90;y,SCREEN_CENTER_Y+50;rotationz,360;sleep,0.632;linear,0.166;rotationz,0;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		
-- 	};

-- 	LoadActor( "freeze" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+223;y,SCREEN_CENTER_Y+50;rotationz,360;sleep,0.632;sleep,0.4;linear,0.166;rotationz,0;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		
-- 	};

-- 	LoadActor( "chaos" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+235;y,SCREEN_CENTER_Y-6;rotationz,360;sleep,0.632;sleep,0.3;linear,0.166;rotationz,0;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		
-- 	};

-- 	LoadActor( "w01" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+201;sleep,0.595;sleep,0;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w02" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+167;sleep,0.595;sleep,0.023;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w03" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+135;sleep,0.595;sleep,0.046;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w04" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+104;sleep,0.595;sleep,0.069;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w05" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+75;sleep,0.595;sleep,0.092;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w06" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+47;sleep,0.595;sleep,0.115;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w07" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+21;sleep,0.595;sleep,0.138;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w08" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-3;sleep,0.595;sleep,0.161;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w08" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-28;sleep,0.595;sleep,0.184;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w10" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-53;sleep,0.595;sleep,0.207;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w11" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-79;sleep,0.595;sleep,0.23;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w12" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-107;sleep,0.595;sleep,0.253;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w13" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-136;sleep,0.595;sleep,0.276;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w14" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-167;sleep,0.595;sleep,0.299;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 	LoadActor( "w15" )..{
-- 		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-199;sleep,0.595;sleep,0.322;diffusealpha,1);
-- 		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
-- 	};

-- 		LoadActor( "../../Graphics/ScreenSelectMusic banner frame" )..{
-- 		OnCommand=cmd(x,SCREEN_LEFT+163;y,SCREEN_TOP+100;addx,-337;sleep,0.2;decelerate,0.233;addx,348;linear,0.066;addx,-11);
-- 		OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-337);

-- 	};

--[[
	LoadActor( "_modifiers" )..{
	};
]]--
}