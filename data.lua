require("prototypes/bio-assembler")
require("prototypes/bio-farm")
require("recipes")
data:extend({
  {
    type = "item",
    name = "biomass",
    icon = "__biomass-engineering__/graphics/icons/biomass.png", 

    pictures = {
          {
            size = 64,
            filename = "__biomass-engineering__/graphics/icons/biomass.png",
            scale = 0.5,
          },

          {
            size = 64,
            filename = "__biomass-engineering__/graphics/icons/biomass2.png",
            scale = 0.5,
          },

          {
            size = 64,
            filename = "__biomass-engineering__/graphics/icons/biomass3.png",
            scale = 0.5,
          },

          {
            size = 64,
            filename = "__biomass-engineering__/graphics/icons/biomass4.png",
            scale = 0.5,
          },

          {
            size = 64,
            filename = "__biomass-engineering__/graphics/icons/biomass5.png",
            scale = 0.5,
          },

          {
            size = 64,
            filename = "__biomass-engineering__/graphics/icons/biomass6.png",
            scale = 0.5,
          },
        },

    icon_size = 64,
    stack_size = 100,

    fuel_category = "chemical",     -- обычное топливо (как уголь)
    fuel_value = "1MJ",             -- сколько энергии (уголь = 4MJ)
    fuel_emissions_multiplier = 0.1,
    weight = 1*kg,
  },

  {
    type = "item",
    name = "dried-biomass",
    icon = "__biomass-engineering__/graphics/icons/dried-biomass.png", 
    icon_size = 64,
    stack_size = 100,

    fuel_category = "chemical",     -- обычное топливо (как уголь)
    fuel_value = "0.5MJ",             -- сколько энергии (уголь = 4MJ)
    fuel_emissions_multiplier = 0.2,
    weight = 1*kg,
  },
  
  {
    type = "item",
    name = "compressed-biomass",
    icon = "__biomass-engineering__/graphics/icons/compressed-biomass.png", 
    icon_size = 64,
    stack_size = 100,

    fuel_category = "chemical",     -- обычное топливо (как уголь)
    fuel_value = "5MJ",             -- сколько энергии (уголь = 4MJ)
    fuel_emissions_multiplier = 0.2,
    weight = 1*kg,
  },
  
  {
    type = "item",
    name = "biomass-235",
    icon = "__biomass-engineering__/graphics/icons/biomass-235.png", 
    icon_size = 64,
    stack_size = 100,

    fuel_category = "nuclear",     
    fuel_value = "40GJ",            
    fuel_emissions_multiplier = 0.2,
    weight = 1*kg,
  },
  
  {
    type = "item",
    name = "biomass-238",
    icon = "__biomass-engineering__/graphics/icons/biomass-238.png", 
    icon_size = 64,
    stack_size = 100,

    fuel_category = "nuclear",     
    fuel_value = "500MJ",            
    fuel_emissions_multiplier = 0.2,
    weight = 1*kg,
  },

  {
    type = "item",
    name = "empty-biomass-fuel-cell",
    icon = "__biomass-engineering__/graphics/icons/empty-biomass-fuel-cell.png", 
    icon_size = 64,
    stack_size = 100,

    --fuel_category = "chemical",     -- обычное топливо (как уголь)
    --fuel_value = "0.5MJ",             -- сколько энергии (уголь = 4MJ)
    --fuel_emissions_multiplier = 0.2,
    weight = 50*kg,
  },

  {
    type = "fuel-category",
    name = "biomass"
  },

  {
    type = "item",
    name = "charged-biomass-fuel-cell",
    icon = "__biomass-engineering__/graphics/icons/charged-biomass-fuel-cell.png", 
    icon_size = 64,
    stack_size = 100,

    fuel_category = "biomass",
    fuel_value = "50MJ",
    fuel_emissions_multiplier = 0.75,
    burnt_result = "empty-biomass-fuel-cell",
    weight = 50*kg,
  },

  {
    type = "recipe-category",
    name = "bio-crafting"
  },


  {
    type = "recipe-category",
    name = "biofarm-stuff"
  },

 {
    type = "item-group",
    name = "biomass-craft",
    order = "z",
    inventory_order = "z",
    icon = "__biomass-engineering__/graphics/icons/biomass.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "biomass-crafting",
    group = "biomass-craft",
    order = "a"
  },

  {
    type = "recipe-category",
    name = "bio-crafting-with-fluid"
  },

})


data:extend({
  {
    type = "recipe",
    name = "fill-biomass-fuel-cell-biomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/charged-biomass-fuel-cell.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    icon_size = 64,
    enabled = false,
    category = "bio-crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "empty-biomass-fuel-cell", amount = 1},
      {type = "item", name = "biomass", amount = 50},
    },
    results = { 
      {type = "item", name = "charged-biomass-fuel-cell", amount = 1},
    },
    energy_required = 2.5
  }
})

