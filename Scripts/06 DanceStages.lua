function HasAnyCharacters(pn)
	return GAMESTATE:IsPlayerEnabled(pn) and GAMESTATE:GetCharacter(pn):GetDisplayName() ~= "default"
end

function AnyoneHasChar()
	return (HasAnyCharacters(PLAYER_1) or HasAnyCharacters(PLAYER_2))
end

function BothPlayersEnabled()
	return GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:IsPlayerEnabled(PLAYER_2)
end

function ResetCamera()
    return Camera:rotationy(180):rotationx(0):rotationz(0):Center():z(WideScale(300,400)):addy(10):stopeffect()
end

DEDICHAR = {};


function DEDICHAR:SetTimingData()
	setenv("song", 	GAMESTATE:GetCurrentSong() )
	setenv("start", getenv("song"):GetFirstBeat() )
	setenv("now",	GAMESTATE:GetSongBeat() )
end

function DEDICHAR:UpdateModelRate()
	local RangeMax = ThemePrefs.Get("ModelRateBPMMax")
	local RangeLow = ThemePrefs.Get("ModelRateBPMLow")
	local MultiMax = ThemePrefs.Get("ModelRateMulMax")
	local MultiLow = ThemePrefs.Get("ModelRateMulLow")

	local MusicRate = 1
	if SCREENMAN:GetTopScreen():GetScreenType() == "ScreenType_Gameplay" and SCREENMAN:GetTopScreen():GetHasteRate() then
		MusicRate = SCREENMAN:GetTopScreen():GetHasteRate()
	end
	local BPM = (GAMESTATE:GetSongBPS()*60)
	
	local UpdateScale = scale( BPM, RangeLow, RangeMax, MultiLow, MultiMax );

	local Clamped = clamp( UpdateScale, 0.5, 2.5 );

	local ToConvert = Clamped*MusicRate
	local SPos = GAMESTATE:GetSongPosition()

	if not SPos:GetFreeze() and not SPos:GetDelay() then
		return ToConvert
	end
	return 0
end

Config = {};

function Config.Load(key,file)
	if not FILEMAN:DoesFileExist(file) then return false end
	
	local Container = {}

	local configfile = RageFileUtil.CreateRageFile()
	configfile:Open(file, 1)
	
	local configcontent = configfile:Read()
	
	configfile:Close()
	configfile:destroy()
	
	for line in string.gmatch(configcontent.."\n", "(.-)\n") do
		for KeyVal, Val in string.gmatch(line, "(.-)=(.+)") do
			if key == KeyVal then return Val end
		end		
	end
end

function setenv(name,value) GAMESTATE:Env()[name] = value end
function getenv(name) return GAMESTATE:Env()[name] end