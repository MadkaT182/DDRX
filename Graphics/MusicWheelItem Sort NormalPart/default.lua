local t = Def.ActorFrame{
	Def.Banner {
		Name="SongBanner";
		SetMessageCommand=function(self,params)
			self:Load(THEME:GetPathG("Section","Red"));
		end;
	};
	--Font
	LoadFont("ScreenTitleMenu choices")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local so = GAMESTATE:GetSortOrder();
			local label = params.Label;
			if so == "SortOrder_ModeMenu" then
				self:settext(label);
			end
		end;
	};
};
return t;