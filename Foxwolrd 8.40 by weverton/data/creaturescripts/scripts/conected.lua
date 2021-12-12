function onLogin(cid)
playerpos = getPlayerPosition(cid)
doSendAnimatedText(playerpos, "Cheguei!", TEXTCOLOR_YELLOW)
	return TRUE
end