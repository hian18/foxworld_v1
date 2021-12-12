--Name Tile by Runando--
function onStepIn(cid, item, pos)
player1pos = getPlayerPosition(cid) 
novapos1 = {x=160, y=54, z=7} 
msg = "So o GOD Slayer pode passar!" 
if getPlayerName(cid) == 'GOD Slayer' then
doPlayerSendTextMessage(cid,22,"Você pode passar.")
else
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(player1pos) 
doSendMagicEffect(player1pos,2)
doTeleportThing(cid,novapos1)
doSendMagicEffect(novapos1,10)
end
end