function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,0) then
doPlayerAddItem(cid,2671,100)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "Come Food..", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'Voce precisa de 0 Crystal Coin Para Adquirir A Gema Espiritual.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  