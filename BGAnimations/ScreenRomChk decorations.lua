local perc = 0;
local loadtm = 40;
local timeunit = loadtm/100;
return Def.ActorFrame {
	LoadFont("_service")..{
		Text="ROM CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40);
	};
	LoadFont("_service")..{
		Text="HD:---";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+164;zoom,.8);
		OnCommand=cmd(sleep,40;queuecommand,"Finish");
		FinishCommand=cmd(settext,"HD: OK";diffuse,color("#00FF00"));
	};
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X-27;y,SCREEN_CENTER_Y+25);
		Def.Quad{
			InitCommand=cmd(zoomto,264,14;diffuse,color("#FFFFFF"));
		};
		Def.Quad{
			InitCommand=cmd(zoomto,262,12;diffuse,color("#000000");cropright,0);
			OnCommand=function(self)
				if perc == 100 then
					self:cropright(1);
				else
					self:cropleft(perc*.01);
					self:sleep(timeunit);
					self:queuecommand("On");
				end
			end;
		};
	};
	LoadFont("_service")..{
		Text="00.00%";
		InitCommand=cmd(x,SCREEN_CENTER_X+110;y,SCREEN_TOP+264;zoom,.8;horizalign,left);
		OnCommand=function(self)
			if perc == 100 then
				self:settext("100.00%");
			else
				self:settext(perc.."."..math.random(0,99).."%");
				self:queuecommand("Incr");
			end
		end;
		IncrCommand=function(self)
			perc = perc+1;
			self:sleep(timeunit);
			self:queuecommand("On");
		end;
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = ABORT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-24;zoom,.8);
		OnCommand=cmd(sleep,40;queuecommand,"Finish");
		FinishCommand=cmd(settext,"PRESS 1P START BUTTON = EXIT");
	};
};