data:extend({
  {
    type = "recipe",
    name = "fill-biomass-fuel-cell-upbiomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/charged-biomass-fuel-cell.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/upgraded_biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    icon_size = 64,
    enabled = false,
    category = "bio-crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "empty-biomass-fuel-cell", amount = 1},
      {type = "item", name = "upgraded-biomass", amount = 3},
    },
    results = { 
      {type = "item", name = "charged-biomass-fuel-cell", amount = 1},
    },
    energy_required = 2.5
  }
})

data:extend({
  {
    type = "recipe",
    name = "fill-biomass-fuel-cell-mega-biomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/charged-biomass-fuel-cell.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass-filter.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    icon_size = 64,
    enabled = false,
    category = "bio-crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "empty-biomass-fuel-cell", amount = 1},
      {type = "item", name = "mega-biomass", amount = 1},
    },
    results = { 
      {type = "item", name = "charged-biomass-fuel-cell", amount = 1},
      {type = "item", name = "upgraded-biomass", amount = 5},
    },
    energy_required = 2.5
  }
})



data:extend({
  {
    type = "item",
    name = "upgraded-biomass",
    icon = "__biomass-engineering__/graphics/icons/upgraded_biomass.png", 
    icon_size = 64,
    stack_size = 50,

    fuel_category = "chemical",     -- обычное топливо (как уголь)
    fuel_value = "15MJ",             -- сколько энергии (уголь = 4MJ)
    fuel_emissions_multiplier = 0.01,
    weight = 1*kg,
  }
})


data:extend({
  {
    type = "item",
    name = "mega-biomass",
    icon = "__biomass-engineering__/graphics/icons/biomass-filter.png",  -- замени на свою иконку  
    icon_size = 64,
    order = "z[biomass-filter]",
    stack_size = 50,

    fuel_category = "chemical",
    fuel_value = "75MJ",
    fuel_emissions_multiplier = -5.0,    -- при сгорании убирает 5x базового загрязнения
    weight = 1*kg,
  },
 
})


data:extend({
  {
    type = "recipe",
    name = "iron-base-recycling-biomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    icon_size = 64,
    enabled = false,
    --allow_decomposition = true,
    category = "bio-crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "biomass", amount = 5}                    -- 5 обычной биомассы → 1 фильтр
    },
    results = { 
      {type = "item", name = "wood", amount = 1, probability=0.3},
      {type = "item", name = "stone-brick", amount = 1, probability=0.3},
      {type = "item", name = "iron-ore", amount = 1, probability=0.8},
      {type = "item", name = "iron-stick", amount = 1, probability=0.5},
      {type = "item", name = "upgraded-biomass", amount = 1, probability=0.25},
      {type = "item", name = "stone", amount = 1, probability=0.2},
      {type = "item", name = "electronic-circuit", amount = 1, probability=0.07},
      {type = "item", name = "firearm-magazine", amount = 1, probability=0.07},
    },
    energy_required = 1                 -- крафтится 1 сек
  }
})

data:extend({
  {
    type = "recipe",
    name = "copper-base-recycling-biomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    icon_size = 64,
    enabled = false,
    --allow_decomposition = true,
    category = "bio-crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "biomass", amount = 5}                    -- 5 обычной биомассы → 1 фильтр
    },
    results = { 
      {type = "item", name = "wood", amount = 1, probability=0.3},
      {type = "item", name = "stone-brick", amount = 1, probability=0.3},
      {type = "item", name = "copper-ore", amount = 1, probability=0.8},
      {type = "item", name = "copper-cable", amount = 1, probability=0.5},
      {type = "item", name = "upgraded-biomass", amount = 1, probability=0.25},
      {type = "item", name = "stone", amount = 1, probability=0.2},
      {type = "item", name = "electronic-circuit", amount = 1, probability=0.07},
      {type = "item", name = "firearm-magazine", amount = 1, probability=0.07},
    },
    energy_required = 1                 -- крафтится 1 сек
  }
})


data:extend({
  {
    type = "recipe",
    name = "biomass-recovery",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/dried-biomass.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "bio-crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "dried-biomass", amount = 1}                    -- 5 обычной биомассы → 1 фильтр
    },
    results = { 
      {type = "item", name = "biomass", amount = 1, probability=0.9},
    },
    energy_required = 30
  }
})

data:extend({
  {
    type = "recipe",
    name = "biomass-recovery-with-water",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/dried-biomass.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "bio-crafting-with-fluid",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "dried-biomass", amount = 1},
      {type = "fluid", name = "water", amount = 30},
    },
    results = { 
      {type = "item", name = "biomass", amount = 1, probability=0.9},
    },
    energy_required = 6
  }
})


