function curved_wheel_transform(self,offsetFromCenter,_fake1,_fake2)
	local numItems = THEME:GetMetric("MusicWheel","NumWheelItems")
	local curve3D = THEME:GetMetric("MusicWheel", "CirclePercent")*4*math.pi
	local fRotX = scale(offsetFromCenter, -numItems/2,numItems/2, -curve3D/2,curve3D/2)
	local radius = THEME:GetMetric("MusicWheel","Wheel3DRadius")
	local curveX = THEME:GetMetric("MusicWheel","ItemCurveX")
	local spacingY = THEME:GetMetric("MusicWheel","ItemSpacingY")
	self:x( (1-math.cos(offsetFromCenter/math.pi))*curveX );
	self:y( (offsetFromCenter*scale(math.abs(offsetFromCenter), 0,numItems/2, spacingY,spacingY*math.sin(0.675))) );
	self:z( -15*math.abs(offsetFromCenter*2.5) );
	self:rotationx((offsetFromCenter*20) * math.sin(180/math.pi));
	-- if math.abs(offsetFromCenter) == 0 then
	-- 	self:diffusealpha(0);
	-- end;
end;

function GetSongColor(songtit)
	--Arcade Colors
	local ACSong = {
		--Yellow
		["Butterfly (2008 X-edit)"] = "#FAFA00",
		["Boys (2008 X-edit)"] = "#FAFA00",
		["DUB-I-DUB (2008 X-edit)"] = "#FAFA00",
		["GET UP'N MOVE (2008 X-edit)"] = "#FAFA00",
		["PORIRIZUMU"] = "#FAFA00",
		["ポリリズム"] = "#FAFA00",
		["Koko Soko"] = "#FAFA00",
		["Suki Melo"] = "#FAFA00",
		["スキ☆メロ"] = "#FAFA00",
		["SEKAI HA ODORU"] = "#FAFA00",
		["世界は踊る"] = "#FAFA00",
		["Trickster"] = "#FAFA00",
		["Tabibito"] = "#FAFA00",
		["旅人"] = "#FAFA00",
		["30 Lives (Up-Up-Down-Dance Mix)"] = "#FAFA00",
		["Always on My Mind"] = "#FAFA00",
		["Big Girls Don't Cry"] = "#FAFA00",
		["Feel"] = "#FAFA00",
		["Ghetto Blasta Deluxe"] = "#FAFA00",
		["Happy"] = "#FAFA00",
		["Here It Goes Again"] = "#FAFA00",
		["Make Me Cry"] = "#FAFA00",
		["Put 'Em Up"] = "#FAFA00",
		["Reach Up"] = "#FAFA00",
		["Swingin'"] = "#FAFA00",
		["Till the lonely's gone"] = "#FAFA00",
		["U Can't Touch This"] = "#FAFA00",
		["We Come Alive"] = "#FAFA00",
		["We've Got To Make It Tonight"] = "#FAFA00",
		--Cyan
		["A Geisha's Dream"] = "#00FFFF",
		["Dance Celebration"] = "#00FFFF",
		["Dance Celebration (System 7 Remix)"] = "#00FFFF",
		["Dance Floor"] = "#00FFFF",
		["Dream Machine"] = "#00FFFF",
		["Flight of the Phoenix"] = "#00FFFF",
		["Flourish"] = "#00FFFF",
		["Inspiration"] = "#00FFFF",
		["Lift You Up"] = "#00FFFF",
		["Party Lights"] = "#00FFFF",
		["Playa (Original Mix)"] = "#00FFFF",
		["Slip Out"] = "#00FFFF",
		["Slip Out (bounce in beat mix)"] = "#00FFFF",
		["Taj He Spitz"] = "#00FFFF",
		["Taj He Spitz (Tommie Sunshine's Brooklyn Fire Re-Touch)"] = "#00FFFF",
		["Take A Chance"] = "#00FFFF",
		["Ticket to Bombay"] = "#00FFFF",
		["Tracers (4Beat Remix)"] = "#00FFFF",
		["Waiting 4 u"] = "#00FFFF",
		["dazzle"] = "#00FFFF",
		["Malacca"] = "#00FFFF",
		["puzzle"] = "#00FFFF",
		["SAGA"] = "#00FFFF",
		["S・A・G・A"] = "#00FFFF",
		["The flower in your smile"] = "#00FFFF",
		["TimeHollow"] = "#00FFFF",
		["Chance and Dice"] = "#00FFFF",
		["ZERO"] = "#00FFFF",
		["零 - ZERO -"] = "#00FFFF",
		["Blue Rain"] = "#00FFFF",
		["Rin To Shite Saku Hana No Gotoku"] = "#00FFFF",
		["凛として咲く花の如く"] = "#00FFFF",
		["Ubertreffen"] = "#00FFFF",
		["Übertreffen"] = "#00FFFF",
		["will"] = "#00FFFF",
		["Beautiful Inside (Cube Hard Mix)"] = "#00FFFF",
		["SUPER SAMURAI"] = "#00FFFF",
		["INTO YOUR HEART (Ruffage remix)"] = "#00FFFF",
		["LOVING YOU (Epidemik remix)"] = "#00FFFF",
		--Magenta
		["Xmix1 (Midnight Dawn)"] = "#FF00FF",
		["Xmix2 (Beats 'n Bangs)"] = "#FF00FF",
		["Xmix3 (Stomp Dem Groove)"] = "#FF00FF",
		["Xmix4 (Linear Momentum)"] = "#FF00FF",
		["Xmix5 (Overcrush)"] = "#FF00FF",
		--Cyan
		["On The Break"] = "#00FFFF",
		["SABER WING"] = "#00FFFF",
		["SABER WING (AKIRA ISHIHARA Headshot mix)"] = "#00FFFF",
		["Horatio"] = "#00FFFF",
		["on the bounce"] = "#00FFFF",
		["Trigger"] = "#00FFFF",
	}

	--Console US Colors
	local CSUSSong = {
		--Yellow
		["30 Lives (Up-Up-Down-Dance Mix)"] = "#FAFA00",
		["Always on My Mind"] = "#FAFA00",
		["Big Girls Don't Cry"] = "#FAFA00",
		["Boy (DJ Irene Rockstar Mix)"] = "#FAFA00",
		["Boys (2008 X-edit)"] = "#FAFA00",
		["Butterfly (2008 X-edit)"] = "#FAFA00",
		["DUB-I-DUB (2008 X-edit)"] = "#FAFA00",
		["Feel"] = "#FAFA00",
		["GET UP'N MOVE (2008 X-edit)"] = "#FAFA00",
		["Ghetto Blasta Deluxe"] = "#FAFA00",
		["Happy"] = "#FAFA00",
		["Here It Goes Again"] = "#FAFA00",
		["Here We Go"] = "#FAFA00",
		["HERO (2008 X-edit)"] = "#FAFA00",
		["Make Me Cry"] = "#FAFA00",
		["Open"] = "#FAFA00",
		["Put 'Em Up"] = "#FAFA00",
		["Reach Up"] = "#FAFA00",
		["Sound Of Freedom"] = "#FAFA00",
		["Swingin'"] = "#FAFA00",
		["Synthesized"] = "#FAFA00",
		["Till the lonely's gone"] = "#FAFA00",
		["U Can't Touch This"] = "#FAFA00",
		["We Come Alive"] = "#FAFA00",
		["We've Got To Make It Tonight"] = "#FAFA00",
		["Wine Red (Tommie Sunshine's Brooklyn Fire Retouch)"] = "#FAFA00",
		--Magenta
		["Xmix1 (Midnight Dawn)"] = "#FF00FF",
		["Xmix2 (Beats 'n Bangs)"] = "#FF00FF",
		["Xmix3 (Stomp Dem Groove)"] = "#FF00FF",
		["Xmix4 (Linear Momentum)"] = "#FF00FF",
		["Xmix5 (Overcrush)"] = "#FF00FF",
	}

	--Console Japan Colors
	local CSJPSong = {
		--Yellow
		["30 Lives (Up-Up-Down-Dance Mix)"] = "#FAFA00",
		["Always on My Mind"] = "#FAFA00",
		["Big Girls Don't Cry"] = "#FAFA00",
		["Boy (DJ Irene Rockstar Mix)"] = "#FAFA00",
		["Boys (2008 X-edit)"] = "#FAFA00",
		["Butterfly (2008 X-edit)"] = "#FAFA00",
		["DUB-I-DUB (2008 X-edit)"] = "#FAFA00",
		["Feel"] = "#FAFA00",
		["GET UP'N MOVE (2008 X-edit)"] = "#FAFA00",
		["Ghetto Blasta Deluxe"] = "#FAFA00",
		["Happy"] = "#FAFA00",
		["Here It Goes Again"] = "#FAFA00",
		["Koko Soko"] = "#FAFA00",
		["Make Me Cry"] = "#FAFA00",
		["PORIRIZUMU"] = "#FAFA00",
		["ポリリズム"] = "#FAFA00",
		["Reach Up"] = "#FAFA00",
		["SEKAI HA ODORU"] = "#FAFA00",
		["世界は踊る"] = "#FAFA00",
		["Suki Melo"] = "#FAFA00",
		["スキ☆メロ"] = "#FAFA00",
		["Swingin'"] = "#FAFA00",
		["Synthesized"] = "#FAFA00",
		["Tabibito"] = "#FAFA00",
		["旅人"] = "#FAFA00",
		["Till the lonely's gone"] = "#FAFA00",
		["Trickster"] = "#FAFA00",
		["U Can't Touch This"] = "#FAFA00",
		["We Come Alive"] = "#FAFA00",
		["We've Got To Make It Tonight"] = "#FAFA00",
		["Wine Red (Tommie Sunshine's Brooklyn Fire Retouch)"] = "#FAFA00",
		--Cyan
		["A Geisha's Dream"] = "#00FFFF",
		["Blue Rain"] = "#00FFFF",
		["Chance and Dice"] = "#00FFFF",
		["Dance Celebration"] = "#00FFFF",
		["Dance Celebration (System 7 Remix)"] = "#00FFFF",
		["Dance Floor"] = "#00FFFF",
		["Dream Machine"] = "#00FFFF",
		["Flight of the Phoenix"] = "#00FFFF",
		["Flourish"] = "#00FFFF",
		["in love wit you"] = "#00FFFF",
		["Inspiration"] = "#00FFFF",
		["Lift You Up"] = "#00FFFF",
		["Party Lights"] = "#00FFFF",
		["Playa (Original Mix)"] = "#00FFFF",
		["real-high-SPEED"] = "#00FFFF",
		["Rin To Shite Saku Hana No Gotoku"] = "#00FFFF",
		["凛として咲く花の如く"] = "#00FFFF",
		["SABER WING"] = "#00FFFF",
		["Slip Out"] = "#00FFFF",
		["Slip Out (bounce in beat mix)"] = "#00FFFF",
		["Taj He Spitz"] = "#00FFFF",
		["Taj He Spitz (Tommie Sunshine's Brooklyn Fire Re-Touch)"] = "#00FFFF",
		["Take A Chance"] = "#00FFFF",
		["Ticket To Bombay"] = "#00FFFF",
		["Tracers (4Beat Remix)"] = "#00FFFF",
		["Ubertreffen"] = "#00FFFF",
		["Übertreffen"] = "#00FFFF",
		["Waiting 4 u"] = "#00FFFF",
		["ZERO"] = "#00FFFF",
		["零 - ZERO -"] = "#00FFFF",
		--Magenta
		["Xmix1 (Midnight Dawn)"] = "#FF00FF",
		["Xmix2 (Beats 'n Bangs)"] = "#FF00FF",
		["Xmix3 (Stomp Dem Groove)"] = "#FF00FF",
		["Xmix4 (Linear Momentum)"] = "#FF00FF",
		["Xmix5 (Overcrush)"] = "#FF00FF",
	}

	local BossSong = {
		["On The Break"] = "#FF0000",
		["SABER WING"] = "#FF0000",
		["SABER WING (AKIRA ISHIHARA Headshot mix)"] = "#FF0000",
		["Horatio"] = "#FF0000",
		["on the bounce"] = "#FF0000",
		["Trigger"] = "#FF0000",
		["PARANOiA(X-Special)"] = "#FF0000",
		["TRIP MACHINE(X-Special)"] = "#FF0000",
		["PARANOiA MAX~DIRTY MIX~(X-Special)"] = "#FF0000",
		["PARANOiA MAX~DIRTY MIX~in roulette(X-Special)"] = "#FF0000",
		["SP-TRIP MACHINE~JUNGLE MIX~(X-Special)"] = "#FF0000",
		["AFRONOVA(X-Special)"] = "#FF0000",
		["PARANOiA Rebirth(X-Special)"] = "#FF0000",
		["PARANOiA EVOLUTION(X-Special)"] = "#FF0000",
		["TRIP MACHINE CLIMAX(X-Special)"] = "#FF0000",
		["Healing Vision(X-Special)"] = "#FF0000",
		["PARANOiA ETERNAL(X-Special)"] = "#FF0000",
		["Dance Dance Revolution(X-Special)"] = "#FF0000",
		["The legend of MAX(X-Special)"] = "#FF0000",
		["CANDY(X-Special)"] = "#FF0000",
		["MAX 300(X-Special)"] = "#FF0000",
		["KAKUMEI(X-Special)"] = "#FF0000",
		["MAXX UNLIMITED(X-Special)"] = "#FF0000",
	}

	--Yellow #FAFA00
	--Magenta #FF00FF
	--Cyan (Temp) #00FFFF
	--Red (Temp) FF0000

	--Fallback
	local SongColor = "#000000";
	local BossColor = "#FFFFFF";
	local lang = "us";
	if THEME:GetCurLanguage() == "ja" then
		lang = "jp";
	end;

	if GAMESTATE:GetCoinMode() == "CoinMode_Home" then
		if lang == "jp" then
			SongColor = CSJPSong[songtit] or "#FFFFFF"
		else
			SongColor = CSUSSong[songtit] or "#FFFFFF"
		end;
	else
		SongColor = ACSong[songtit] or "#FFFFFF"
	end

	--Check boss song on final/extra stages
	if PREFSMAN:GetPreference("SongsPerPlay") == GAMESTATE:GetCurrentStageIndex()+1 then
		--Final stage
		if songtit == "On The Break" then
			BossColor = BossSong[songtit] or "#FFFFFF"
		end
		if BossColor ~= "#FFFFFF" then
			SongColor = BossColor;
		end
	else
	end	

	return SongColor;
end;