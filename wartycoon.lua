if wartn_LOADED and not _G.wartn_DEBUG == true then
	-- error(War Tycoon, 0)
	return
end

pcall(function() getgenv().wartn_LOADED = true end)

if getgenv().AlreadyExecuted then
	return Notification(1, "SmellLikehacker Hub", "AlreadyExecuted",5)
end
getgenv().AlreadyExecuted = true
task.spawn(function()
	local queue_on_teleport = (syn and syn.queue_on_teleport) or queue_on_teleport or queueonteleport
	if queue_on_teleport then
		pcall(function()
			queue_on_teleport('loadstring(game:HttpGet"https://raw.githubusercontent.com/SmellLikeHacker/MyEdit/main/Hub")()')
		end)
	end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/SmellLikeHacker/IDK/main/!Map"))()