local base = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
base.name = "bio-farm"
base.icon = nil

base.icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biofarm.png",
        icon_size = 64,
        tint = {r=1, g=0.3, b=1, a=1}
      }
    }
base.minable.result = "bio-farm"
base.crafting_categories = {"crafting"}
base.crafting_speed = 1.25

base.graphics_set.animation = {
  layers = {
    {
      -- Статичная часть (корпус)
      filename = "__biomass-engineering__/graphics/entity/bio-farm.png",
      width = 238,
      height = 268,
      line_length = 1,
      shift = util.by_pixel( -0.5, -7.5),
      scale = 0.5,
      tint = {r=1, g=0.3, b=1, a=1}
    },
  },
}

base.graphics_set.working_visualisations = {{
  animation = {
    layers = {
      {
        -- Анимируемая часть (например, пузырение, движения)
        filename = "__biomass-engineering__/graphics/entity/bio-farm-animation.png",
        width = 92,
        height = 144,
        line_length = 8,
        frame_count = 64,
        shift = util.by_pixel(23.5, -9.5),
        scale = 0.5,
        animation_speed = 1,
        tint = {r=1, g=0.3, b=1, a=1}
      }
    },
}
}}

-- base.energy_source =
--     {
--       type = "burner",
--       fuel_categories = {"biomass"},
--       effectivity = 1,
--       fuel_inventory_size = 1,
--       emissions_per_minute = {
--             pollution = -2
--         },
--     }


base.energy_source =
{
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = -10 }
}

base.energy_usage = "225kW"

data:extend({ base })

local item = {
  type = "item",
  name = "bio-farm",
  icons = base.icons,
  icon_size = 64,
  subgroup = "production-machine",
  order = "e[bio-farm]",
  place_result = "bio-farm",
  stack_size = 50
}

local recipe = {
  type = "recipe",
  name = "bio-farm",
  enabled = false,
  ingredients = {
    {type = "item", name = "bio-assembler", amount = 1},
    {type = "item", name = "biomass",           amount = 150},
  },
  results = {
    {type = "item", name = "bio-farm",  amount = 1}
  }
}


data:extend({ item , recipe})