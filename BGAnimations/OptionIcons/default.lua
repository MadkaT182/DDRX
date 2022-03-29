local player = ...
-- tranform a long-form enum string like "PlayerNumber_P1" into just "P1"
local p = ToEnumShortString(player)

local ps = GAMESTATE:GetPlayerState(player)
local po = ps:GetCurrentPlayerOptions()
---

return Def.ActorFrame {
	InitCommand=function(self) self:playcommand("Show") end,
	PlayerJoinedMessageCommand=function(self, params)
		if params.Player == player then
			self:playcommand("Show")
		end
	end,

	----------------------------------------------------------
	-- Speed
	Def.Sprite{
		ShowCommand=function(self)
			self:x(-85);
			if po:XMod() and po:XMod() ~= 1 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/non"));
			end
		end;
	};
	Def.BitmapText{
		Font="_arial black",
		ShowCommand=function(self)
			self:x(-85):zoom(.74):maxwidth(20)
			if po:XMod() and po:XMod() ~= 1 then
				self:settext("x"..po:XMod());
			end
		end,
	},

	----------------------------------------------------------
	-- Boost
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-68)
			if po:Boost() ~= 0  then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/boost_on"));
			elseif po:Brake() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/boost_brake"));
			elseif po:Wave() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/boost_wave"));
			end
		end,
	},

	----------------------------------------------------------
	-- Appearance
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-51)
			if po:Hidden() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/appearance_hidden"))
			elseif po:Sudden() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/appearance_sudden"))
			elseif po:Stealth() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/appearance_stealth"))
			end
		end
	},

	----------------------------------------------------------
	-- Turn
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-34)
			if po:Mirror() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/turn_mirror"))
			elseif po:Left() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/turn_left"))
			elseif po:Right() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/turn_right"))
			elseif po:Shuffle() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/turn_shuffle"))
			end
		end
	},

	----------------------------------------------------------
	-- Dark
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-17)
			if po:Dark() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/dark_on"))
			end
		end
	},

	----------------------------------------------------------
	-- Scroll
	Def.Sprite {
		ShowCommand=function(self)
			self:x(0)
			if po:Reverse() ~= 0 then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/scroll_reverse"))
			end
		end
	},

	----------------------------------------------------------
	-- Arrow
	Def.Sprite {
		ShowCommand=function(self)
			self:x(17)
			if po:NoteSkin():lower():match("flat") then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/arrow_flat"))

			elseif po:NoteSkin():lower():match("note") then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/arrow_note"))

			elseif po:NoteSkin():lower():match("rainbow") then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/arrow_rainbow"))
			end
		end
	},

	----------------------------------------------------------
	-- Cut
	Def.Sprite {
		ShowCommand=function(self)
			self:x(34)
			if po:Little() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/cut_on"))
			end
		end
	},

	----------------------------------------------------------
	-- Freeze arrow
	Def.Sprite {
		ShowCommand=function(self)
			self:x(51)
			if po:NoHolds() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/freeze_arrow_off"))
			end
		end
	},

	----------------------------------------------------------
	-- Jump
	Def.Sprite {
		ShowCommand=function(self)
			self:x(68)
			if po:NoJumps() then
				self:Load(THEME:GetPathB("","OptionIcons/"..p.."/jump_off"))
			end
		end
	},

	----------------------------------------------------------
	-- Risky
}