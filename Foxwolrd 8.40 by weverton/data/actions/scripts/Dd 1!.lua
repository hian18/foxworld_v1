local velocidade = 3000
local color = TEXTCOLOR_BLACK
local function loop(valores)

doSendAnimatedText({x=288, y=504, z=12},"Dd 1!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end