local velocidade = 3000
local color = TEXTCOLOR_BLUE
local function loop(valores)

doSendAnimatedText({x=294, y=496, z=7},"Treiner!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end