function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,1) then
doPlayerAddItem(cid,2158,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "Blue Gem", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'Voce precisa de 1 Crystal Coins Para Adquirir A Gema Espiritual.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  