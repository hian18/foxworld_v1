function onUse(cid, item, frompos, item2, topos)
pos = {x=344, y=222, z=8}
if item.itemid == 2264 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena 1 parte 5!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Faio !")


end

return 1

end 