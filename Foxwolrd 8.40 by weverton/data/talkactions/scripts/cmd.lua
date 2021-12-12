local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "#The New Comandos by GOD Fantasm#\n\n[Todos podem Ativar Os Comandos]\n -- !wand,!rod,!club,!axe,!sword,!bow De Graca Espada Vip ! -- !buyaol <=> LvL: [Qualquer], Dinheiro: [1 Crystal Coin]\n !bp <=> LvL: [Qualquer], Dinheiro: [20 Gold Coins]\n !bless <=> LvL: [Qualquer], Dinheiro: [2 Cystal Coins]\n\n[Magias Que Cria Gemas]\n !buygemasorc <=> LvL: [Qualquer], Dinheiro: [1 Crystal Coins]\n !buygemadruid <=> LvL: [Qualquer], Dinheiro: [1 Crystal Coins]\n !buygemapaly <=> LvL: [Qualquer], Dinheiro: [1 Crystal Coins]\n !buygemakina <=> LvL: [Qualquer], Dinheiro: [1 Crystal Coins]\n\n#The New Comandos by GOD killer (S2 Thiago - Irmao Ever)#\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end