return Def.CourseContentsList {
	MaxSongs=20;
	NumItemsToDraw=6;

	SetCommand=function(self)
		self:SetFromGameState();
		self:SetCurrentAndDestinationItem(5);
		self:SetPauseCountdownSeconds(1);
		self:SetSecondsPauseBetweenItems(0);
		self:SetLoop(true);
		self:SetMask(280,0);
	end;
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");

	Display=Def.ActorFrame{
		InitCommand=cmd(x,0;setsize,280,43);
		Def.Sprite{
			SetSongCommand=function(self, params)
				self:Load(THEME:GetPathG("","Course_item"));
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;x,0))(self);
			end;
		};
		LoadFont("_shared2")..{
			Text="";
			InitCommand=cmd(horizalign,left;maxwidth,223);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext(params.Song:GetDisplayFullTitle());
				end;
				self:x(-136);
				self:y(-11);
				(cmd(finishtweening;sleep,0.125*params.Number;))(self);
			end;
		};
		--Dummy indicators
		LoadFont("course_meter")..{
			Text="0000000000";
			InitCommand=cmd(horizalign,left;x,-131;y,15;diffusealpha,.5);
		};
		LoadFont("course_meter")..{
			Text="0000000000";
			InitCommand=cmd(horizalign,left;x,-131;y,5;diffusealpha,.5);
		};
		--Normal
		LoadFont("course_diff")..{
			Text="";
			InitCommand=cmd(horizalign,right);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext("00");
				end;
				self:x(90);
				self:y(15);
				(cmd(finishtweening;sleep,0.125*params.Number;))(self);
			end;
		};
		--Hard
		LoadFont("course_diff")..{
			Text="";
			InitCommand=cmd(horizalign,right);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext("00");
				end;
				self:x(90);
				self:y(6);
				(cmd(finishtweening;sleep,0.125*params.Number;))(self);
			end;
		};
		LoadFont("course_index")..{
			InitCommand=cmd(maxwidth,34);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext(params.Number);
				end
				self:x(115);
			end
		};
	};
};