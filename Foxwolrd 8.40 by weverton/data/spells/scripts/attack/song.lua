local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 23)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -2.8, -260, -2.5, -295)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 21)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -2.5, -160, -2.7, -195)

local area1 = createCombatArea(AREA_CROSS5X5)setCombatArea(combat1, area1)

local area2 = createCombatArea(AREA_SONG)
setCombatArea(combat2, area2)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end


function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2 }
-- Feito por Rique
arm = getPlayerSlotItem(cid, 4)
helm = getPlayerSlotItem(cid, 1)
legs = getPlayerSlotItem(cid, 7)
if arm.itemid == 7898 and helm.itemid == 7901 and legs.itemid == 7895 then
-- Close
return doCombat(cid, combat1, var)
else
return doCombat(cid, combat2, var)
end
end