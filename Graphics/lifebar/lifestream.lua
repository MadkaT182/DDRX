local suffix = "n";
local batw = 230;
local bath = 21;

local t = Def.ActorFrame {};

if IsUsingWideScreen() then
	suffix = "w";
	batw = 318;
end

for player in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame {
		InitCommand=function(self)
			if player == PLAYER_1 then
				self:x(IsUsingWideScreen() and -246 or -185);
			else
				self:x(IsUsingWideScreen() and 247 or 185);
				self:zoomx(-1);
			end;
			self:y(SCREEN_TOP+2);
		end;
		Def.ActorFrame{
			--BG
			Def.Quad{
				BeginCommand=cmd(horizalign,right;x,batw/2+7;zoomto,batw,bath;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
			};
			--Fill
			Def.ActorFrame{
				InitCommand=cmd(diffusealpha,0;sleep,2.9;diffusealpha,1);
				LoadActor(THEME:GetPathG("StreamDisplay", "normal"))..{
					InitCommand=function(self)
						self:x(IsUsingWideScreen() and 2 or 6);
						self:texcoordvelocity(.8,0);
						self:zoomto(batw,bath);
						self:cropright(.5);
					end;
					LifeChangedMessageCommand=function(self,param)
						if param.Player == player then
							self:stoptweening();
							if param.LifeMeter:IsInDanger() then
								self:diffusealpha(0);
							else
								self:diffusealpha(1);
							end
							self:linear(.3);
							self:cropright(1-param.LifeMeter:GetLife()+.025);
							self:linear(.1);
							self:cropright(1-param.LifeMeter:GetLife());
						end;
					end;
				};
			};
			LoadActor(THEME:GetPathG("StreamDisplay", "normal"))..{
				OnCommand=function(self)
					self:x(IsUsingWideScreen() and 2 or 6);
					self:texcoordvelocity(.8,0);
					self:zoomto(batw,bath);
					self:cropright(1);
					self:sleep(.5);
					self:linear(.9);
					self:cropright(.5);
					self:linear(.5);
					self:cropright(.5);
					self:linear(.5);
					self:cropright(.55);
					self:linear(.5);
					self:cropright(.5);
					self:sleep(0);
					self:diffusealpha(0);
				end;
			};
			--Danger
			LoadActor(THEME:GetPathG("StreamDisplay", "danger"))..{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and 2 or 6);
					self:texcoordvelocity(.8,0);
					self:zoomto(batw,bath);
					self:diffusealpha(0);
				end;
				LifeChangedMessageCommand=function(self,param)
					if param.Player == player then
						self:stoptweening();
						if param.LifeMeter:IsInDanger() then
							self:diffusealpha(1);
						else
							self:diffusealpha(0);
						end
						self:linear(.3);
						self:cropright(1-param.LifeMeter:GetLife()+.025);
						self:linear(.1);
						self:cropright(1-param.LifeMeter:GetLife());
					end;
				end;
			};
			--Full
			LoadActor(THEME:GetPathG("StreamDisplay", "hot"))..{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and 2 or 6);
					self:texcoordvelocity(.8,0);
					self:zoomto(batw,bath);
					self:glowblink();
					self:effectcolor1(1,1,1,0);
					self:effectcolor2(1,1,1,.5);
					self:effectperiod(.075);
					self:diffusealpha(0);
				end;
				HealthStateChangedMessageCommand=function(self, param)
					if param.PlayerNumber == player then
						if param.HealthState == "HealthState_Hot" then
							self:diffusealpha(1);
						else
							self:diffusealpha(0);
						end;
					end;
				end;
			};
			--Frame
			Def.Sprite{
				BeginCommand=function(self)
					self:Load(THEME:GetPathG("", "lifebar/stream_"..suffix));
				end;
			};
		};
	};
end

return t;