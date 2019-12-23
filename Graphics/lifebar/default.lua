local t = Def.ActorFrame {};
local sPlayMode = GAMESTATE:GetPlayMode();
local barw = 100;
local barh = 18;

if IsUsingWideScreen() then
	barw = 658;
end

if sPlayMode == 'PlayMode_Battle' or sPlayMode == 'PlayMode_Rave' then
	--Battle
	for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
		t[#t+1] = Def.ActorFrame {
			--P1
			Def.ActorFrame{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and -53 or -30);
				end;
				Def.Quad{
					InitCommand=cmd(zoomto,barw/2,barh;x,barw/4;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
				};
				LoadActor("Life_Battle_P2")..{
					InitCommand=function(self)
						self:zoomto(barw,barh);
						self:texcoordvelocity(.2,0);
						self:ztest(true);
					end;
				};
				LoadActor("Life_Battle_P1")..{
					InitCommand=function(self)
						self:zoomto(barw,barh);
						self:texcoordvelocity(.2,0);
						self:cropright(.5);
						self:ztest(true);
					end;
					JudgmentMessageCommand=function(self,param)
						if param.Player == PLAYER_1 then
							self:stoptweening();
							self:cropright(1-STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife());
						end;
					end;
				};
				LoadActor("combined_W")..{
					OnCommand=cmd(x,-171);
					Condition=IsUsingWideScreen();
				};
				LoadActor("combined_N")..{
					Condition=not IsUsingWideScreen();
				};
				LoadActor("battle_ind")..{
					InitCommand=cmd(diffusealpha,0;blend,'BlendMode_Add');
					JudgmentMessageCommand=function(self,param)
						if param.Player == PLAYER_1 then
							local p1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
							if p1Life > 1 then
								p1Life = 1;
							elseif p1Life < 0 then
								p1Life = 0;
							end;
							if p1Life > .5 then
								self:diffusealpha(0);
							else
								self:diffusealpha(1);
							end;
							local p1Pos=(p1Life*barw)-(barw/2);
							self:x(p1Pos);
						end;
					end;
				};
			};
			--P2
			Def.ActorFrame{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and 53 or 30);
				end;
				Def.Quad{
					InitCommand=cmd(zoomto,barw/2,barh;x,-barw/4;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
				};
				LoadActor("Life_Battle_P1")..{
					InitCommand=function(self)
						self:zoomto(barw,barh);
						self:texcoordvelocity(-.2,0);
						self:ztest(true);
					end;
				};
				LoadActor("Life_Battle_P2")..{
					InitCommand=function(self)
						self:zoomto(barw,barh);
						self:texcoordvelocity(-.2,0);
						self:cropleft(.5);
						self:ztest(true);
					end;
					JudgmentMessageCommand=function(self,param)
						if param.Player == PLAYER_2 then
							self:cropleft(1-(1-STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife()));
						end
					end;
				};
				LoadActor("combined_W")..{
					OnCommand=cmd(x,171;zoomx,-1);
					Condition=IsUsingWideScreen();
				};
				LoadActor("combined_N")..{
					Condition=not IsUsingWideScreen();
				};
				LoadActor("battle_ind")..{
					InitCommand=cmd(diffusealpha,0;blend,'BlendMode_Add');
					JudgmentMessageCommand=function(self,param)
						if param.Player == PLAYER_2 then
							local p1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
							if p1Life > 1 then
								p1Life = 1;
							elseif p1Life < 0 then
								p1Life = 0;
							end;
							if p1Life < .5 then
								self:diffusealpha(0);
							else
								self:diffusealpha(1);
							end;
							local p2Pos=(p1Life*barw)-(barw/2);
							self:x(p2Pos);
						end;
					end;
				};
			};
		};
	end
elseif GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' and not GAMESTATE:IsDemonstration() then
	--Regular
	t[#t+1] = Def.ActorFrame {
		LoadActor("lifestream");
	};
end
return t;
