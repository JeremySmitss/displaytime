PerformHttpRequest("https://api.github.com/repos/LucaNL/TimeAndDateDisplay-FiveM/releases/latest", function(err, text, headers)
	Citizen.Wait(5000)
	if text then
		local info = json.encode(text) info = json.decode(text)
		local currentVersion = GetResourceMetadata(GetCurrentResourceName(), "version") 
		local newestVersion = info.tag_name

		if ( newestVersion ~= nil ) then
			if newestVersion ~= currentVersion then
			elseif newestVersion == currentVersion then
			end
		end
	end
end)