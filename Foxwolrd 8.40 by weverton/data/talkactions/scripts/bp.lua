function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2148,20) then
doPlayerAddItem(cid,1988,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "Back Pack!", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'Se Nao Funcionar Tente Transformar Suas Moedas Em Gold Coins.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  