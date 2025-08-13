radius_drop = 1.5

local drop_table = require("prototypes.drop_config")
local stuff_table = require("prototypes.stuff_config")
local drop_mult = settings.startup["biomass-engineering-scaling"].value

local function drop_item(surface, dposition, item_name, item_count, chance_to_drop, range_r)
  for i = 1, item_count do
    if math.random() * 100 < chance_to_drop then 
      local item_stack = {name = item_name, count = 1}

      -- Выпускаем предметы, передаем один аргумент с позицией и стек предмета
      local dropped = surface.spill_item_stack({position = {x = dposition.x + math.random(-range_r*100, range_r*100)/100, y = dposition.y + math.random(-range_r*100, range_r*100)/100}, stack = item_stack})
      -- for _, item in pairs(dropped) do
      --   if item and item.valid then
      --     item.order_deconstruction(game.forces["player"])
      --   end
      -- end


    end
  end
end




script.on_event(defines.events.on_entity_died, function(event)
  local entity = event.entity
  local cause = event.cause
  
  local drop_position = entity.position
  local surface = entity.surface

  local amount = 0

  --game.print(entity.name)

  local drop = drop_table[entity.name]
  if drop then
    local min, max = drop[1] * drop_mult, drop[2] * drop_mult
    amount = math.random(min, max)
  end

  --drop_item(surface, drop_position, "biomass", amount, 90, 1.5)

  for i = 1, #stuff_table do
    local function drop_real()
        drop_item(surface, drop_position, stuff_table[i][1], amount, stuff_table[i][2], 1.5)
    end
    pcall(drop_real)
  end
end)