-- DO NOT USE THIS IN ANOTHER THEME! STRICTLY PROHIBITED!
--ÚLTIMA MODIFICACIÓN: 28072021 1337

local rTime = THEME:GetMetric("ScreenGameplay","MinSecondsToMusic");
local background = Def.ActorFrame{};
local BGChanges = GAMESTATE:GetCurrentSong():HasBGChanges() == false
local Video1 = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."avi") == false
local Video2 = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."mp4") == false

local t = Def.ActorFrame{
	InitCommand=function(self)
		self:Center():fov(90):rotationy(180):z( WideScale(300,400) ):addy(10);
	end;
	OnCommand=function(self) Camera = self; end;
};


local StagesFolder="/DanceStages/"

if Video1 and Video2 then

-------------RELACIÓN DE CANCIONES CON SU RESPECTIVO ESCENARIO-----------------------

function stagesList()
	return FILEMAN:GetDirListing("/DanceStages/", true, false )
end

local tStages = stagesList();

function GetStage(song)
	local SongList = {
	--LOVE SWEETS
	["PORIRIZUMU"] = "LOVE SWEETS (X)",
	["ポリリズム"] = "LOVE SWEETS (X)",
	["Suki Melo"] = "LOVE SWEETS (X)",
	["スキ☆メロ"] = "LOVE SWEETS (X)",
	["TRIP MACHINE(X-Special)"] = "LOVE SWEETS (X)",
	["30 Lives (Up-Up-Down-Dance Mix)"] = "LOVE SWEETS (X)",
	
	--DAWN STREETS
	["SP-TRIP MACHINE～JUNGLE MIX～(X-Special)"] = "DAWN STREETS (X)",
	["PARANOiA MAX～DIRTY MIX～(X-Special)"] = "DAWN STREETS (X)",
	["SEXY PLANET"] = "DAWN STREETS (X)",
	
	--BOOM BOOM BOOM
	["Übertreffen"] = "BOOM BOOM BOOM (X)",
	--CRYSTALDIUM
	["PARANOiA"] = "CRYSTALDIUM (X)",
	--DANCING RAYS
	["Xmix5 (Overcrush)"] = "DANCING RAYS (X)",
	["A Geisha's Dream"] = "DANCING RAYS (X)",
	["Butterfly (2008 X-edit)"] = "DANCING RAYS (X)",
	["Till the lonely's gone"] = "DANCING RAYS (X)",
	["Take A Chance"] = "DANCING RAYS (X)",
	["We've Got To Make It Tonight"] = "DANCING RAYS (X)",
	
	
	
	
	--TODO
	--MAKE IT BETTER
	--paranoia XSPECIAL BOOM BOOM?
	--TRIP MACHINE
	};
	return SongList[song] or tStages[math.random(#tStages)]
end

DanceStage = GetStage(GAMESTATE:GetCurrentSong():GetDisplayFullTitle());

-------------- CHARACTERS
-------SIZE

Character_1 = GAMESTATE:GetCharacter(PLAYER_1):GetDisplayName()
Character_2 = GAMESTATE:GetCharacter(PLAYER_2):GetDisplayName()

if
    string.match(Character_1, "Rinon")
then
    CharacterSize1=0.67
elseif 
    string.match(Character_1, "Baby")
then
    CharacterSize1=0.4
elseif 
    string.match(Character_1, "Rena")
then
    CharacterSize1=0.82
elseif 
	string.match(Character_1, "PiX")
then
	CharacterSize1=0.38
elseif 
	(string.match(Character_1, "(Ace)") or string.match(Character_1, "(X2)") or string.match(Character_1, "(X)") or string.match(Character_1, "(SN)") or string.match(Character_1, "(2ndMode)"))
then
	CharacterSize1=1
else
    CharacterSize1=0.75
end


if
    string.match(Character_2, "Rinon")
then
    CharacterSize2=0.67
elseif 
    string.match(Character_2, "Baby")
then
    CharacterSize2=0.4
elseif 
    string.match(Character_2, "Rena")
then
    CharacterSize2=0.82
elseif 
	string.match(Character_2, "PiX")
then
	CharacterSize2=0.38
elseif 
	(string.match(Character_2, "(Ace)") or string.match(Character_2, "(X2)") or string.match(Character_2, "(X)") or string.match(Character_2, "(SN)") or string.match(Character_2, "(2ndMode)"))
then
	CharacterSize2=1
else
    CharacterSize2=0.75
end


-------GENRE AND CHOREO

if BothPlayersEnabled() then

	Choreo = ""

	-------GENRE

	if
		string.match(Character_1, "Jenny") or
		string.match(Character_1, "Alice") or
		string.match(Character_1, "Yuni") or
		string.match(Character_1, "PiX") or
		string.match(Character_1, "Rena") or
		string.match(Character_1, "Emi") or
		string.match(Character_1, "Janet")
	then
		Char1_Gen="F"
	elseif
		string.match(Character_1, "Rage") or
		string.match(Character_1, "Disco") or
		string.match(Character_1, "Baby") or
		string.match(Character_1, "Victory") or
		string.match(Character_1, "Dred")
	then
		Char1_Gen="M"
	elseif
		string.match(Character_1, "Rinon")
	then
		Char1_Gen="R"
	end


	if
		string.match(Character_2, "Jenny") or
		string.match(Character_2, "Alice") or
		string.match(Character_2, "Yuni") or
		string.match(Character_2, "PiX") or
		string.match(Character_2, "Rena") or
		string.match(Character_2, "Emi") or
		string.match(Character_2, "Janet")
	then
		Char2_Gen="F"
	elseif
		string.match(Character_2, "Rage") or
		string.match(Character_2, "Disco") or
		string.match(Character_2, "Baby") or
		string.match(Character_2, "Victory") or
		string.match(Character_2, "Dred")
	then
		Char2_Gen="M"
	elseif
		string.match(Character_2, "Rinon")
	then
		Char2_Gen="R"
	end

	
	-------CHOREO


	if (Char1_Gen == "M" and Char2_Gen == "F") or
		(Char1_Gen == "M" and Char2_Gen == "R") or
		(Char1_Gen == "F" and Char2_Gen == "M") or
		(Char1_Gen == "R" and Char2_Gen == "M")
	then
		DoubleGenre_Choreo = math.random(1,4)
		if DoubleGenre_Choreo == 1 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo == 2 then Choreo = "Higher"
		elseif DoubleGenre_Choreo == 3 then Choreo = "River"
		elseif DoubleGenre_Choreo == 4 then Choreo = "Love"
		end

	elseif (Char1_Gen == "F" and Char2_Gen == "F") or
	(Char1_Gen == "R" and Char2_Gen == "R") or
	(Char1_Gen == "R" and Char2_Gen == "F") or
	(Char1_Gen == "F" and Char2_Gen == "R")
	then
		DoubleGenre_Choreo = math.random(1,7)
		if DoubleGenre_Choreo == 1 then Choreo = "Yume"
		elseif DoubleGenre_Choreo == 2 then Choreo = "Brain"
		elseif DoubleGenre_Choreo == 3 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo == 4 then Choreo = "Higher"
		elseif DoubleGenre_Choreo == 5 then Choreo = "Love"
		elseif DoubleGenre_Choreo == 6 then Choreo = "Luka"
		elseif DoubleGenre_Choreo == 7 then Choreo = "River"
		end


	elseif (Char1_Gen == "M" and Char2_Gen == "M") then
		DoubleGenre_Choreo = math.random(1,9)
		if DoubleGenre_Choreo == 1 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo == 2 then Choreo = "Specialist"
		elseif DoubleGenre_Choreo == 3 then Choreo = "Higher"
		elseif DoubleGenre_Choreo == 4 then Choreo = "Life"
		elseif DoubleGenre_Choreo == 5 then Choreo = "Love"
		elseif DoubleGenre_Choreo == 6 then Choreo = "River"
		elseif DoubleGenre_Choreo == 7 then Choreo = "Seisou"
		elseif DoubleGenre_Choreo == 8 then Choreo = "Snowman"
		elseif DoubleGenre_Choreo == 9 then Choreo = "Chaos"
		end
	end
end


-------CHARACTER LOAD
		YND = math.random(1,7)
		if YND == 1 then Yuni = "F Yume"
		elseif YND == 2 then Yuni = "F Brain"
		elseif YND == 3 then Yuni = "F Embarr"
		elseif YND == 4 then Yuni = "F Higher"
		elseif YND == 5 then Yuni = "F Love"
		elseif YND == 6 then Yuni = "F Luka"
		elseif YND == 7 then Yuni = "F River"
		end
if CurrentSong == "Yuni's Nocturnal Days" then
	t[#t+1] = Def.Model {
				Meshes="/Characters/(X2) Yuni/model.txt";
				Materials="/Characters/(X2) Yuni/model.txt";
				Bones="/Characters/(X2) Yuni/Dance/"..Yuni..".redir";
				OnCommand=function(self)
				self:cullmode("CullMode_None")
				self:x(0):zoom(1):queuecommand("UpdateRate") end,
				UpdateRateCommand=function(self)
				end,
		};
else


if AnyoneHasChar() then
	for player in ivalues(PlayerNumber) do


		if BothPlayersEnabled() and 
		(string.match(Character_1, "(Ace)") or string.match(Character_1, "(X2)") or string.match(Character_1, "(X)") or string.match(Character_1, "(SN)") or string.match(Character_1, "(2ndMode)")) 
		and
		(string.match(Character_2, "(Ace)") or string.match(Character_2, "(X2)") or string.match(Character_2, "(X)") or string.match(Character_2, "(SN)") or string.match(Character_2, "(2ndMode)"))
		then
			BonesToLoad1=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char1_Gen.." "..Choreo..".redir"
			BonesToLoad2=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char2_Gen.." "..Choreo..".redir"
		else
			BonesToLoad1=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
			BonesToLoad2=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
		end
		
		--MODEL LOAD

		if GAMESTATE:IsPlayerEnabled(player) then
		t[#t+1] = Def.ActorFrame {
			Def.Model{
				Meshes=GAMESTATE:GetCharacter(player):GetModelPath(),
				Materials=GAMESTATE:GetCharacter(player):GetModelPath(),
				Bones=GAMESTATE:GetCharacter(player):GetRestAnimationPath(),
				OnCommand=function(self)
				self:cullmode("CullMode_None")
				if BothPlayersEnabled() then self:x( (player == PLAYER_1 and 7) or -7 )
				:zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
				:sleep(rTime)
				:queuecommand("Hide")
				else
				self:x(0):zoom(CharacterSize1):sleep(rTime):queuecommand("Hide")
				end
				end,
				HideCommand=cmd(visible,false);
			};
			Def.Model{
				Meshes=GAMESTATE:GetCharacter(player):GetModelPath(),
				Materials=GAMESTATE:GetCharacter(player):GetModelPath(),
				Bones=(player == PLAYER_1 and BonesToLoad1) or BonesToLoad2,

				InitCommand=cmd(visible,false);
				OnCommand=function(self)
				self:cullmode("CullMode_None")
				if BothPlayersEnabled() then self:x( (player == PLAYER_1 and 7) or -7 )
				:zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
				:sleep(rTime)
				:queuecommand("Show")
				else
				self:x(0):zoom(CharacterSize1):visible(false):sleep(rTime):queuecommand("Show")
				end
				end,
				ShowCommand=cmd(visible,true);
				UpdateRateCommand=function(self)
				end,
			};
		};
		end
	end
end

end;

-------------- DANCE STAGES
-------CAMERA



CamRan=1
local CameraRandomList = {}
for i = 1, 12 do
CameraRandomList[i] = i
end
for i = 1, 12 do
local CamRandNumber = math.random(1,12)
local TempRand = CameraRandomList[i]
CameraRandomList[i] = CameraRandomList[CamRandNumber]
CameraRandomList[CamRandNumber] = TempRand
end


t[#t+1] = Def.Quad{
	
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+198;sleep,rTime+3;queuecommand,"Start");

	StartCommand=function(self)
		self:visible(false)
		:queuemessage("Camera"..CameraRandomList[6]):sleep(7.8):queuecommand("TrackTime");
	end;

	TrackTimeCommand=function(self)

	DEDICHAR:SetTimingData()

	self:sleep(1/60)
	if AnyoneHasChar() then
			self:queuemessage("Camera"..CameraRandomList[CamRan]):sleep(7.8)
			CurrentStageCamera = CurrentStageCamera
			CamRan=CamRan+1
			if CamRan==12 then
				CamRan = 1
			end
		self:queuecommand("TrackTime")
	end
	end,
};


-------JACKET WRITER


-- local Animation = "/DanceStages/"..DanceStage.."/Animacion.ini"
-- local file = RageFileUtil.CreateRageFile()

-- if GAMESTATE:GetCurrentSong():HasJacket() then
--     if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" or string.match(DanceStage, "REPLICANT") then
--         file:Open(Animation,2)
--         file:Write("[AnimatedTexture]\nFrame0000=../.."..GAMESTATE:GetCurrentSong():GetJacketPath().."\nDelay0000=1")
--         file:Close()
--         file:destroy()
--     end
-- elseif GAMESTATE:GetCurrentSong():HasBackground() then
--     if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" or string.match(DanceStage, "REPLICANT") then
--         file:Open(Animation,2)
--         file:Write("[AnimatedTexture]\nFrame0000=../.."..GAMESTATE:GetCurrentSong():GetBackgroundPath().."\nDelay0000=1")
--         file:Close()
--         file:destroy()
--     end
-- end;


-------DANCESTAGE CONFIGURATOR


function CheckStageConfigurationNumber(def,conf)
	local result = def or 0
	local filetoload = StagesFolder..DanceStage.."/MapCfg.cfg";
	local content = Config.Load(conf,filetoload)
	if content then result = tonumber(content) end
	return result
end

-------DANCESTAGE LOADER



if DanceStage == "DANCING RAYS (X)" or DanceStage == "CLUB (X2)" or DanceStage == "BOOM LIGHT (X2)" or DanceStage == "BOOM BOOM BOOM (X)" then

	--LIGHT
	t[#t+1] = Def.ActorFrame{
		Def.Model {
			Meshes=StagesFolder..DanceStage.."/Map_B.txt";
			Materials=StagesFolder..DanceStage.."/Map_B.txt";
			Bones=StagesFolder..DanceStage.."/Map_B.txt";
			OnCommand=function(self)
				self:cullmode(2):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
				self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
			end,
		};
	};
	
	--AMBIENT
	t[#t+1] = Def.ActorFrame{
		Def.Model {
			Meshes=StagesFolder..DanceStage.."/Map_A.txt";
			Materials=StagesFolder..DanceStage.."/Map_A.txt";
			Bones=StagesFolder..DanceStage.."/Map_A.txt";
			OnCommand=function(self)
				self:cullmode(1):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
				self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
			end,
		};
	};

else

	t[#t+1] = Def.ActorFrame{
		Def.Model {
			Meshes=StagesFolder..DanceStage.."/Map.txt";
			Materials=StagesFolder..DanceStage.."/Map.txt";
			Bones=StagesFolder..DanceStage.."/Map.txt";
			OnCommand=function(self)
				self:cullmode(2):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
				self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
			end,
		};
	};

end


	t[#t+1] = LoadActor(StagesFolder..DanceStage.."/Cameras.lua" )

background[#background+1] = t;
end;

return background;
