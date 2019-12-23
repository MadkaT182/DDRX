return Def.ActorFrame{
	InitCommand=cmd(x,-48;y,-135);
	OffCommand=cmd(linear,.1175;addx,SCREEN_WIDTH);
	GainFocusCommand=cmd(stoptweening;sleep,.1;diffusealpha,1;sleep,1;queuecommand,"Play");
	LoseFocusCommand=cmd(stoptweening;linear,.05;x,-29;linear,.05;x,-48;diffusealpha,0);
	PlayCommand=function(self)
		if self:GetVisible() then
		SOUND:PlayAnnouncer( "select style comment double" )
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
		OnCommand=cmd(x,-118;y,-41);
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "desc_jp" or "desc_us")..{
		OnCommand=cmd(x,-5;y,6);
	};
	LoadFont("maxstages")..{
		InitCommand=cmd(horizalign,right;x,177;y,-65;playcommand,"Set");
		SetCommand=function(self)
		local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
			self:settext(max_stages);
		end
	};
};