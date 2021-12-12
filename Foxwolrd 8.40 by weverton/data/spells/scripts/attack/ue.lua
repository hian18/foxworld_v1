local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 36)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -2.5, -285, -3.0, -295)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -2.3, -265, -2.7, -290)

local area1 = createCombatArea(AREA_CROSS5X5)
setCombatArea(combat1, area1)

local area2 = createCombatArea(AREA_CROSS5X5)
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
if arm.itemid == 7899 and helm.itemid == 7900 and legs.itemid == 7894 then
-- Close
return doCombat(cid, combat1, var)
else
return doCombat(cid, combat2, var)
end
end