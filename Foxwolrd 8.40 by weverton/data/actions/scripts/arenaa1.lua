function onUse(cid, item, frompos, item2, topos)
pos = {x=344, y=170, z=8}
if item.itemid == 2122 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena parte 1!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Faio !")


end

return 1

end 