local velocidade = 3000
local color = TEXTCOLOR_PINK
local function loop(valores)

doSendAnimatedText({x=294, y=489, z=7},"Vip!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end