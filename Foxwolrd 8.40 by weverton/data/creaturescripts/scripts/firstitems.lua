local firstItems =
{
	2173,
	2525,
           2399,
           2124,
           2457,
           2647,
           2643
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 30001) == -1 then
		for i = 1, table.maxn(firstItems) do
			doPlayerAddItem(cid, firstItems[i], 1)
		end
		if getPlayerSex(cid) == 0 then
			doPlayerAddItem(cid, 2463, 1)
		else
			doPlayerAddItem(cid, 2463, 1)
		end
		local bag = doPlayerAddItem(cid, 7342, 1)
		doAddContainerItem(bag, 2160, 3)
		doAddContainerItem(bag, 2554, 1)
		doAddContainerItem(bag, 2120, 1)
		doAddContainerItem(bag, 2190, 1)
		doAddContainerItem(bag, 2182, 1)
		doAddContainerItem(bag, 2428, 1)
		doAddContainerItem(bag, 2383, 1)
		doAddContainerItem(bag, 2394, 1)
		setPlayerStorageValue(cid, 30001, 1)
	end
 	return TRUE
end