local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition, 0.7, -56, 0.7, -56)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
local position = getCreaturePosition(cid)
doSendDistanceShoot(position, {x = position.x, y = position.y + 5, z = position.z}, 40)
doSendDistanceShoot(position, {x = position.x, y = position.y - 5, z = position.z}, 40)
doSendDistanceShoot(position, {x = position.x + 5, y = position.y, z = position.z}, 40)
doSendDistanceShoot(position, {x = position.x - 5, y = position.y, z = position.z}, 40)
	return doCombat(cid, combat, var)
end
