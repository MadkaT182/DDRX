return Def.ActorFrame{
	LoadActor("bg");
	LoadFont("_title") .. {
		InitCommand=cmd(horizalign,left;x,-109;y,-7;maxwidth,220);
		CurrentSongChangedMessageCommand=function(self)
			self:settext(GAMESTATE:GetCurrentSong():GetDisplayFullTitle());
		end;
	};
	LoadFont("_artist") .. {
		InitCommand=cmd(horizalign,left;x,-109;y,11;maxwidth,220);
		CurrentSongChangedMessageCommand=function(self)
			self:settext(GAMESTATE:GetCurrentSong():GetDisplayArtist());
		end;
	}
};