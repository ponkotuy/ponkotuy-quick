
    script.on_event( defines.events.on_player_created, function( event )
        --[[ DATA ]]
        local items =
	        {   {"transport-belt", 200}

            ,   {"inserter", 50}
            ,   {"iron-chest", 4}

            ,   {"iron-plate", 200}
            ,   {"coal", 50}
            ,   {"copper-plate", 100}
            ,   {"stone", 50}

            ,   {"submachine-gun", 1}
            ,   {"piercing-rounds-magazine", 25}
            ,   {"heavy-armor", 1}
            ,   {"iron-axe", 1}

            ,   {"electric-mining-drill", 20}
            ,   {"stone-furnace", 30}
            ,   {"assembling-machine-1", 10}

            ,   {"boiler", 20}
            ,   {"small-electric-pole", 50}
            ,   {"steam-engine", 10}
            ,   {"pipe", 50}
            ,   {"offshore-pump", 2}
            ,   {"raw-wood", 50}
            }

        local tech =
            {   "military"
	        ,   "automation"
	        ,   "logistics"
	        ,   "armor-making"
            }

        local recipes =
            {
            }

        --[[ CODE ]]
        local player = game.players[event.player_index]
        player.clear_items_inside()
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
        for i, v in pairs(tech) do
            player.force.technologies[v].researched = true
        end
        for i, v in pairs(recipes) do
            player.force.recipes[v].enabled = true
        end
    end )
