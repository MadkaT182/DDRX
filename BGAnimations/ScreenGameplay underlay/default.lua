------- DANCESTAGE SELECTION -------

local DanceStagesDir = GetAllDanceStagesNames()
table.remove(DanceStagesDir,IndexKey(DanceStagesDir,"DEFAULT"))
table.remove(DanceStagesDir,IndexKey(DanceStagesDir,"RANDOM"))
local DanceStageSelected = GetUserPref("SelectDanceStage")

if not GAMESTATE:IsDemonstration() then
	if DanceStageSelected == "DEFAULT" then
		DanceStage = DanceStageSong()
	elseif DanceStageSelected == "RANDOM" then
		DanceStage = DanceStagesDir[math.random(#DanceStagesDir)]
	else
		DanceStage = GetUserPref("SelectDanceStage")
	end;
else
	DanceStage = DanceStageSong()
end

------- VIDEO/BACKGROUND VS STAGE  -------

local SBG = GAMESTATE:GetSongOptionsObject("ModsLevel_Preferred")
if (not HasVideo() and PotentialModSong()) then
  --SBG:StaticBackground(false)
  PREFSMAN:SetPreference('SongBackgrounds', true)
elseif (HasVideo() and not VideoStage() and VoverS()) then
  --SBG:StaticBackground(false)
  PREFSMAN:SetPreference('SongBackgrounds', true)
elseif (HasVideo() and not VideoStage() and not VoverS()) then
  --SBG:StaticBackground(true)
  PREFSMAN:SetPreference('SongBackgrounds', false)
else
  --SBG:StaticBackground(true)
  PREFSMAN:SetPreference('SongBackgrounds', false)
end
SBG:RandomBGOnly(false)


------- RANDOM CHARACTER -------

local CharaRandom = GetAllCharacterNames()
table.remove(CharaRandom,IndexKey(CharaRandom,"Random"))
table.remove(CharaRandom,IndexKey(CharaRandom,"None"))

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
    if GetUserPref("SelectCharacter"..pn) == "Random" then
        WritePrefToFile("CharaRandom"..pn,CharaRandom[math.random(#CharaRandom)]);
    end
end

local t = Def.ActorFrame{};
local style = GAMESTATE:GetCurrentStyle():GetStyleType()
local st = GAMESTATE:GetCurrentStyle():GetStepsType();
local Center1Player = PREFSMAN:GetPreference('Center1Player')

local x_table = {
  PlayerNumber_P1 = {SCREEN_CENTER_X+191},
  PlayerNumber_P2 = {SCREEN_CENTER_X-191}
}

--toasty loader
for _, pn in ipairs(GAMESTATE:GetEnabledPlayers()) do
  if st ~= 'StepsType_Dance_Double' and ThemePrefs.Get("FlashyCombo") == true then
	  --use ipairs here because i think it expects P1 is loaded before P2
	  if FILEMAN:DoesFileExist("/Characters/"..WhichRead(pn).."/Cut-In") then
		   	if (not HasVideo() and not GAMESTATE:GetCurrentSong():HasBGChanges()) or (HasVideo() and VideoStage()) or (HasVideo() and not VideoStage() and GetUserPref("CutInOverVideo") == "ON") then
			      t[#t+1] = Def.ActorFrame{
			        LoadActor("Cutin.lua", pn)..{
			          OnCommand=function(s) s:setsize(450,SCREEN_HEIGHT); s:zoom(.5) end,
			          InitCommand=function(self)
			            self:CenterY()
			            if style == "StyleType_TwoPlayersTwoSides" or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
			              self:x(SCREEN_CENTER_X);
			            else
			              if Center1Player then
			                self:x(pn==PLAYER_1 and _screen.cx-600 or _screen.cx+600)
			              else
			                self:x(x_table[pn][1]);
			              end
			            end;
			          end;
			        };
			      };
			end;
		end;
	end;
end;

if ThemePrefs.Get("StormBG") > 0 then
	if (ThemePrefs.Get("StormBG") == 2 and IsHome()) or ThemePrefs.Get("StormBG") == 1 then
		t[#t+1] = Def.ActorFrame{
			LoadActor("chbg");
		};
	end
end

return t;