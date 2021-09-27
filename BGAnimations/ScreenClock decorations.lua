local function NameOfWeekDay(day)
	local DayName = {
		[0] = "Sun",
		[1] = "Mon",
		[2] = "Tue",
		[3] = "Wed",
		[4] = "Thu",
		[5] = "Fri",
		[6] = "Sat",
	};
	return DayName[day] or "Sun";
end

return Def.ActorFrame{
	LoadFont("Common normal")..{
		Text="CLOCK";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,33);
	};
	LoadFont("Common normal")..{
		Text="00:00:00";
		OnCommand=cmd(x,SCREEN_CENTER_X-70;y,158;horizalign,left;zoom,.8;playcommand,"Update");
		UpdateCommand=function(self)
			self:stoptweening();
			self:settext(string.format("%02d",Hour())..":"..string.format("%02d",Minute())..":"..string.format("%02d",Second()));
			self:sleep(1);
			self:queuecommand("Update");
		end;
	};
	LoadFont("Common normal")..{
		Text="2008-11-01(Sat)";
		OnCommand=cmd(x,SCREEN_CENTER_X-70;y,180;horizalign,left;zoom,.8;playcommand,"Update");
		UpdateCommand=function(self)
			self:stoptweening();
			self:settext(Year().."-"..string.format("%02d",MonthOfYear()).."-"..string.format("%02d",Weekday()).."("..NameOfWeekDay(Weekday())..")");
			self:sleep(1);
			self:queuecommand("Update");
		end;
	};
	LoadFont("Common normal")..{
		Text="PRESS P1 LEFT/RIGHT BUTTON = SELECT ITEM";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-51;zoom,.8);
	};
	LoadFont("Common normal")..{
		Text="PRESS P1 START BUTTON = EXECUTE";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-32;zoom,.8);
	};
}