local velocidade = 3000
local color = TEXTCOLOR_YELLOW
local function loop(valores)

doSendAnimatedText({x=298, y=495, z=7},"BeM-ViNdO!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end