if mods["air-filtering"] then
  data:extend({
  {
    type = "recipe",
    name = "air-filter-machine",
    icon = "__air-filtering__/graphics/icons/air-filter-machine.png",
    icon_size = 32,
    energy_required = 10.0,
    enabled = false,
    ingredients =
    {
      {type="item", name="assembling-machine-2", amount=1},
      {type="item", name="electronic-circuit", amount=5},
      {type="item", name="steel-plate", amount=5},
      {type="item", name="biomass", amount=15},
    },
    results = {{type="item", name="air-filter-machine", amount=1}}
  },
  {
    type = "recipe",
    name = "air-filter-machine-mk2",
    icon = "__air-filtering__/graphics/icons/air-filter-machine-mk2.png",
    icon_size = 32,
    energy_required = 10.0,
    enabled = false,
    ingredients =
    {
      {type="item", name="air-filter-machine", amount=2},
      {type="item", name="advanced-circuit", amount=10},
      {type="item", name="biomass", amount=30},
    },
    results = {{type="item", name="air-filter-machine-mk2", amount=1}}
  },
  {
    type = "recipe",
    name = "air-filter-machine-mk3",
    icon = "__air-filtering__/graphics/icons/air-filter-machine-mk3.png",
    icon_size = 32,
    energy_required = 10.0,
    enabled = false,
    ingredients =
    {
      {type="item", name="air-filter-machine-mk2", amount=2},
      {type="item", name="processing-unit", amount=10},
      {type="item", name="upgraded-biomass", amount=10},
    },
    results = {{type="item", name="air-filter-machine-mk3", amount=1}}
  },
  {
    type = "recipe",
    name = "unused-air-filter",
    icon = "__air-filtering__/graphics/icons/unused-air-filter.png",
    icon_size = 32,
    category = "crafting",
    subgroup = "raw-material",
    order = "f[plastic-bar]-f[unused-air-filter]",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {type="item", name="coal", amount=10},
      {type="item", name="plastic-bar", amount=4},
      {type="item", name="steel-plate", amount=2},
      {type="item", name="biomass", amount=50},
    },
    results = {{type="item", name="unused-air-filter", amount=1}}
  },
  {
    type = "recipe",
    name = "filter-air",
    icon = "__air-filtering__/graphics/icons/filter-air.png",
    icon_size = 32,
    category = "crafting-air-filter",
    order = "f[plastic-bar]-f[filter-air]",
    energy_required = 100,
    enabled = false,
    ingredients =
    {
      {type="item", name="unused-air-filter", amount=1}
    },
    results = {{type="item", name="used-air-filter", amount=1}}
  },
  {
    type = "recipe",
    name = "air-filter-recycling",
    icon = "__air-filtering__/graphics/icons/air-filter-recycling.png",
    icon_size = 32,
    category = "crafting",
    subgroup = "raw-material",
    order = "f[unused-air-filter]-f[air-filter-recycling]",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {type="item", name="used-air-filter", amount=1},
      {type="item", name="coal", amount=5},
      {type="item", name="biomass", amount=10},
    },
    results = {{type="item", name="unused-air-filter", amount=1}}
  },

  {
    type = "technology",
    name = "air-filtering",
    icon = "__air-filtering__/graphics/technology/air-filtering.png",
    icon_size = 64,
    prerequisites = {"steel-processing", "biomass-tech"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-filter-machine"
      },
      {
        type = "unlock-recipe",
        recipe = "filter-air"
      },
      {
        type = "unlock-recipe",
        recipe = "unused-air-filter"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "air-filter-recycling",
    icon = "__air-filtering__/graphics/technology/air-filter-recycling.png",
    icon_size = 64,
    prerequisites = {"air-filtering"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-filter-recycling"
      }
    },
    unit =
    {
      count = 350,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "d-a-a"
  }
})

end

table.insert(data.raw.technology["military-science-pack"].effects, {
  type = "unlock-recipe",
  recipe = "military-science-pack-with-biomass"
})