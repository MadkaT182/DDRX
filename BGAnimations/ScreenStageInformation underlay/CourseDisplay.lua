if not GAMESTATE:IsCourseMode() then return Def.ActorFrame{} end; -- short circuit
local course = GAMESTATE:GetCurrentCourse()

local t = Def.ActorFrame{



	-- banner
	
	Def.Quad {
		InitCommand=cmd(Center;zoomto,321,321;diffuse,Color("Black"));
		OnCommand=cmd(diffusealpha,0;scaletoclipped,321,321;zoom,4;sleep,0.5;linear,0.15;diffusealpha,1;zoom,0.75;linear,0.1;zoom,1;linear,0.55;zoom,1;);
	};
	
	Def.Sprite{
		InitCommand=cmd(Center);
		BeginCommand=function(self)
			if course:GetBackgroundPath() then
				self:Load( course:GetBackgroundPath() )
			else
				-- default to the Banner of the first song in the course
				self:LoadFromCurrentSongBanner()
			end
		end;
		OnCommand=cmd(diffusealpha,0;scaletoclipped,320,320;zoom,4;sleep,0.5;linear,0.15;diffusealpha,1;zoom,0.75;linear,0.1;zoom,1;linear,0.55;zoom,1;);
	};
	
	Def.Sprite{
		InitCommand=cmd(Center);
		BeginCommand=function(self)
			if course:GetBackgroundPath() then
				self:Load( course:GetBackgroundPath() )
			else
				-- default to the Banner of the first song in the course
				self:LoadFromCurrentSongBanner()
			end
		end;
		OnCommand=cmd(diffusealpha,0;scaletoclipped,320,320;zoom,4;sleep,0.5;linear,0.15;diffusealpha,0.5;zoom,0.75;linear,0.1;zoom,1;linear,0.3;diffusealpha,0;zoom,1.2;sleep,3);
	};
	-- alternate background
	-- Def.Sprite{
		-- InitCommand=cmd(Center;);
		-- BeginCommand=cmd(LoadFromCurrentSongBackground;scaletoclipped,SCREEN_WIDTH,SCREEN_HEIGHT;diffusealpha,0);
		-- OnCommand=cmd(sleep,4;playcommand,"Show");
		-- ShowCommand=function(self)
			-- if course:HasBackground() then
				-- self:accelerate(0.25)
				-- self:diffusealpha(1)
			-- end
		-- end;
	-- };
};

return t;