data:extend({
  {
    type = "recipe",
    name = "trivial-recycling-biomass",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64
      }
    },
    icon_size = 64,
    enabled = true,
    --allow_decomposition = true,
    category = "crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "biomass", amount = 1}                    
    },
    results = { 
      {type = "item", name = "copper-ore", amount = 1, probability=0.3},
      {type = "item", name = "iron-ore", amount = 1, probability=1},
      {type = "item", name = "stone", amount = 1, probability=0.3},
      {type = "item", name = "coal", amount = 1, probability=0.3},
      {type = "item", name = "firearm-magazine", amount = 1, probability=0.2},
    },
    energy_required = 0.5        
  }
})


data:extend({
  {
    type = "recipe",
    name = "iron-recycling-biomass",
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
    category = "crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "biomass", amount = 1}                    
    },
    results = { 
      {type = "item", name = "iron-ore", amount = 5, probability=1},
    },
    energy_required = 1        
  }
})


data:extend({
  {
    type = "recipe",
    name = "copper-recycling-biomass",
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
    category = "crafting",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "biomass", amount = 1}                    
    },
    results = { 
      {type = "item", name = "copper-ore", amount = 5, probability=1},
    },
    energy_required = 1        
  }
})


data:extend({
  {
    type = "recipe",
    name = "biomass-compression",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/compressed-biomass.png",
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
    category = "chemistry",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item", name = "biomass", amount = 5},
    },
    results = { 
      {type = "item", name = "compressed-biomass", amount = 1},
	  {type = "fluid", name = "water", amount = 50},
    },
    energy_required = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "biomass-uncompression",
    icons = {
      {
        icon = "__biomass-engineering__/graphics/icons/compressed-biomass.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "crafting-with-fluid",
    subgroup = "biomass-crafting",  
    ingredients = {
	  {type = "item", name = "compressed-biomass", amount = 1},
	  {type = "fluid", name = "water", amount = 50},
      
    },
    results = { 
      {type = "item", name = "biomass", amount = 5},
    },
    energy_required = 1
  }
})
