local t = Def.ActorFrame{
	Def.Banner{
		Name="BannerBG";
		SetMessageCommand=function(self,params)
			local group = params.Text;
			self:Load(THEME:GetPathG("Section",GetSortItemBG(group)));
		end;
	};
	Def.Banner{
		Name="DiffFG";
		InitCommand=cmd(x,-14);
		SetMessageCommand=function(self,params)
			local group = params.Text;
			self:Load(THEME:GetPathG("Diff",GetGroupItemFG(group)));
		end;
	};
	LoadFont("MusicWheelItem white")..{
		SetMessageCommand=function(self,params)
			local group = params.Text;
			if group then
				self:settext(group);
				self:diffuse(color(GetGroupFont(group)));
				self:diffusealpha(GetGroupVisibility(group));
				self:maxwidth(284);
			end
		end;
	};
};

return t;