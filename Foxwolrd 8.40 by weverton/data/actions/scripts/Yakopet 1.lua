local velocidade = 3000
local color = TEXTCOLOR_PURPLE
local function loop(valores)

doSendAnimatedText({x=288, y=498, z=12},"Yako 1!",color)

addEvent(loop,  velocidade, valore)
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end