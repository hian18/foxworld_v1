local velocidade = 3000
local color = TEXTCOLOR_LIVE
local function loop(valores)

doSendAnimatedText({x=304, y=494, z=12},"Dark C!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end