local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("MWHL_Glow")..{
		InitCommand=cmd(x,7;blend,"BlendMode_Add";diffuseshift);
	};
	LoadActor("MWHL_Frame");
	LoadActor("ScreenSelectMusic NewSong")..{
		InitCommand=cmd(y,-25;x,-139);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				if PROFILEMAN:IsSongNew(song) then
					self:visible(true);
				else
					self:visible(false);
				end
			else
				self:visible(false);
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	};
};

return t;