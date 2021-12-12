local config = {
	rateSpawn = getConfigInfo('rateSpawn'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	autoSaveEachMinutes = getConfigInfo('autoSaveEachMinutes')
}

function onSay(cid, words, param)
	local str = "#The Vip System by GOD Slayer#\n\n[Virando Vip]\nNo Segundo andar do DP tem um Npc chamado Vip Seller diga Hi, Trade e compre a Vip Stone por 1kk\nApos isso de USE nela e abra o bau do lugar onde voce cair e depois suba no trono.\n\n[Player VIP]\nQuando voce se tornar Vip tera Acesso a Cidade e Aos Teleports Vip\nNo DP da City Vip tem o Npc Slayer Coins Seller que vende Slayer Coins (serve para comprar itens vips)\nE o Slayer Seller (vende itens vips por slayer coins diga Hi para saber quais)\n\n[Sala dos Npcs]\nNesses 2 Andares contem todos os Npcs e um New Npc chamado Soft Boots Seller (vende soft boots)\n\n[Slayer Promotion]\nNo Npc Promotion Seller no DP da Cidade VIP voce pode comprar promotion (Lvl 20 e custa 20k)\n\n\n---------------------------------------------------------------------------\nRate Spawn: " .. config.rateSpawn
	doPlayerPopupFYI(cid, str)
	return FALSE
end