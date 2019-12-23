function GetDName(judge)
	local superVal = {
		TapNoteScore_None = 0,
		TapNoteScore_HitMine = -.4,
		TapNoteScore_AvoidMine = 0,
		TapNoteScore_CheckpointMiss = -.2,
		TapNoteScore_Miss = -.2,
		TapNoteScore_W5 = 0,
		TapNoteScore_W4 = 0,
		TapNoteScore_W3 = .02,
		TapNoteScore_W2 = .04,
		TapNoteScore_W1 = .05,
		TapNoteScore_CheckpointHit = .05
	};

	local jVal = superVal[judge] or 0;
	return jVal;
end;

function MakeAttack(enemy, attack, revert, state)
	if state == "attack" then
		GAMESTATE:GetPlayerState(enemy):SetPlayerOptions('ModsLevel_Song', GAMESTATE:GetPlayerState(PLAYER_2):GetPlayerOptionsString('ModsLevel_Song')..','..attack)
	else 
		GAMESTATE:GetPlayerState(enemy):SetPlayerOptions('ModsLevel_Song', GAMESTATE:GetPlayerState(PLAYER_2):GetPlayerOptionsString('ModsLevel_Song')..','..revert)
	end
end;

local t = Def.ActorFrame {};
local sPlayMode = GAMESTATE:GetPlayMode();
local barw = 100;
local barh = 18;
local p1Meter = 0;
local p1Level = 0;
local p2Meter = 0;
local p2Level = 0;
local maxLevel = 5;

-- if IsUsingWideScreen() then
-- 	barw = 658;
-- end

if sPlayMode == 'PlayMode_Battle' or sPlayMode == 'PlayMode_Rave' then
	--Battle

	t[#t+1] = Def.ActorFrame {
		LoadActor("frame_base")..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+45);
		};
	};

	for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
		t[#t+1] = Def.ActorFrame {
			--P1
			Def.ActorFrame{
				LoadActor("mask")..{
					InitCommand=cmd(x,SCREEN_CENTER_X-6;y,SCREEN_TOP+33);
					OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
					JudgmentMessageCommand=function(self,param)
						if param.Player == PLAYER_1 then
							self:stoptweening();
							p1Meter = p1Meter + GetDName(param.TapNoteScore);
							if p1Meter > 1 then
								SOUND:PlayOnce(THEME:GetPathS("Player battle","attack launch"));
								--GAMESTATE:GetPlayerState(PLAYER_2):SetPlayerOptions('ModsLevel_Song', GAMESTATE:GetPlayerState(PLAYER_2):GetPlayerOptionsString('ModsLevel_Song')..','..'dark')
								p1Level = p1Level +1;
								p1Meter = 0;
								if p1Level > maxLevel then
									p1Level = 0;
								elseif p1Level < 0 then
									p1Level = 0;
								end
								--self:sleep(5);
								--GAMESTATE:GetPlayerState(PLAYER_2):SetPlayerOptions('ModsLevel_Song', GAMESTATE:GetPlayerState(PLAYER_2):GetPlayerOptionsString('ModsLevel_Song')..','..'no dark')
							elseif p1Meter < 0 then
								p1Level = p1Level -1;
								p1Meter = p1Meter+1;
							end;
							self:linear(.1);
							self:rotationz(p1Meter*90);
						end
					end;
				};
				LoadActor("fill")..{
					InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+45;cropright,.5;glowshift;ztest,true);
				};
				LoadFont("ScoreDisplayRave level")..{
					Text="0";
					InitCommand=function(self)
						self:x(IsUsingWideScreen() and SCREEN_LEFT+155 or SCREEN_LEFT+155);
						self:y(SCREEN_BOTTOM-74);
					end;
					JudgmentMessageCommand=function(self,param)
						self:settext(p1Level);
					end;
				};
			};
			--P2
			Def.ActorFrame{
				LoadActor("mask")..{
					InitCommand=cmd(x,SCREEN_CENTER_X+6;y,SCREEN_TOP+33;zoomx,-1);
					OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
					JudgmentMessageCommand=function(self,param)
						if param.Player == PLAYER_2 then
							self:stoptweening();
							p2Meter = p2Meter + GetDName(param.TapNoteScore);
							if p2Meter > 1 then
								SOUND:PlayOnce(THEME:GetPathS("Player battle","attack launch"));
								--GAMESTATE:GetPlayerState(PLAYER_1):SetPlayerOptions('ModsLevel_Song', GAMESTATE:GetPlayerState(PLAYER_1):GetPlayerOptionsString('ModsLevel_Song')..','..'dark')
								p2Level = p2Level +1;
								p2Meter = 0;
								if p2Level > maxLevel then
									p2Level = 0;
								elseif p2Level < 0 then
									p2Level = 0;
								end
							elseif p2Meter < 0 then
								p2Level = p2Level -1;
								p2Meter = p2Meter+1;
							end;
							self:linear(.1);
							self:rotationz(p2Meter*-90);
						end
					end;
				};
				LoadActor("fill")..{
					InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+45;cropleft,.5;glowshift;ztest,true);
				};
				LoadFont("ScoreDisplayRave level")..{
					Text="0";
					InitCommand=function(self)
						self:x(IsUsingWideScreen() and SCREEN_RIGHT-36 or SCREEN_RIGHT-36);
						self:y(SCREEN_BOTTOM-74);
					end;
					JudgmentMessageCommand=function(self,param)
						self:settext(p2Level);
					end;
				};
			};
		};
	end
	t[#t+1] = Def.ActorFrame {
		LoadActor("frame_over")..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+45);
		};
	};
end
return t;
