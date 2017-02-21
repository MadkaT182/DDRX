function HasMines()
	local HasMines = false;
	for _,pn in ipairs( GAMESTATE:GetHumanPlayers() ) do
	local steps = GAMESTATE:GetCurrentSteps( pn );
	local rv = steps:GetRadarValues( pn );
	if rv:GetValue( "RadarCategory_Mines" ) ~= 0 then
	HasMines = true;
	break;
	end
	end

	if HasMines then
		return "ScreenShock";
	else
		return "ScreenStageInformation";
	end
end;

Branch = {
	Init = function() return "ScreenInit" end,
	AfterInit = function()
		if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
			return Branch.TitleMenu()
		else
			return "ScreenLogo"
		end
	end,
	NoiseTrigger = function()
		local hour = Hour()
		return hour > 3 and hour < 6 and "ScreenNoise" or "ScreenHighScores"
	end,
	TitleMenu = function()
		-- home mode is the most assumed use of sm-ssc.
		if GAMESTATE:GetCoinMode() == "CoinMode_Home" then
			return "ScreenTitleMenu"
		end
		-- arcade junk:
		if GAMESTATE:GetCoinsNeededToJoin() > GAMESTATE:GetCoins() then
			-- if no credits are inserted, don't show the Join screen. SM4 has
			-- this as the initial screen, but that means we'd be stuck in a
			-- loop with ScreenInit. No good.
			return "ScreenTitleJoin"
		else
			return "ScreenTitleJoin"
		end
	end,
	AfterTitleMenu = function()
		if PREFSMAN:GetPreference("ShowCaution") then
			return "ScreenCaution"
		else
			return Branch.StartGame()
		end
	end,
	StartGame = function()
		-- Check to see if there are 0 songs installed. Also make sure to check
		-- that the additional song count is also 0, because there is
		-- a possibility someone will use their existing StepMania simfile
		-- collection with sm-ssc via AdditionalFolders/AdditionalSongFolders.
		if SONGMAN:GetNumSongs() == 0 and SONGMAN:GetNumAdditionalSongs() == 0 then
			return "ScreenHowToInstallSongs"
		end
		if PROFILEMAN:GetNumLocalProfiles() >= 2 then
			return "ScreenSelectProfile"
		else
			if IsNetConnected() then
				return "ScreenSelectStyle"
			else
				if THEME:GetMetric("Common","AutoSetStyle") == false then
					return "ScreenSelectStyle"
				else
					return "ScreenProfileLoad"
				end
			end
		end
	end,
	OptionsEdit = function()
		-- Similar to above, don't let anyone in here with 0 songs.
		if SONGMAN:GetNumSongs() == 0 and SONGMAN:GetNumAdditionalSongs() == 0 then
			return "ScreenHowToInstallSongs"
		end
		return "ScreenOptionsEdit"
	end,
	AfterSelectStyle = function()
		if IsNetConnected() then
			ReportStyle()
			GAMESTATE:ApplyGameCommand("playmode,regular")
		end
		if IsNetSMOnline() then
			return SMOnlineScreen()
		end
		if IsNetConnected() then
			return "ScreenNetRoom"
		end
		return "ScreenProfileLoad"

		--return CHARMAN:GetAllCharacters() ~= nil and "ScreenSelectCharacter" or "ScreenGameInformation"
	end,
	AfterSelectProfile = function()
		if ( THEME:GetMetric("Common","AutoSetStyle") == true ) then
			-- use SelectStyle in online...
			return IsNetConnected() and "ScreenSelectStyle" or "ScreenSelectPlayMode"
		else
			return "ScreenSelectStyle"
		end
	end,
	AfterProfileLoad = function()
		return "ScreenSelectPlayMode"
	end,
	AfterProfileSave = function()
		-- Might be a little too broken? -- Midiman
		if GAMESTATE:IsEventMode() then
			return SelectMusicOrCourse()
		elseif STATSMAN:GetCurStageStats():AllFailed() then
			return DDRCredits()
		elseif GAMESTATE:GetSmallestNumStagesLeftForAnyHumanPlayer() == 0 then
			if not GAMESTATE:IsCourseMode() then
				return "ScreenEvaluationSummary"
			else
				return DDRCredits()
			end
		else
			return SelectMusicOrCourse()
		end
	end,
	GetGameInformationScreen = function()
		bTrue = PREFSMAN:GetPreference("ShowInstructions")
		return (bTrue and GoToMusic() or "ScreenGameInformation")
	end,
	AfterSMOLogin = SMOnlineScreen(),
	BackOutOfPlayerOptions = function()
		return SelectMusicOrCourse()
	end,
	BackOutOfStageInformation = function()
		return SelectMusicOrCourse()
	end,
	AfterSelectMusic = function()
		if SCREENMAN:GetTopScreen():GetGoToOptions() then
			return SelectFirstOptionsScreen()
		else
			--return "ScreenStageInformation"
			return HasMines()
		end
	end,
	PlayerOptions = function()
		local pm = GAMESTATE:GetPlayMode()
		local restricted = { PlayMode_Oni= true, PlayMode_Rave= true,
			--"PlayMode_Battle" -- ??
		}
		local optionsScreen = "ScreenPlayerOptions"
		if restricted[pm] then
			optionsScreen = "ScreenPlayerOptionsRestricted"
		end
		if SCREENMAN:GetTopScreen():GetGoToOptions() then
			return optionsScreen
		else
			--return "ScreenStageInformation"
			return HasMines()
		end
	end,
	SongOptions = function()
		if SCREENMAN:GetTopScreen():GetGoToOptions() then
			return "ScreenSongOptions"
		else
			--return "ScreenStageInformation"
			return HasMines()
		end
	end,
	GameplayScreen = function()
		return IsRoutine() and "ScreenGameplayShared" or "ScreenGameplay"
	end,
	EvaluationScreen= function()
		if IsNetSMOnline() then
			return "ScreenNetEvaluation"
		else
			-- todo: account for courses etc?
			return "ScreenEvaluationNormal"
		end
	end,
	AfterGameplay = function()
		-- pick an evaluation screen based on settings.
		if THEME:GetMetric("ScreenHeartEntry", "HeartEntryEnabled") then
			local go_to_heart= false
			for i, pn in ipairs(GAMESTATE:GetEnabledPlayers()) do
				local profile= PROFILEMAN:GetProfile(pn)
				if profile and profile:GetIgnoreStepCountCalories() then
					go_to_heart= true
				end
			end
			if go_to_heart then
				return "ScreenHeartEntry"
			end
			return Branch.EvaluationScreen()
		else
			return Branch.EvaluationScreen()
		end
	end,
	AfterHeartEntry= function()
		return Branch.EvaluationScreen()
	end,
	AfterEvaluation = function()
		if GAMESTATE:IsCourseMode() then
			return "ScreenProfileSave"
		else
			local maxStages = PREFSMAN:GetPreference("SongsPerPlay")
			local stagesLeft = GAMESTATE:GetSmallestNumStagesLeftForAnyHumanPlayer()
			local allFailed = STATSMAN:GetCurStageStats():AllFailed()
			local song = GAMESTATE:GetCurrentSong()

			if GAMESTATE:IsEventMode() or stagesLeft >= 1 then
				return "ScreenProfileSave"
			elseif song:IsLong() and maxStages <= 2 and stagesLeft < 1 and allFailed then
				return "ScreenProfileSaveSummary"
			elseif song:IsMarathon() and maxStages <= 3 and stagesLeft < 1 and allFailed then
				return "ScreenProfileSaveSummary"
			elseif maxStages >= 2 and stagesLeft < 1 and allFailed then
				return "ScreenProfileSaveSummary"
			elseif allFailed then
				return "ScreenProfileSaveSummary"
			else
				return "ScreenProfileSave"
			end
		end
	end,
	AfterSummary = function()
		return "ScreenProfileSaveSummary"
	end,
	Network = function()
		return IsNetConnected() and "ScreenTitleMenu" or "ScreenTitleMenu"
	end,
 	AfterSaveSummary = function()
		if PROFILEMAN:GetNumLocalProfiles() >= 1 then
			--Exist profile
			return "ScreenGameOver"
		else
			--Arcade normal
			--return DDRCredits()
			return GameOverOrContinue()
		end
--		[[ Enable when Finished ]]
-- 		return GAMESTATE:AnyPlayerHasRankingFeats() and "ScreenNameEntryTraditional" or "ScreenGameOver"
	end,
		AfterDataSaveSummary = function()
		if GAMESTATE:AnyPlayerHasRankingFeats() then
			return "ScreenDataSaveSummaryEnd"
		else
			return "ScreenDataSaveSummaryEnd"
		end
	end,
	AfterContinue = function()
		if GAMESTATE:GetNumPlayersEnabled() == 0 then
			return "ScreenGameOver"
		end

		if STATSMAN:GetStagesPlayed() == 0 then
			return "ScreenSelectStyle"
		end

		return "ScreenProfileLoad"
	end
}