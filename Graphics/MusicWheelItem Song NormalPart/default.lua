--main backing
local t = Def.ActorFrame {
 		LoadActor("normal")..{
	};
--new song
	LoadActor("NEW") .. {
		InitCommand=cmd(x,-138;y,-25;finishtweening;draworder,1);
		SetCommand=function(self,param)
			if param.Song then
				if PROFILEMAN:IsSongNew(param.Song) then
					self:visible(true);
				else
					self:visible(false);
				end
			else
				self:visible(false);
			end
		end;
	};
-- --P1 Meter
-- 	LoadFont("Common Normal")..{
-- 		InitCommand=cmd(player,PLAYER_1;x,-100;zoom,0.5;y,-145;draworder,2;diffuse,color("#000000");strokecolor,color("Outline"));
-- 		OnCommand=cmd(zoom,1);
-- 		SetMessageCommand=function(self,params)
-- 		local song = params.Song
-- 			if song then
-- 		local steps = SongUtil.GetPlayableSteps( song )
-- 	for i,step in ipairs(steps) do
-- 		self:settext( step:GetMeter() )
-- 	end;
-- 	end;
-- 	end;
-- 	};
-- --P2 Meter
-- 	LoadFont("Common Normal")..{
-- 		InitCommand=cmd(player,PLAYER_2;x,100;zoom,0.5;y,-145;draworder,2;diffuse,color("#000000");strokecolor,color("Outline"));
-- 		OnCommand=cmd(zoom,1);
-- 		SetMessageCommand=function(self,params)
-- 		local song = params.Song
-- 			if song then
-- 		local steps = SongUtil.GetPlayableSteps( song )
-- 	for i,step in ipairs(steps) do
-- 		local child = ( step:GetDifficulty() )
-- 		self:settext( step:GetMeter() )
-- 	end;
-- 	end;
-- 	end;
-- 	};	
};
return t;