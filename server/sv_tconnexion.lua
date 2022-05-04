AddEventHandler('playerConnecting', function(name, skr, d)
  d.defer()
  Wait(1000)
  
  d.presentCard({
    type = "AdaptiveCard",
    ["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json",
    version = "1.5",
    body = { {
      type = "Container",
      items = { {
        type = "ColumnSet",
        columns = { 
          {
          type = "Column",
          width = "stretch",
          items = { {
            type = "Image",
            url = Config.ServerBannerURL
          }, {
            type = "TextBlock",
            text = "Bienvenue sur " .. Config.ServerName,
            wrap = true,
            fontType = "Default",
            horizontalAlignment = "Center",
            size = "Large"
          }, }
        } }
      }, {
        type = "ColumnSet",
        columns = { {
          type = "Column",
          width = "stretch",
          items = { {
            type = "ActionSet",
            actions = { {
              type = "Action.OpenUrl",
              title = "DISCORD",
              url = Config.DiscordURL
            } }
          } }
        }, {
          type = "Column",
          width = "stretch",
          items = { {
            type = "ActionSet",
            actions = { {
              type = "Action.Submit",
              title = "JOUER",
              id = "connect"
            } }
          } }
        } }
      } }
    } }
  },
    function(data, rawData)
      if (data.submitId == 'connect') then 
        Wait(10)
        clicked = true;
        d.done()
      end
  end)
end)

print("")
print("[^5tConnexion^7] - Made by TrapZed#1725^7")
print("")