data:extend({
  {
    type = "recipe",
    name = "advanced-recycling-biomass",
    subgroup = "biomass-crafting", 
    category = "bio-crafting", 
    icon = "__biomass-engineering__/graphics/icons/upgraded_biomass.png",  -- замени на свою иконку  
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,  
    ingredients = {
      {type = "item", name = "biomass", amount = 10},
      {type = "item", name = "upgraded-biomass", amount = 5}
    },
    results = {
      {type = "item", name = "military-science-pack", amount = 10}, 
      {type = "item", name = "mega-biomass", amount = 1, probability=0.01},
      {type = "item", name = "firearm-magazine", amount = 1, probability=0.5},
      {type = "item", name = "sulfur", amount = 1, probability=0.35},
      {type = "item", name = "plastic-bar", amount = 1, probability=0.4},
      {type = "item", name = "steel-plate", amount = 1, probability=0.4},
      {type = "item", name = "stone-wall", amount = 1, probability=0.25},
      {type = "item", name = "iron-gear-wheel", amount = 1, probability=0.5},
      {type = "item", name = "pipe", amount = 1, probability=0.35},
      {type = "item", name = "raw-fish", amount = 1, probability=0.7},
      {type = "item", name = "iron-plate", amount = 1, probability=0.5},
      {type = "item", name = "copper-plate", amount = 1, probability=0.5},
    },
    energy_required = 2.5                 -- крафтится 2,5 сек
  }
})



data:extend({
  {
    type = "recipe",
    name = "mega-recycling-biomass",
    subgroup = "biomass-crafting", 
    category = "bio-crafting", 
    icon = "__biomass-engineering__/graphics/icons/biomass-filter.png",  -- замени на свою иконку  
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,  
    ingredients = {
      {type = "item", name = "biomass", amount = 20},
      {type = "item", name = "mega-biomass", amount = 1}
    },
    results = {
      {type = "item", name = "sulfur", amount_min = 3, amount_max = 5},
      {type = "item", name = "plastic-bar", amount_min = 3, amount_max = 5}, 
      {type = "item", name = "firearm-magazine", amount = 10, probability=0.85},
      {type = "item", name = "radar", amount = 1, probability=0.35},
      {type = "item", name = "stone-furnace", amount = 1, probability=0.75},
      {type = "item", name = "burner-inserter", amount = 1, probability=0.75},
      {type = "item", name = "coal", amount = 50},
      {type = "item", name = "advanced-circuit", amount = 3, probability=0.6},
      {type = "item", name = "steel-plate", amount = 3, probability=0.95},
      {type = "item", name = "stone-wall", amount = 5, probability=0.75},
      {type = "item", name = "logistic-science-pack", amount = 3, probability=0.5},
      {type = "item", name = "chemical-science-pack", amount = 5, probability=0.25},
      {type = "item", name = "automation-science-pack", amount = 3, probability=0.75},
      {type = "item", name = "military-science-pack", amount = 75},
      {type = "item", name = "raw-fish", amount = 5, probability=0.7},
      {type = "item", name = "shotgun-shell", amount = 1, probability=0.4},
      {type = "item", name = "uranium-ore", amount = 5, probability=0.7},
      {type = "item", name = "uranium-235", amount = 1, probability=0.05},
    },
    energy_required = 10                -- крафтится 10 сек
  }
})

data:extend({
  {
    type = "recipe",
    name = "base-biomass-bettering",
    subgroup = "biomass-crafting", 
    category = "bio-crafting", 
    icon = "__biomass-engineering__/graphics/icons/biomass.png",  -- замени на свою иконку  
    icon_size = 50,
    enabled = false,
    allow_decomposition = true,  
    ingredients = {
      {type = "item", name = "biomass", amount = 1},
    },
    results = { 
      {type = "item", name = "upgraded-biomass", amount = 1, probability=0.1},

    },
    energy_required = 0.5                -- крафтится 10 сек
  }
})

data:extend({
  {
    type = "recipe",
    name = "to-base-biomass",
    subgroup = "biomass-crafting", 
    category = "bio-crafting", 
    icon = "__biomass-engineering__/graphics/icons/biomass.png",  -- замени на свою иконку  
    icon_size = 32,
    enabled = false,
    allow_decomposition = true,  
    ingredients = {
      {type = "item", name = "upgraded-biomass", amount = 1},
    },
    results = { 
      {type = "item", name = "biomass", amount = 15},

    },
    energy_required = 10              -- крафтится 10 сек
  }
})

data:extend({
  {
    type = "recipe",
    name = "upgraded-biomass-bettering",
    subgroup = "biomass-crafting", 
    category = "bio-crafting", 
    icon = "__biomass-engineering__/graphics/icons/upgraded_biomass.png",  -- замени на свою иконку  
    icon_size = 50,
    enabled = false,
    allow_decomposition = true,  
    ingredients = {
      {type = "item", name = "upgraded-biomass", amount = 1},
    },
    results = { 
      {type = "item", name = "mega-biomass", amount = 1, probability=0.001},

    },
    energy_required = 0.5                -- крафтится 10 сек
  }
})

