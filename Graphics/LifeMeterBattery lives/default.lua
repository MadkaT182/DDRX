local suffix = "n";
local batw = 230;
local bath = 21;
local player = Var "Player";

local t = Def.ActorFrame {
	InitCommand=function(self)
		if player ~= PLAYER_1 then
			self:zoomx(-1);
		end
	end;
};

if IsUsingWideScreen() then
	suffix = "w";
	batw = 318;
end

local bat4p = batw/4;
local bat8p = batw/8;

t[#t+1] = Def.ActorFrame {
	--Battery 1 Live
	LoadActor(THEME:GetPathG("StreamDisplay","danger"))..{
		InitCommand=function(self)
			self:texcoordvelocity(1.5,0);
			self:x(7);
			self:zoomto(batw,bath);
		end;
	};
	--Battery 2-7 lines
	LoadActor(THEME:GetPathG("StreamDisplay","normal"))..{
		InitCommand=function(self)
			self:texcoordvelocity(.8,0);
			self:x(7);
			self:zoomto(batw,bath);
			self:visible(false);
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player == player then
				if params.LivesLeft >= 2 then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end;
	};
	--Battery Full
	LoadActor(THEME:GetPathG("StreamDisplay","hot"))..{
		InitCommand=function(self)
			self:texcoordvelocity(.8,0);
			self:zoomto(batw,bath);
			self:x(7);
		end;
		BeginCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() == 1 then
				self:visible(false)
			else
				self:visible(true)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if params.Player == player then
				if glifemeter:GetTotalLives() == 1 then
					self:visible(false)
				elseif params.LivesLeft == glifemeter:GetTotalLives() then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end;
	};
	-- 8 Battery empty red
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,batw/2+7;diffusetopedge,color("#5D1115");diffusebottomedge,color("#F50D0D"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() >= 5 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:linear(0);
			self:diffusetopedge(color("#5D1115"));
			self:diffusebottomedge(color("#F50D0D"));
			self:zoomto(batw-(params.LivesLeft*bat8p),bath);
			self:linear(0.33);
			self:diffusetopedge(color("#707171"));
			self:diffusebottomedge(color("#404040"));
		end;
	};
	-- 8 Battery empty over
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,batw/2+7;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() >= 5 then
				self:visible(true)
				if glifemeter:GetTotalLives() >= 8 then
					self:zoomto(0,bath);
				elseif glifemeter:GetTotalLives() == 7 then
					self:zoomto(bat8p,bath);
				elseif glifemeter:GetTotalLives() == 6 then
					self:zoomto(bat8p*2,bath);
				elseif glifemeter:GetTotalLives() == 5 then
					self:zoomto(bat8p*3,bath);
				end
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:sleep(0.33);
			self:zoomto(batw-(params.LivesLeft*bat8p),bath);
		end;
	};
	--4 Battery empty red
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,batw/2+7;diffusetopedge,color("#5D1115");diffusebottomedge,color("#F50D0D"));
		BeginCommand=function(self, params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() <= 4 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:linear(0);
			self:diffusetopedge(color("#5D1115"));
			self:diffusebottomedge(color("#F50D0D"));
			self:zoomto(batw-(params.LivesLeft*bat4p),bath);
			self:linear(0.33);
			self:diffusetopedge(color("#707171"));
			self:diffusebottomedge(color("#404040"));
		end;
	};
	--4 Battery empty over
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,batw/2+7;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
		BeginCommand=function(self, params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() <= 4 then
				self:visible(true)
				if glifemeter:GetTotalLives() == 4 then
					self:zoomto(0,bath);
				elseif glifemeter:GetTotalLives() == 3 then
					self:zoomto(bat4p,bath);
				elseif glifemeter:GetTotalLives() == 2 then
					self:zoomto(bat4p*2,bath);
				elseif glifemeter:GetTotalLives() == 1 then
					self:zoomto(bat4p*3,bath);
				end
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:sleep(0.33);
			self:zoomto(batw-(params.LivesLeft*bat4p),bath);
		end;
	};
	--Frame
	Def.Sprite {
		BeginCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() >= 5 then
				self:Load(THEME:GetPathG("LifeMeterBattery","lives/8frame"..suffix));
			else
				self:Load(THEME:GetPathG("LifeMeterBattery","lives/4frame"..suffix));
			end
		end
	};
};

return t;