local velocidade = 3000
local color = TEXTCOLOR_BLACK
local function loop(valores)

doSendAnimatedText({x=260, y=502, z=7},"Dp!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end