data:extend({
  {
    type = "recipe",
    name = "water-condensation-with-biomass",
    subgroup = "biomass-crafting", 
    category = "bio-crafting-with-fluid", 
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "biomass", amount = 5 }
    },
    results = { 
      {type = "fluid", name = "water", amount = 150},
      { type = "item", name = "dried-biomass", amount = 4}
    },
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    }
  }
})

data:extend({
  {
    type = "recipe",
    name = "steam-condensation-with-biomass",
    subgroup = "biomass-crafting", 
    category = "bio-crafting-with-fluid", 
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "biomass", amount = 5 }
    },
    results = { 
      {type = "fluid", name = "steam", amount = 25},
      { type = "item", name = "dried-biomass", amount = 4}
    },
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      }
    }
  }
})


-- data:extend({
--   {
--     type = "recipe",
--     name = "automation-biomass-recycling",
--     subgroup = "biomass-crafting", 
--     category = "bio-crafting", 
--     enabled = false,
--     energy_required = 10,
--     ingredients = {
--       { type = "item", name = "biomass", amount = 100 }
--     },
--     results = { 
--       { type = "item", name = "dried-biomass", amount = 10},
--       { type = "item", name = "automation-science-pack", amount = 4},
--       { type = "item", name = "iron-gear-wheel", amount = 4},
--       { type = "item", name = "copper-plate", amount = 4},
--     },
--     icons = {
--       {
--         icon = "__biomass-engineering__/graphics/icons/biomass.png",
--         icon_size = 64
--       },
--       {
--         icon = "__base__/graphics/icons/automation-science-pack.png",
--         icon_size = 64,
--         scale = 0.25,
--         shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
--       }
--     }
--   }
-- })



-- data:extend({
--   {
--     type = "recipe",
--     name = "logistic-biomass-recycling",
--     subgroup = "biomass-crafting", 
--     category = "bio-crafting", 
--     enabled = false,
--     energy_required = 10,
--     ingredients = {
--       { type = "item", name = "biomass", amount = 150 }
--     },
--     results = { 
--       { type = "item", name = "dried-biomass", amount = 10},
--       { type = "item", name = "logistic-science-pack", amount = 4},
--       { type = "item", name = "transport-belt", amount = 4},
--       { type = "item", name = "inserter", amount = 4},
--     },
--     icons = {
--       {
--         icon = "__biomass-engineering__/graphics/icons/biomass.png",
--         icon_size = 64
--       },
--       {
--         icon = "__base__/graphics/icons/logistic-science-pack.png",
--         icon_size = 64,
--         scale = 0.25,
--         shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
--       }
--     }
--   }
-- })


-- data:extend({
--   {
--     type = "recipe",
--     name = "chemical-biomass-recycling",
--     subgroup = "biomass-crafting", 
--     category = "bio-crafting-with-fluid", 
--     enabled = false,
--     energy_required = 10,
--     ingredients = {
--       { type = "item", name = "biomass", amount = 250 }
--     },
--     results = { 
--       { type = "item", name = "dried-biomass", amount = 10},
--       { type = "item", name = "chemical-science-pack", amount = 4},
--       { type = "item", name = "sulfur", amount = 6},
--       { type = "fluid", name = "sulfuric-acid", amount = 250},
--     },
--     icons = {
--       {
--         icon = "__biomass-engineering__/graphics/icons/biomass.png",
--         icon_size = 64
--       },
--       {
--         icon = "__base__/graphics/icons/chemical-science-pack.png",
--         icon_size = 64,
--         scale = 0.25,
--         shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
--       }
--     }
--   }
-- })


-- data:extend({
--   {
--     type = "recipe",
--     name = "military-biomass-recycling",
--     subgroup = "biomass-crafting", 
--     category = "bio-crafting", 
--     enabled = false,
--     energy_required = 10,
--     ingredients = {
--       { type = "item", name = "biomass", amount = 150 }
--     },
--     results = { 
--       { type = "item", name = "dried-biomass", amount = 10},
--       { type = "item", name = "military-science-pack", amount = 4},
--       { type = "item", name = "piercing-rounds-magazine", amount = 6},
--       { type = "item", name = "grenade", amount = 1},
--     },
--     icons = {
--       {
--         icon = "__biomass-engineering__/graphics/icons/biomass.png",
--         icon_size = 64
--       },
--       {
--         icon = "__base__/graphics/icons/military-science-pack.png",
--         icon_size = 64,
--         scale = 0.25,
--         shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
--       }
--     }
--   }
-- })


require("prototypes.technologies")