local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("SongInformation","SongInformation") .. {
	BeginCommand=function(self)
		local SongOrCourse;
		if GAMESTATE:GetCurrentSong() then
			SongOrCourse = GAMESTATE:GetCurrentSong();
		elseif GAMESTATE:GetCurrentCourse() then
			SongOrCourse = GAMESTATE:GetCurrentCourse();
		else
			return
		end

		if SongOrCourse:HasBanner() then
			self:visible(false);
		else
			self:visible(true);
		end
	end;
};

return t
