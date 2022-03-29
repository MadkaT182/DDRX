function repeats(st,c)
    local _,n = st:gsub(c,"")
    return n
end

local titles = {
	'"30 Lives (Up-Up-Down-Dance Mix)"',
	"ALWAYS ON MY MIND",
	"Big Girls Don't Cry",
	"Boy (DJ Irene Rockstar Mix)",
	"BOYS",
	"BUTTERFLY",
	"DUB. I. DUB",
	'"Feel"',
	"GET UP'N MOVE / S & K",
	'"Ghetto Blasta Deluxe"',
	"Happy",
	"Here It Goes Again",
	'"Make Me Cry"',
	'"Reach Up"',
	"SEKAI WA ODORU/BREAKERZ",
	"Suki Melo /Yuko Ogura",
	"SWINGIN'",
	"Tabibito /Satomi Takasugi",
	"「TRICKSTER」 /Nana Mizuki",
	'"Till The Lonely\'s Gone"',
	"U CAN'T TOUCH THIS",
	'"We\'ve Got To Make It Tonight"',
	'"We Come Alive"',
	'"Wine Red (Tommie Sunshine\'s Brooklyn Fire Retouch)"',
};

local desc = {
	"Performed by The Motion Sick\nWritten by Michael Epstein\nProduced by Anthony J. Resta with Rich Curtis and Matthew Girard\nMusic Video directed by Neil Forman\nOriginal Mix Produced by Jordan Tishler\nExecutive Producers: Rob Lehmann and Barry Marshall\nThe Motion Sick is: Michael Epstein, Matthew Girard,\nTravis Richter, Patrick Mussari\n2008 Naked Ear Records",
	"Words & Music by Johnny Christopher, Wayne Thompson and Mark James\n© 1972 SCREEN GEMS-EMI MUSIC INC. and BUDGE SONGS INC.\nPermission granted by EMI Music Publishing Japan Ltd.\nPerformed by Pet Shop Boys\nCourtesy of EMI Records Ltd.\nUnder license from EMI Film & Television Music\nAll Rights Reserved. Used by Permision.",
	"written by Tobias Gad / Stacy Ferguson\npublished by Sony/ATV Music Publishing (Germany) Gmbh / Cyclus Music Gmbh\n© 2006 by BIG GIRLS DON'T CRY PUBLISHING\nThe rights for Japan assigned to FUJIPACIFIC MUSIC INC.)",
	"Written by Theodore Joseph Ottaviano\n© 1985 I Squared Music\nAll Rights Reserved. Used by Permision.\nRights for Japan administered by WARNER/CHAPELL MUSIC,\nJAPAN KK. c/o NICHION, INC.\nPerformed by Book of Love\nCourtesy of Sire Records\nBy arrangement with Warner Music Group Video Game Licensing\n(P) 2005 Sire Records",
	"Words & Music by Rawi Asraoui and Robert Uhlmann\n© EMI MUSIC PUBLISHING SCANDINAVIA AB\nand EMI CASADIDA MUSIC PUBLISHING AS\nPermission granted by EMI Music Publishing Japan Ltd.\nProduced under TG Production\nPerformed by Smile.dk\nCourtesy of EMI Records\nUnder License from EMI Film & Television Music\nAll rights reserved. Used by permission.",
	"Words & Music by Rawi Asraoui and Robert Uhlmann\n© EMI MUSIC PUBLISHING SCANDINAVIA AB\nand EMI CASADIDA MUSIC PUBLISHING AS\nPermission granted by EMI Music Publishing Japan Ltd.\nProduced under TG Production\nPerformed by Smile.dk\nCourtesy of EMI Records\nUnder License from EMI Film & Television Music\nAll rights reserved. Used by permission.",
	"Words & Music by Susanne Georgi, Pernille Georgi and Dean Neilsen\n© EMI CASADIDA MUSIC PUBLISHING A/S\nPermission granted by EMI Music Publishing Japan Ltd.\nPerformed by Me & My\nCourtesy of EMI Records\nUnder License from EMI Film & Television Music\nAll rights reserved. Used by permission.",
	"Performed by: Neuropa\nWritten by:  A. Martinez / J. Last\nFrom the album: The Blitz\nCourtesy of A Different Drum\nwww.adifferentdrum.com.",
	"Written by Brian Cornell and Kirk Monteux\n(c) 1998 Black Forest Music Publishing\nAll rights reserved. Used by permission.\nRights for Japan administered by NICHION INC.\nProduced by Kirk Monteux and Brian Cornell\nRecorded and Mixed at SoundKitchen Studio, Frankfurt/Germany\nP 1998 Black Forest Music",
	"Written and produced by Bill Hamel and Barry Jamieson. www.billhamel.com",
	"Written by Linda Perry, Casey Spooner, and Nicholas Vernhes\nMusic by Warren Fischer\n© 2005 by MUSIC OF WINDSWEPT, FS STUDIOS LLC\nand CONTINENTAL SHADE MUSIC\nThe rights for Japan assigned to FUJIPACIFIC MUSIC INC.\nPerformed by Fischerspooner\nCourtesy of Capitol Records, Inc.\nUnder license from EMI Film & Television Music\nAll rights reserved. Used by permission.",
	"written by Damian Kulash, Jr\nOK Go Publishing (BMI)\nPerformed by OK Go\nCourtesy of Capitol Records, Inc.\nUnder License from EMI Film & Television Music",
	"Music & Lyrics by Albert Martinez\nProduced by Albert Martinez 2008",
	"Written by Geoff Pinckney (PRS)\nPublished by Black Toast Music (BMI)\nPerformed by Alien Six\nCourtesy of Black Toast Music",
	"Written by AKIHIDE\nLicensed by ZAIN RECORDS",
	"Lyrics by Ellie Ohmiya\nWritten by Harumi Fuki\nLicensed by Pytagoras Promotion",
	"Words & Music By Dallas Austin, James Harris III,\nTerry Lewis and James Wright\n© FLYTE TYME TUNES INC and CYPTRON MUSIC\nPermission granted by EMI Music Publishing Japan Ltd.",
	"Lyrics by Yuji Sakamoto\nWritten by Satoshi Takebe\nLicensed by rhythm zone / AVEX ENTERTAINMENT INC.",
	"Lyrics by: Nana Mizuki\nWritten by: Noriyasu Agematsu (Elements Garden)\nLicensed by KING RECORDS",
	"Written by Noel Cohen, Diana Page, Janice Fitzgerald\nPerformed by Z-licious",
	"Written by Stanley Kirk Burrell / Rick James / Alonzo H Miller\nPublished by EverGreen Copyright Acquisitions LLC\n© STONE COTY MUSIC, STONE DIAMOND MUSIC CORP,\nand JOBETE MUSIC CO. INC.\nPermission granted by EMI Music Publishing Japan Ltd.\nPerformed by MC Hammer\nCourtesy of Capitol Records, Inc.\nUnder License from EMI Film & Television Music\nAll rights reserved. Used by permission.",
	'performed by Babamars\nWritten by Walter De Castro, Berenger Masuda, Alex Tran Van Tuat\nPublished by Warm Music / Big Green Bamboo Publishing\n© Warm Music (p) 2008 Warm Music\nLicensed courtesy of Warm Music from the album "Surprising Twists"',
	"Written by Geoff Pinckney (PRS)\nPublished by Black Toast Music (BMI)\nPerformed by Alien Six\nCourtesy of Black Toast Music",
	"Written by Greta Salpeter and Bob morris\nPerformed by The Hush Sound\nProduced by Sean O'Keefe and Patrick Stump\nPerformed by The Hush Sound\nCourtesy of Decaydance/ Fueled By Ramen Record/ Atlantic Recording Corp.\nBy arrangement with Warner Music Group Video Game Licensing\n(P) 2006 Decaydance/ Fueled By Ramen, Inc.",
};

local totoffset = 0;
local actoffset = 0;
local t = Def.ActorFrame{};

for s in ipairs(titles) do
	t[#t+1] = Def.ActorFrame{
		OnCommand=function(self)
			if s > 1 then
				actoffset = 33+(22*repeats(desc[s-1],"\n"))+94;
				totoffset = totoffset + actoffset;
				self:y(totoffset);
			else
				self:y(0);
			end
		end;
		LoadFont("_ttlcredit")..{
			Text=titles[s];
			OnCommand=cmd(vertalign,top);
		};
		LoadFont("_credit")..{
			Text=desc[s];
			OnCommand=cmd(vertalign,top;y,43);
		};
	};
end

return t