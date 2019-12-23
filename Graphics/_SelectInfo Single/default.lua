return Def.ActorFrame{
	InitCommand=cmd(x,119;y,-135);
	OnCommand=cmd(sleep,1.5;queuecommand,"Play";);
	OffCommand=cmd(linear,.1175;addx,SCREEN_WIDTH);
	GainFocusCommand=cmd(stoptweening;sleep,.1;diffusealpha,1;sleep,1;queuecommand,"Play");
	LoseFocusCommand=cmd(stoptweening;linear,.05;x,138;linear,.05;x,119;diffusealpha,0);
	PlayCommand=function(self)
		if self:GetVisible() then
		SOUND:PlayAnnouncer( "select style comment single" )
		end;
	end;
	LoadActor("../_SelectArt/nfofill");
	LoadActor("../_SelectArt/nfotop")..{
		OnCommand=cmd(y,-50);
	};
	LoadActor("../_SelectArt/nfobottom")..{
		OnCommand=cmd(y,66);
	};
	LoadActor("../_SelectArt/stgmax")..{
		OnCommand=cmd(x,100;y,-63);
	};
	LoadActor("label")..{
		OnCommand=cmd(x,-119;y,-41);
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "desc_jp" or "desc_us")..{
		OnCommand=cmd(x,-21;y,5);
	};
	LoadFont("maxstages")..{
		InitCommand=cmd(horizalign,right;x,177;y,-65;playcommand,"Set");
		SetCommand=function(self)
		local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
			self:settext(max_stages);
		end
	};
};