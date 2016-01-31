require "defines"

if remote.interfaces.freeplay then
    script.on_event( defines.events.on_player_created, function( event )
        --[[ DATA ]]
        local items =
	        {   {"basic-transport-belt", 100}
            ,   {"basic-transport-belt-to-ground", 4}
            ,   {"basic-splitter", 4}

            ,   {"basic-inserter", 20}
            ,   {"iron-chest", 4}

            ,   {"iron-plate", 150}
            ,   {"coal", 50}
            ,   {"copper-plate", 100}
            ,   {"stone", 50}

            ,   {"submachine-gun", 1}
            ,   {"basic-bullet-magazine", 25}
            ,   {"basic-armor", 1}
            ,   {"iron-axe", 1}

            ,   {"basic-mining-drill", 2}
            ,   {"stone-furnace", 4}
            ,   {"assembling-machine-1", 2}

            ,   {"boiler", 3}
            ,   {"small-electric-pole", 32}
            ,   {"steam-engine", 2}
            ,   {"pipe", 32}
            ,   {"offshore-pump", 1}
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
        local player = game.get_player( event.player_index )
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
end
