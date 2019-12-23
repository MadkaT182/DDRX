local t = Def.ActorFrame {};
local curStageIndex = GAMESTATE:GetCurrentStageIndex() + 1;

if GAMESTATE:IsCourseMode() then
	local stats = STATSMAN:GetCurStageStats();
	if not stats then
		return
	end
	local mpStats = stats:GetPlayerStageStats( GAMESTATE:GetMasterPlayerNumber() )
	local songsPassed = mpStats:GetSongsPassed()
	local percent = 0;
	local crscroll = 0;
	percent = (songsPassed * 100 / GAMESTATE:GetCurrentCourse():GetEstimatedNumStages()) / 100;
	crscroll = 127 * percent;

	if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
		--Oni percent
		if GAMESTATE:GetPlayMode() == 'PlayMode_Oni' then
			t[#t+1] = Def.ActorFrame{
				--Int
				LoadFont("oni_perc_a")..{
					InitCommand=cmd(x,SCREEN_CENTER_X-324;y,SCREEN_CENTER_Y-133;horizalign,left);
					OnCommand=function(self)
						local result = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPercentDancePoints();
						local percent = FormatPercentScore(result);
						local first = "0";
						local dotpos = string.find(percent, ".");
						local perclen = string.len(percent);
						first = percent:sub(1,dotpos+1);
						self:settext(first);
					end;
				};
				--Dec
				LoadFont("oni_perc_b")..{
					InitCommand=cmd(x,SCREEN_CENTER_X-156;y,SCREEN_CENTER_Y-117;horizalign,right);
					OnCommand=function(self)
						local result = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPercentDancePoints();
						local percent = FormatPercentScore(result);
						local final = "%";
						local dotpos = string.find(percent, ".");
						local perclen = string.len(percent);
						final = percent:sub(dotpos+2,perclen);
						self:settext(final);
					end;
				};
				LoadActor(THEME:GetPathG("","oni_percent"))..{
					InitCommand=cmd(x,SCREEN_CENTER_X-162;y,SCREEN_CENTER_Y-117);
				};
			};
		end;
		--Cleared bar
		t[#t+1] = LoadActor( "frame" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X-225;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		};
		t[#t+1] = LoadActor( "bgp1" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X-226;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		};
		t[#t+1] = LoadActor( "barbgp1" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X-227;y,SCREEN_CENTER_Y+27;);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		};
		t[#t+1] = LoadActor( "p1bar" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X-227;y,SCREEN_CENTER_Y+27;cropleft,1;zoomy,0;sleep,0.233;linear,0.5;zoomy,1;linear,0.534;cropleft,1 - percent);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		};
		t[#t+1] = LoadActor( "stageflare" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X-164;y,SCREEN_CENTER_Y+27;diffusealpha,0;sleep,0.716;diffusealpha,1;glowshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0,0,0,1");effectperiod,0.133;sleep,0.017;linear,0.534;addx,-crscroll);
			OffCommand=cmd(sleep,0.0000;stopeffect;diffusealpha,0);
		};
		--Time Survived

		--Cleared stages
		t[#t+1] = LoadActor( "stg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X-189;y,SCREEN_CENTER_Y+56;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		};
		t[#t+1] = LoadFont("ScreenEvaluationClearedStages") .. {
			InitCommand=cmd(x,SCREEN_CENTER_X-233;y,SCREEN_CENTER_Y+49;playcommand,"Set");
			SetCommand=function(self)
				self:settext(string.sub(' '..songsPassed, -2));
				self:horizalign(right);
			end;
		};
	end;

	if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
		--Oni percent
		if GAMESTATE:GetPlayMode() == 'PlayMode_Oni' then
			t[#t+1] = Def.ActorFrame{
				--Int
				LoadFont("oni_perc_a")..{
					InitCommand=cmd(x,SCREEN_CENTER_X+128;y,SCREEN_CENTER_Y-133;horizalign,left);
					OnCommand=function(self)
						local result = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPercentDancePoints();
						local percent = FormatPercentScore(result);
						local first = "0";
						local dotpos = string.find(percent, ".");
						local perclen = string.len(percent);
						first = percent:sub(1,dotpos+1);
						self:settext(first);
					end;
				};
				--Dec
				LoadFont("oni_perc_b")..{
					InitCommand=cmd(x,SCREEN_CENTER_X+295;y,SCREEN_CENTER_Y-117;horizalign,right);
					OnCommand=function(self)
						local result = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPercentDancePoints();
						local percent = FormatPercentScore(result);
						local final = "%";
						local dotpos = string.find(percent, ".");
						local perclen = string.len(percent);
						final = percent:sub(dotpos+2,perclen);
						self:settext(final);
					end;
				};
				LoadActor(THEME:GetPathG("","oni_percent"))..{
					InitCommand=cmd(x,SCREEN_CENTER_X+289;y,SCREEN_CENTER_Y-117);
				};
			};
		end;
		t[#t+1] = LoadActor( "frame" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+226;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		};
		t[#t+1] = LoadActor( "bgp2" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+226;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		};
		t[#t+1] = LoadActor( "barbgp2" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+227;y,SCREEN_CENTER_Y+27;);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		};
		t[#t+1] = LoadActor( "p2bar" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+227;y,SCREEN_CENTER_Y+27;cropright,1;zoomy,0;sleep,0.233;linear,0.5;zoomy,1;linear,0.534;cropright,1 - percent);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		};
		t[#t+1] = LoadActor( "stageflare" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+163;y,SCREEN_CENTER_Y+27;diffusealpha,0;sleep,0.716;diffusealpha,1;glowshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0,0,0,1");effectperiod,0.133;sleep,0.017;linear,0.534;addx,crscroll);
			OffCommand=cmd(sleep,0.0000;stopeffect;diffusealpha,0);
		};
		--Time Survived

		--Cleared stages
		t[#t+1] = LoadActor( "stg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+263;y,SCREEN_CENTER_Y+56;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
			OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		};
		t[#t+1] = LoadFont("ScreenEvaluationClearedStages") .. {
			InitCommand=cmd(x,SCREEN_CENTER_X+220;y,SCREEN_CENTER_Y+49;playcommand,"Set");
			SetCommand=function(self)
				self:settext(string.sub(' '..songsPassed, -2));
				self:horizalign(right);
			end;
		};
	end;

end;

return t;