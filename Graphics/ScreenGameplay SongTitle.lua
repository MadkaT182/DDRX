return LoadFont("_Russell14") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		if vSong then
			sText = vSong:GetDisplayFullTitle() .. "\n" .. vSong:GetDisplayArtist()
		end
		if vCourse then
			sText = vSong:GetDisplayFullTitle() .. "\n" .. vSong:GetDisplayArtist()
		end
		self:settext( sText );
		self:horizalign(left);
		self:playcommand( "On" );
		self:maxwidth(220);
	end;
};