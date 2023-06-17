d('clear')
local buffNames = {}
local unitTag = "player"
local numberOfBuffs = GetNumBuffs(unitTag)

for i = 0, numberOfBuffs do
    local buffName, timeStarted, timeEnding, buffSlot, stackCount, iconFilename, buffType, effectType, abilityType, statusEffectType, abilityId, canClickOff, castByPlayer =
        GetUnitBuffInfo(unitTag, i)
    if abilityId == 184220 then
        d(zo_strformat("<<1>>. [<<2>>] <<C:3>> <<4>>", i, abilityId, ZO_SELECTED_TEXT:Colorize(buffName), stackCount))
    end
end
