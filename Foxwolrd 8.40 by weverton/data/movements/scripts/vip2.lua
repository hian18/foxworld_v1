function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=385, y=454, z=7}



if isPlayer(cid) then

if item.actionid == 13539 then

vip = getPlayerStorageValue(cid,13540)
if vip == -1 then
doPlayerSendCancel(cid,"Esta �rea � exclusiva para players vips.")


doTeleportThing(cid,teleport1)


else

end

end

end

end
