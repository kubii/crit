Crit = LibStub("AceAddon-3.0"):NewAddon("Crit", "AceEvent-3.0")

function Crit:OnInitialize()
end

function Crit:OnEnable()
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
end

function Crit:OnDisable()
end

function Crit:COMBAT_LOG_EVENT_UNFILTERED(eventName)
	local timestamp,
		type,
		hideCaster,
		sourceGUID,
		sourceName,
		sourceFlags,
		sourceFlags2,
		destGUID,
		destName,
		destFlags,
		destFlags2,
		spellId,
		spellName,
		spellSchool,
		amount,
		overkill,
		school,
		resisted,
		blocked,
		absorbed,
		critical = CombatLogGetCurrentEventInfo()
	local isPlayer = UnitName("player") == sourceName
	local isDamage = type == "SPELL_DAMAGE" or type == "SPELL_PERIODIC_DAMAGE"
	if isPlayer == true and critical and isDamage then
		PlaySoundFile("Interface\\AddOns\\crit\\coin.mp3")
	end
end
