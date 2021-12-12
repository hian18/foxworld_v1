local velocidade = 3000
local color = TEXTCOLOR_GREEN
local function loop(valores)

doSendAnimatedText({x=288, y=496, z=12},"Annihilon!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end