local velocidade = 3000
local color = TEXTCOLOR_BLUE
local function loop(valores)

doSendAnimatedText({x=296, y=492, z=12},"Frozen 2!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end