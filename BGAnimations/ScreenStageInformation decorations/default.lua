local t = Def.ActorFrame {};
t[#t+1] = StandardDecorationFromFileOptional("StyleIcon","StyleIcon");

t[#t+1] = Def.ActorFrame {
	LoadActor("../Common ScreenStages/stageFrame.png")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
		OffCommand=cmd();
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor("../Common ScreenStages/s01.png")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-181;y,SCREEN_CENTER_Y-13;diffusealpha,0;sleep,0.000;sleep,1.966;diffusealpha,1);
		OffCommand=cmd();
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor("../Common ScreenStages/s02.png")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+179;y,SCREEN_CENTER_Y+2;diffusealpha,0;sleep,0.000;sleep,2.016;diffusealpha,1);
		OffCommand=cmd();
	}
};

if GAMESTATE:IsEventMode() then
	--Evento
--elseif (GAMESTATE:GetPlayMode()=='PlayMode_Battle') or (GAMESTATE:GetPlayMode()=='PlayMode_Rave') then
	--Rave
elseif GAMESTATE:GetPlayMode()=='PlayMode_Endless' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/endless.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif (GAMESTATE:GetPlayMode()=='PlayMode_Oni') or (GAMESTATE:GetPlayMode()=='PlayMode_Nonstop') then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/course.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_1st' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/1.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/2.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' and (PREFSMAN:GetPreference("SongsPerPlay") == 5 or PREFSMAN:GetPreference("SongsPerPlay") == 4) then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/3.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/4.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_5th' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/5.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_6th' then
		t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/6.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/final.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:IsExtraStage() then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/extra1.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
elseif GAMESTATE:IsExtraStage2() then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../Common ScreenStages/extra2.png")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
			OffCommand=cmd(sleep,4.7;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
		}
	};
end;

t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P1") ) .. {
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_LEFT+109;y,SCREEN_CENTER_Y;draworder,1);
		OnCommand=function(self)
			self:y(SCREEN_CENTER_Y+201);
		end;
	};
t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P2") ) .. {
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_RIGHT-91;y,SCREEN_CENTER_Y;draworder,1);
		OnCommand=function(self)
			self:y(SCREEN_CENTER_Y+201);
		end;
	};

return t