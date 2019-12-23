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
			LoadActor(THEME:GetPathG("StreamDisplay", "normal"))..{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and 2 or 6);
					self:texcoordvelocity(.8,0);
					self:zoomto(batw,bath);
					self:cropright(1);
					self:linear(1);
					self:cropright(.5);
				end;
				LifeChangedMessageCommand=function(self,param)
					if param.Player == player then
						self:stoptweening();
						self:cropright(1-param.LifeMeter:GetLife());
						self:linear(.25);
						self:cropright(1-param.LifeMeter:GetLife()+.025);
						self:linear(.25);
						self:cropright(1-param.LifeMeter:GetLife()-.05);
						self:linear(.25);
						self:cropright(1-param.LifeMeter:GetLife()+.025);
						self:linear(.25);
						self:cropright(1-param.LifeMeter:GetLife());
					end;
				end;
			};
			--Danger
			LoadActor(THEME:GetPathG("StreamDisplay", "danger"))..{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and 2 or 6);
					self:diffusealpha(0);
				end;
				LifeChangedMessageCommand=function(self,param)
					if param.Player == player then
						if param.HealthState == "HealthState_Danger" then
							self:stoptweening();
							self:diffusealpha(1);
							self:cropright(1-param.LifeMeter:GetLife());
							self:linear(.25);
							self:cropright(1-param.LifeMeter:GetLife()+.025);
							self:linear(.25);
							self:cropright(1-param.LifeMeter:GetLife()-.05);
							self:linear(.25);
							self:cropright(1-param.LifeMeter:GetLife()+.025);
							self:linear(.25);
							self:cropright(1-param.LifeMeter:GetLife());
						else
							self:diffusealpha(0);
						end;
					end;
				end;
			};
			--Full
			LoadActor(THEME:GetPathG("StreamDisplay", "hot"))..{
				InitCommand=function(self)
					self:x(IsUsingWideScreen() and 2 or 6);
					self:texcoordvelocity(.8,0);
					self:zoomto(batw,bath);
					self:diffusealpha(0);
				end;
				HealthStateChangedMessageCommand=function(self, param)
					if param.PlayerNumber == player then
						if param.HealthState == "HealthState_Hot" then
							self:linear(1);
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