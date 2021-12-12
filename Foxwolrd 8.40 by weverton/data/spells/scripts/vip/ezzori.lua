local config =
 {
  seconds = 10,
   storage = 47112120,
   msg = "Voc\ê preci\ça aguardar alguns segundos para acumular o esp\írito.",
  mana = 995,
 semMana = "Voc\ê n\ão t\êm mana suficiente."
}

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local combat = createCombatObject()
 setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
 setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatFormula(combat,COMBAT_FORMULA_LEVELMAGIC, -3.0, -290, -3.5, -300)

local condition = createConditionObject(CONDITION_PARALYZE)
 setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
  -- setConditionParam(condition, CONDITION_PARAM_SPEED, -70)
 setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)

arr = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0,0,0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0,0,0},
{0, 0, 1, 0, 1, 1, 1, 0, 1, 0,0,0},
{0, 1, 0, 1, 1, 1, 1, 1, 0, 1,0,0},
{1, 0, 1, 1, 1, 3, 1, 1, 1, 0,1,0},
{0, 1, 0, 1, 1, 1, 1, 1, 0, 1,0,0},
{0, 0, 1, 0, 1, 1, 1, 0, 1, 0,0,0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0,0,0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0,0,0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

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
      return doCombat(cid, combat, var)
     else
    doPlayerSendCancel(cid, config.semMana)
   end
  end
 return TRUE
end