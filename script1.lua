if game.Players.LocalPlayer.Name == "nielt_62" then
local args = {
    [1] = "a",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
