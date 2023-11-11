local genv = getgenv()

if genv.AlreadyExecuted then
    return Notification(1, "SmellLikehacker Hub", "AlreadyExecuted", 5)
end

genv.AlreadyExecuted = true

genv.wartn = function()
    local queue_on_teleport = (syn and syn.queue_on_teleport) or queue_on_teleport or queueonteleport
    if queue_on_teleport then
        pcall(function()
            queue_on_teleport('loadstring(game:HttpGet"https://raw.githubusercontent.com/SmellLikeHacker/MyEdit/main/Hub")()')
        end)
    end
end
getgenv().AlreadyExecuted = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/SmellLikeHacker/IDK/main/!Map"))()
