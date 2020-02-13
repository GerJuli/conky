-- Gibt das Wetter aus
output = "Keine Wetterdaten"
lasttime = os.time()
first_time = 1
function conky_weather()
	currenttime = os.time()
	timedifference = os.difftime(currenttime, lasttime)
	if timedifference > 3600 or first_time then
		local file = io.popen("curl -s \"http://wttr.in/Stuttgart?0?T\"")
		output = file:read("*a")
		file:close()
		laststime = currenttime
		first_time = 0
	end
	return output
end
