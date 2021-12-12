function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,100) then
doPlayerAddItem(cid,7390,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "Aura Sword", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'Vc precisa Apenas 1kk para Consegi A Sword Vip !!')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  