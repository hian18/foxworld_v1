local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doPlayerAddMana(cid, 600,600)
doSendAnimatedText(getPlayerPosition(cid), "Aaaaah...", TEXTCOLOR_BLUE)
return doCombat(cid, combat, var)

end