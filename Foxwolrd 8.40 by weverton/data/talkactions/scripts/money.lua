function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,0) then
doPlayerAddItem(cid,2160,100)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "LOL ;��", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'LOL ;��')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  