return Def.ActorFrame {
	Def.Sprite{
		BeginCommand=cmd(playcommand,"SetGraphic");
		SetGraphicCommand=function(self)
			local so = GAMESTATE:GetSortOrder();
			if so ~= nil then
				local sort = ToEnumShortString(so)
				self:Load(THEME:GetPathG("", "ScreenSelMus Sort/_"..sort.."_sort"));
			end;
		end;
		SortOrderChangedMessageCommand=function(self)
			self:linear(0.2)
			self:addx(-SCREEN_CENTER_X)
			self:queuecommand("SetGraphic");
			self:linear(0.2)
			self:addx(SCREEN_CENTER_X)
		end;
	};
};