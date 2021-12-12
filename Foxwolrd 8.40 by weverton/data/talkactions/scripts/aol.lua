function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,1) then
doPlayerAddItem(cid,2173,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "Fantasm Server O Melhor", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'Voce precisa de 1 Crystal Coin Para Adquirir Um Aol.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  