function handler (evt)
    if evt.class ~= 'ncl' then return end
    if evt.type ~= 'attribution' then return end
    if evt.property ~= 'text' then return end
	
	file, msg, code = io.open("saida.txt","w")
	file:write(evt.value)
	file:close()
	
end
event.register(handler)