local st = GAMESTATE:GetCurrentStyle():GetStepsType();
local stPl = STATSMAN:GetStagesPlayed();

local t = Def.ActorFrame{
	LoadActor("../_header/centered");
	LoadActor("../_titles/result")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-15;y,SCREEN_CENTER_Y-203;rotationz,-4;diffusealpha,0;zoom,1;addy,-12;sleep,0.000;sleep,0.283;decelerate,0.066;diffusealpha,1;addy,12;linear,0.016;zoom,1.083;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
	};
	LoadActor("../_footer");
};

--Spacing 48
--Decorations
for i = 1, stPl do
	local ssStats = STATSMAN:GetPlayedStageStats(i);
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(Center);
		BeginCommand=function(self)
			self:addy((stPl - i)*48-65);
		end;
		Def.Sprite{
			InitCommand=function(self)
				--self:player(PLAYER_1);
				self:Load(THEME:GetPathG("","crsItem"));
				self:x(-166);
				self:y(2);
			end;
		};
		Def.Sprite{
			InitCommand=function(self)
				--self:player(PLAYER_2);
				self:Load(THEME:GetPathG("","crsItem"));
				self:zoomx(-1);
				self:x(166);
				self:y(2);
			end;
		};
		Def.Sprite{
			InitCommand=function(self)
				self:Load(THEME:GetPathG("","crsbannerFrame"));
			end;
		};
		Def.Banner{
			InitCommand=function(self)
				local sssong = ssStats:GetPlayedSongs()[1];
				if sssong:HasBanner() then
					self:LoadFromSongBanner(sssong);
				else
					self:Load(THEME:GetPathG("","Common fallback banner"));
				end;
				self:zoomto(102,32);
			end;
		};
	};
end

--Stats
for pn in ivalues(PlayerNumber) do
	for i = 1, stPl do
		local sStats = STATSMAN:GetPlayedStageStats(i);
		local pStageStats = sStats:GetPlayerStageStats(pn);

		t[#t+1] = Def.ActorFrame {
			InitCommand=cmd(Center);
			BeginCommand=function(self)
				self:addy((stPl - i)*48-65);
			end;
			--Stage
			Def.Sprite{
				InitCommand=function(self)
					local pStage = sStats:GetStage();
					self:Load(THEME:GetPathB("", "norm_stage/st_"..pStage));
					self:x(pn == PLAYER_1 and -189 or 189);
					self:y(-7);
				end;
			};
			--Score
			LoadFont("ScreenEvaluation ScoreNumber")..{
				BeginCommand=function(self)
					local song = sStats:GetPlayedSongs()[1];
					if pStageStats:GetPlayedSteps()[1] then
						self:settext(string.format("% 7d",STATSMAN:GetPlayedStageStats(i):GetPlayerStageStats(pn):GetScore()));
						self:horizalign(right);
						self:x(pn == PLAYER_1 and -113 or 189);
						self:y(10);
					end;
				end;
			};
		};
	end
end

return t;