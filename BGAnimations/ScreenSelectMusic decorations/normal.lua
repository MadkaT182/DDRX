local function Radar()
	local function set(self,player)
		local Selection = GAMESTATE:GetCurrentSteps(player) or GAMESTATE:GetCurrentTrail(player)
		local Song = GAMESTATE:GetCurrentSong();
		if not Selection or not Song then
			self:SetEmpty( player );
			return
		end
		self:SetFromRadarValues( player, Selection:GetRadarValues(player) );
	end

	local t = Def.GrooveRadar {
		OnCommand=cmd();
		OffCommand=cmd(linear,0.6;rotationz,180*4;zoom,0);
		CurrentStepsP1ChangedMessageCommand=function(self) set(self, PLAYER_1); end;
		CurrentStepsP2ChangedMessageCommand=function(self) set(self, PLAYER_2); end;
		CurrentTrailP1ChangedMessageCommand=function(self) set(self, PLAYER_1); end;
		CurrentTrailP2ChangedMessageCommand=function(self) set(self, PLAYER_2); end;
	};

	return t;
end

local t = Def.ActorFrame {

	LoadActor( "difficulty_bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-162;y,SCREEN_CENTER_Y+135;zoomy,0;sleep,0.466;zoomy,0.136;linear,0.133;zoomy,1.036;linear,0.066;zoomy,0.88;linear,0.033;zoomy,1);
		OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-SCREEN_WIDTH/2);
	};

	LoadActor("stream")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-164;y,SCREEN_CENTER_Y-43;diffusealpha,0;rotationz,360;sleep,0.632;sleep,0.2;linear,0.166;rotationz,0;diffusealpha,1);
		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
	};

	LoadActor("voltage")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-246;y,SCREEN_CENTER_Y-6;diffusealpha,0;rotationz,360;sleep,0.632;sleep,0.1;linear,0.166;rotationz,0;diffusealpha,1);
		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
	};

	LoadActor("air")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-222;y,SCREEN_CENTER_Y+62;diffusealpha,0;rotationz,360;sleep,0.632;linear,0.166;rotationz,0;diffusealpha,1);
		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
	};

	LoadActor("freeze")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-95;y,SCREEN_CENTER_Y+59;diffusealpha,0;rotationz,360;sleep,0.632;sleep,0.4;linear,0.166;rotationz,0;diffusealpha,1);
		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
	};

	LoadActor("chaos")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-82;y,SCREEN_CENTER_Y-10;diffusealpha,0;rotationz,360;sleep,0.632;sleep,0.3;linear,0.166;rotationz,0;diffusealpha,1);
		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
	};

	LoadActor("radar_bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-164;y,SCREEN_CENTER_Y+19;zoomy,0;sleep,0.466;accelerate,0.05;zoomy,1.30;linear,0.033;zoomy,1;accelerate,0.05;zoomx,1.30;linear,0.033;zoomx,1);
		OffCommand=cmd(sleep,0.233;linear,0.05;diffusealpha,0);
	};

	LoadActor("radar_glow")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-164;y,SCREEN_CENTER_Y+19;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0.4;effectperiod,1.33;addx,-SCREEN_WIDTH;sleep,1.283;addx,SCREEN_WIDTH);
		OffCommand=cmd(sleep,0.233;stopeffect;linear,0.05;diffusealpha,0);
	};

	Radar() .. {
		BeginCommand=cmd(x,SCREEN_CENTER_X-165;y,SCREEN_CENTER_Y+20);
	};

};

return t;