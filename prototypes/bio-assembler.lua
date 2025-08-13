local base = data.raw["assembling-machine"]["assembling-machine-2"]
local entity = table.deepcopy(base)

entity.name = "bio-assembler"
entity.icon = "__base__/graphics/icons/assembling-machine-2.png"
entity.icon_size = 64
entity.minable.result = "bio-assembler"
entity.crafting_speed = 1
entity.crafting_categories = {"bio-crafting", "bio-crafting-with-fluid"}
entity.allowed_effects = {"consumption","speed","productivity","pollution"}
entity.modules = {
  allowed_effects = {"consumption","speed","productivity","pollution", "quality"},
  module_slots = 2
}

entity.energy_source =
{
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = { pollution = -1 }
}

-- Перекраска спрайтов в фиолетовый
if entity.graphics_set and entity.graphics_set.animation and entity.graphics_set.animation.layers then
  for _, layer in pairs(entity.graphics_set.animation.layers) do
    layer.tint = {r=1, g=0.3, b=1, a=1}
    if layer.hr_version then layer.hr_version.tint = {r=1, g=0.3, b=1, a=1} end
  end
end

local item = {
  type = "item",
  name = "bio-assembler",
  icons = {
    {
      icon = entity.icon,
      icon_size = 64, icon_mipmaps = 4,
      tint = { r = 1, g = 0.3, b = 1, a = 1 }
    }
  },
  icon_size = 64,
  subgroup = "production-machine",
  order = "d[bio-assembler]",
  place_result = "bio-assembler",
  stack_size = 50
}

local recipe = {
  type = "recipe",
  name = "bio-assembler",
  enabled = false,
  ingredients = {
    {type = "item", name = "assembling-machine-1", amount = 1},
    {type = "item", name = "biomass",           amount = 15},
  },
  results = {
    {type = "item", name = "bio-assembler",  amount = 1}
  }
}

data:extend({entity, item, recipe})