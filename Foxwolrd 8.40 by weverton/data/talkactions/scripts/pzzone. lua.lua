function onSay(cid, words, param, channel) 
        if(param == '') then 
                return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command requires param.") 
        end 
        local target = getPlayerByNameWildcard(param) 
        if(not target)then 
                return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player not found.") 
        end 
        local name,msg = getCreatureName(target),"" 
        if(getTilePzInfo(getCreaturePosition(target))) then 
                msg = name.." est� em PZ." 
        else 
                msg = name.." N�o est� em PZ."  
        end    
    return doPlayerPopupFYI(cid, msg)    
end  