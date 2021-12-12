local config =
 {
  seconds = 10,
   storage = 47112120,
   msg = "Voc\� preci\�a aguardar alguns segundos para acumular o esp\�rito.",
  mana = 2400,
 semMana = "Voc\� n\�o t\�m mana suficiente."
}

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local combat1 = createCombatObject()
 setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
 setCombatParam(combat1, COMBAT_PARAM_EFFECT, 52)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -5.5, -32, -2.9, -400)

local combat2 = createCombatObject()
 setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
 setCombatParam(combat2, COMBAT_PARAM_EFFECT, 52)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -5.5, -32, -2.9, -400)

arr1 = {
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}
arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

local function spell(parameters)
 doCombat(parameters.cid, parameters.combat2, parameters.var)
end

function onCastSpell(cid, var)
 if getPlayerStorageValue(cid, config.storage) == 1 then
  doPlayerSendCancel(cid, config.msg)
   return TRUE
    end
     if getPlayerStorageValue(cid, config.storage) ~= 1 then
      if getPlayerMana(cid) >= config.mana then
       doPlayerAddMana(cid, -config.mana)
        setPlayerStorageValue(cid, config.storage, 1)
         addEvent(useAgain, config.seconds*1000, cid)
        local parameters = { cid = cid, var = var, combat2 = combat2 }
       addEvent(spell, 500, parameters)
      return doCombat(cid, combat1, var)
     else
    doPlayerSendCancel(cid, config.semMana)
   end
  end
 return TRUE
end