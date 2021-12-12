function onLogin(cid)
local voc = getPlayerVocation(cid)
if getPlayerStorageValue(cid, gems.storage[getPlayerVocation(cid)]) > 0 then
sendGemEffect(cid, gems.storage[voc], gems.interval[voc])
end
return TRUE
end

