data:extend({
   {
    type = "recipe",
    name = "military-science-pack-with-biomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      {type="item", name="piercing-rounds-magazine", amount=1},
      {type="item", name="grenade", amount=1},
      {type="item", name="stone-wall", amount=2},
      {type="item", name="biomass", amount=10},
    },
    results = {{type="item", name="military-science-pack", amount=6}}
  }
}
)