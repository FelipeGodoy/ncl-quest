
function handler (evt)
	
    if evt.class ~= 'ncl' then return end
    if evt.type ~= 'attribution' then return end
    if evt.name ~= 'message' then return end
	if evt.action ~= 'stop' then return end
	
	file, msg, code = io.open("saida.txt","a")
	file:flush()
	file:write(string.gsub(evt.value,"_"," "),"\n")
	file:close()
	 
end
event.register(handler)