function ScreenGameplay_P1X()
	local st = GAMESTATE:GetCurrentStyle():GetStepsType();
	if st == "StepsType_Dance_Solo" then
		return SCREEN_CENTER_X;
	elseif st == "StepsType_Dance_Couple" then
		return WideScale(SCREEN_CENTER_X-175,SCREEN_CENTER_X-160);
	else
		return WideScale(SCREEN_CENTER_X-175,SCREEN_CENTER_X-235);
	end
end
function ScreenGameplay_P2X()
	local st = GAMESTATE:GetCurrentStyle():GetStepsType();
	if st == "StepsType_Dance_Solo" then
		return SCREEN_CENTER_X;
	elseif st == "StepsType_Dance_Couple" then
		return WideScale(SCREEN_CENTER_X+175,SCREEN_CENTER_X+160);
	else
		return WideScale(SCREEN_CENTER_X+175,SCREEN_CENTER_X+235);
	end
end

function TitleChoices()
	local coinMode = GAMESTATE:GetCoinMode()
	if coinMode == 'CoinMode_Home' then
		return "Start"
	else
		return "ArcStart"
	end
end;

function ModeChoices()
	local coinMode = GAMESTATE:GetCoinMode()
	if coinMode == 'CoinMode_Home' then
		return "GameStart,Edit,Options,Exit,Customize"
	else
		return "GameStart"
	end
end;