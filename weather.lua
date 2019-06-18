-- Gibt das Wetter aus
function conky_weather()
	io.popen("curl -s \"https://wttr.in/Berlin?0T\"")
	output = file:read("*a")
end
