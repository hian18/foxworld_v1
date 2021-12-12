local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "#The New Spells by GOD Express#\n\n[Para Todos]\n Utani Hur (LvL 14, Mana 60)\n Exana vis (LvL 10, mana 30)\n\n[Magias da gema]\n zesshou hachimon - Para sorc's (LvL 200, mana 3100)\n jukai kousan - Para Druid's (LvL 200, mana 2400)\n mugen shiki - Para Paladins (LvL 200, 60% da mana)\n yahumuki (LvL 200, 90% da mana)\n\n[Para Sorcerers]\n Housenka (LvL 150, Mana 2400)\n Exevo Gran Mas vis (LvL 70, Mana 1600)\n Utani gran hur(LvL 14, mana 100)\n\n[Para druids]\n Hyakka ryouran (LvL 150, mana 600)\n Exevo gran mas pox (LvL 50, mana 600)\n Exevo grav mas (LvL 180, mana 800)\n Utani gran hur(LvL 14, mana 100)\n\n[Para Paladins]\n Exori Song (LvL 100, Mana 430)\n Rasenshuriken (LvL 150, Mana 1200)\n karamatsu no mai (LvL 200, Mana 900)\n Senpou Hur (LvL 200, mana 600)\n\n[Para Knights]\n Uber exori (LvL 100, Mana 500)\n Ezzori (LvL 200, Mana 1000)\n Senpou Hur (LvL 200, mana 600)\n\n#The New Runes by GOD Express#\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end