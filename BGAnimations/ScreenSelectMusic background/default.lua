local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "playerFrame_bg" )..{
		OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y+93;addx,-294;rotationz,-90;sleep,0.2;linear,0.166;rotationz,0;addx,230;linear,0.05;rotationz,10;addx,64;linear,0.066;rotationz,0);
		OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-316);
	};
}

if GAMESTATE:GetPlayMode() == 'PlayMode_Regular' or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle' then

	t[#t+1] = Def.ActorFrame {
		LoadActor( "difficulty_bg" )..{
			OnCommand=cmd(x,SCREEN_LEFT-116;y,SCREEN_CENTER_Y+135;diffusealpha,0;sleep,0.2;linear,0.166;rotationz,0;addx,230;diffusealpha,1;linear,0.05;rotationz,10;addx,64;linear,0.066;rotationz,0);
			OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-350);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "stream" )..{
			OnCommand=cmd(x,SCREEN_LEFT+149;y,SCREEN_CENTER_Y-53;rotationz,360;sleep,0.632;sleep,0.2;linear,0.166;rotationz,0;diffusealpha,1);
			OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "voltage" )..{
			OnCommand=cmd(x,SCREEN_LEFT+56;y,SCREEN_CENTER_Y-6;rotationz,360;sleep,0.632;sleep,0.1;linear,0.166;rotationz,0;diffusealpha,1);
			OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "air" )..{
			OnCommand=cmd(x,SCREEN_LEFT+90;y,SCREEN_CENTER_Y+50;rotationz,360;sleep,0.632;linear,0.166;rotationz,0;diffusealpha,1);
			OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "freeze" )..{
			OnCommand=cmd(x,SCREEN_LEFT+223;y,SCREEN_CENTER_Y+50;rotationz,360;sleep,0.632;sleep,0.4;linear,0.166;rotationz,0;diffusealpha,1);
			OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "chaos" )..{
			OnCommand=cmd(x,SCREEN_LEFT+235;y,SCREEN_CENTER_Y-6;rotationz,360;sleep,0.632;sleep,0.3;linear,0.166;rotationz,0;diffusealpha,1);
			OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "radar.png" )..{
			OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y+6;zoomy,0;sleep,0.466;accelerate,0.05;zoomy,1.30;linear,0.033;zoomy,1;accelerate,0.05;zoomx,1.30;linear,0.033;zoomx,1);
			OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
		};
	}

	t[#t+1] = Def.ActorFrame {
		LoadActor( "radar_glow" )..{
			OnCommand=cmd(x,SCREEN_LEFT+150;y,SCREEN_CENTER_Y+3;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.4");effectperiod,1.33;addx,-999;sleep,1.283;addx,999);
			OffCommand=cmd(sleep,0.233;stopeffect;linear,0.05;diffusealpha,0);
		};
	}

end

t[#t+1] = Def.ActorFrame {
	LoadActor( "w01" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+201;sleep,0.595;sleep,0;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w02" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+167;sleep,0.595;sleep,0.023;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w03" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+135;sleep,0.595;sleep,0.046;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w04" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+104;sleep,0.595;sleep,0.069;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w05" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+75;sleep,0.595;sleep,0.092;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w06" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+47;sleep,0.595;sleep,0.115;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w07" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y+21;sleep,0.595;sleep,0.138;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w08" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-3;sleep,0.595;sleep,0.161;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w08" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-28;sleep,0.595;sleep,0.184;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w10" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-53;sleep,0.595;sleep,0.207;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w11" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-79;sleep,0.595;sleep,0.23;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w12" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-107;sleep,0.595;sleep,0.253;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w13" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-136;sleep,0.595;sleep,0.276;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w14" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-167;sleep,0.595;sleep,0.299;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

t[#t+1] = Def.ActorFrame {
	LoadActor( "w15" )..{
		OnCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_CENTER_Y-199;sleep,0.595;sleep,0.322;diffusealpha,1);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
}

	-- LoadActor "../_modifiers/speed/x3"..{
	-- OnCommand=cmd(x,SCREEN_LEFT+26;y,SCREEN_TOP+443;cropleft,0.5;addy,46;sleep,0.683;linear,0.2;addy,-46);
	-- -- Condition=UsingModifier(1, "3x") and IsPlayerEnabled(1);
	-- -- addx,-270;
	-- };

--[[
	LoadActor( "_modifiers" )..{
	};
]]--
return t