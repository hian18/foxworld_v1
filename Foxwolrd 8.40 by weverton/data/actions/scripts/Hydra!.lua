local velocidade = 3000
local color = TEXTCOLOR_GREEN
local function loop(valores)

doSendAnimatedText({x=300, y=492, z=12},"Hydra!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end