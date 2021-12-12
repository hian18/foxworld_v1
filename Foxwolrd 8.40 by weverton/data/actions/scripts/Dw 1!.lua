local velocidade = 3000
local color = TEXTCOLOR_YELLOW
local function loop(valores)

doSendAnimatedText({x=288, y=502, z=12},"Dw 1!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end