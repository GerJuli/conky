-- Gibt das Wetter aus
output = "Keine Wetterdaten"
lasttime = os.time()
function conky_weather()
	currenttime = os.time()
	timedifference = os.difftime(currenttime, lasttime)
	if timedifference > 30 then
		local file = io.popen("curl -s \"http://wttr.in/Stuttgart?0?T\"")
		output = file:read("*a")
		file:close()
		laststime = currenttime
	end
	return output
end
