local P1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
local P2Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentLife();

local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame{
	Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle';
	--Rave mode decorations
	LoadActor( "RaveSound" )..{
		OnCommand=cmd(play);
	};
	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-230;y,SCREEN_CENTER_Y+37;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
	};
	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y+37;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
	};
	LoadActor( "win" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;rotationz,-370;diffusealpha,1;bob;effectperiod,.8;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:IsWinner(PLAYER_1);
	};
	LoadActor( "lose" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;rotationz,-370;diffusealpha,1;bob;effectperiod,.8;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:IsWinner(PLAYER_2);
	};
	LoadActor( "draw" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;rotationz,-370;diffusealpha,1;bob;effectperiod,.8;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};
	LoadActor( "win" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;rotationz,-370;diffusealpha,1;bob;effectperiod,.8;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:IsWinner(PLAYER_2);
	};
	LoadActor( "lose" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;rotationz,-370;diffusealpha,1;bob;effectperiod,.8;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:IsWinner(PLAYER_1);
	};
	LoadActor( "draw" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;rotationz,-370;diffusealpha,1;bob;effectperiod,.8;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};
	LoadActor( "p1_life" )..{
		OnCommand=function(self)
			local P1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
			if P1Life > 1 then
				P1Life = 1;
			elseif P1Life < 0 then
				P1Life = 0;
			end;
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y+183);
			self:cropright(1);
			self:sleep(.25);
			self:linear(1);
			self:cropright(1-P1Life);
		end;
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor( "p2_life" )..{
		OnCommand=function(self)
			local P1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
			if P1Life > 1 then
				P1Life = 1;
			elseif P1Life < 0 then
				P1Life = 0;
			end;
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y+183);
			self:cropleft(1);
			self:sleep(.25);
			self:linear(1);
			self:cropleft(1-(1-P1Life));
		end;
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor( "battleLife_frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;zoomy,0;sleep,0.133;linear,0.116;zoomy,1);
		OffCommand=cmd(sleep,0.016;linear,0.133;zoomy,0);
	};
	LoadActor( "pointer" )..{
		OnCommand=function(self)
			local P1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
			if P1Life > 1 then
				P1Life = 1;
			elseif P1Life < 0 then
				P1Life = 0;
			end;
			self:x(SCREEN_CENTER_X-294);
			self:y(SCREEN_CENTER_Y+171);
			self:zoomy(0);
			self:sleep(0.000);
			self:addx(588*P1Life);
			self:sleep(1.25);
			self:linear(0.066);
			self:zoomy(1);
			self:sleep(0);
			self:bob();
			self:effectperiod(0.3);
			self:effectmagnitude(0,2,0);
		end;
		OffCommand=cmd(sleep,0.0000;sleep,0.116;diffusealpha,0);
	};

};

return t;