local config =
 {
  seconds = 20,
   storage = 47112120,
   msg = "Voc\ê preci\ça aguardar 20 segundos para acumular o esp\írito.",
  mana = 0,
 semMana = "Voc\ê n\ão t\êm mana suficiente."
}

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
setCombatParam(combat1, COMBAT_PARAM_CREATEITEM, 8010)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
setCombatParam(combat2, COMBAT_PARAM_CREATEITEM, 8009)

arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}


local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

local function onCastSpell2(parameters)
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
         local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, }
        addEvent(onCastSpell2, 1, parameters)
      return doCombat(cid, combat1, var)
     else
    doPlayerSendCancel(cid, config.semMana)
   end
  end
 return TRUE
end