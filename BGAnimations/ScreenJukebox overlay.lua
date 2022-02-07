return Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffuse,color("#000000"));
	};
	Def.Sprite{
		InitCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				if song:HasBackground() then
					self:Load(song:GetBackgroundPath())
				else
					self:Load(THEME:GetPathG("Common","fallback background"));
				end
			else
				self:Load(THEME:GetPathG("Common","fallback background"));
			end
		end;
		OnCommand=cmd(FullScreen;fadebottom,.75);
	};
	LoadActor("_shared options background")..{
		OnCommand=cmd(diffusealpha,.5;blend,"BlendMode_Add");
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_LEFT+170;y,SCREEN_CENTER_Y);
		LoadActor("ScreenLogo background/ddrx_splat")..{
			OnCommand=cmd(diffusealpha,.75);
		};
	};
	LoadActor("_header");
	LoadActor("_titles/jukebox")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-126;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,0.683;decelerate,0.083;diffusealpha,1;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Jukebox","section"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_HEIGHT*.75);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_LEFT+170;y,SCREEN_CENTER_Y-30);
		Def.Quad{
			OnCommand=cmd(x,5;y,5;diffuse,color("#00000088");zoomto,256,256);
		};
		LoadActor("_cds/"..GetSongDisc(GAMESTATE:GetCurrentSong():GetDisplayMainTitle()))..{
			OnCommand=cmd(sleep,1;spin;linear,1;x,SCREEN_LEFT+140);
		};
		Def.Sprite{
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				if song then
					if song:HasJacket() then
						self:Load(song:GetJacketPath());
						self:setsize(256,256);
					elseif song:HasBackground() then
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:setsize(256,256);
					else
						self:Load(THEME:GetPathG("", "Common fallback jacket"));
						self:setsize(256,256);
					end
				end
			end;
		};
	};
	LoadFont("_coursename")..{
		OnCommand=cmd(x,SCREEN_LEFT+45;y,SCREEN_CENTER_Y+120;horizalign,left;maxwidth,SCREEN_WIDTH*.8);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayFullTitle());
			end
		end;
	};
	LoadFont("_coursename")..{
		OnCommand=cmd(x,SCREEN_LEFT+45;y,SCREEN_CENTER_Y+150;horizalign,left);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayArtist());
			end
		end;
	};
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_WIDTH*.65;y,SCREEN_CENTER_Y+50;playcommand,"Update");
		LoadFont("_coursename")..{
			Text="00:00";
			UpdateCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				if song then
					self:settext(SecondsToMMSS(GAMESTATE:GetCurMusicSeconds()).." / "..SecondsToMMSS(song:MusicLengthSeconds()));
					self:sleep(1);
					self:queuecommand("Update");
				end
			end;
		};
	};
	LoadActor("_footer");
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
}