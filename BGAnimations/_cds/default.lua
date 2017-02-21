local t = Def.ActorFrame {};
local songtitl = GAMESTATE:GetCurrentSong():GetTranslitMainTitle()
local discimg = "xx"

if songtitl == "Pluto" then
discimg = "01"
end

if songtitl == "Pluto Relinquish" then
discimg = "02"
end

if songtitl == "SABER WING" then
discimg = "03"
end

if songtitl == "On The Break" then
discimg = "04"
end

if songtitl == "SABER WING (AKIRA ISHIHARA Headshot mix)" then
discimg = "05"
end

if songtitl == "On The Bounce" then
discimg = "06"
end

if songtitl == "Horatio" then
discimg = "07"
end

if songtitl == "Trigger" then
discimg = "08"
end

if songtitl == "TRIP MACHINE(X-Special)" then
discimg = "09"
end

if songtitl == "PARANOiA(X-Special)" then
discimg = "10"
end

if songtitl == "SP-TRIP MACHINE~JUNGLE MIX~(X-Special)" then
discimg = "11"
end

if songtitl == "PARANOiA MAX~DIRTY MIX~in roulette(X-Special)" then
discimg = "12"
end

if songtitl == "PARANOiA MAX~DIRTY MIX~ (X-Special)" then
discimg = "13"
end

if songtitl == "PARANOiA Rebirth (X-Special)" then
discimg = "14"
end

if songtitl == "AFRONOVA (X-Special)" then
discimg = "15"
end

if songtitl == "PARANOiA ETERNAL (X-Special)" then
discimg = "16"
end

if songtitl == "TRIP MACHINE CLIMAX (X-Special)" then
discimg = "17"
end

if songtitl == "PARANOiA EVOLUTION (X-Special)" then
discimg = "18"
end

if songtitl == "Healing Vision (X-Special)" then
discimg = "19"
end

if songtitl == "MAX 300 (X-Special)" then
discimg = "20"
end

if songtitl == "CANDY (X-Special)" then
discimg = "21"
end

if songtitl == "MAXX UNLIMITED (X-Special)" then
discimg = "22"
end

if songtitl == "KAKUMEI (X-Special)" then
discimg = "23"
end

if songtitl == "The legend of MAX (X-Special)" then
discimg = "24"
end

if songtitl == "Dance Dance Revolution (X-Special)" then
discimg = "25"
end

if ( GAMESTATE:GetCurrentStage() == "Stage_Final" or GAMESTATE:GetCurrentStage() == "Stage_Extra1" or GAMESTATE:GetCurrentStage() == "Stage_Extra2") then

	t[#t+1] = Def.ActorFrame {

	LoadActor( discimg )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,1.866;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1;sleep,6;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.1;zoomx,1.625;zoomy,0);
		};
	}

end

return t