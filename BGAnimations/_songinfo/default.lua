local t = Def.ActorFrame {};

--Background
t[#t+1] = LoadActor("bg")..{};

--Song Information
t[#t+1] = LoadFont("_title") .. {
	InitCommand=cmd(horizalign,left;addx,-109;addy,-7;maxwidth,220);
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		sText = vSong:GetDisplayFullTitle()
		self:settext( sText );
	end;
}

--Artist Information
t[#t+1] = LoadFont("_artist") .. {
InitCommand=cmd(horizalign,left;addx,-109;addy,11;maxwidth,220);
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		sText = vSong:GetDisplayArtist()
		self:settext( sText );
	end;
}

return t;