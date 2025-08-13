--[[
Useful links

https://github.com/wube/factorio-data/blob/master/base/prototypes/categories/recipe-category.lua
--]]

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


data:extend({
  {
    type = "recipe",
    name = "water-deletion",
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64
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
    category = "chemistry",
    subgroup = "biomass-crafting",  
    ingredients = {
	  {type = "fluid", name = "water", amount = 300},
      
    },
    results = { 
      {type = "fluid", name = "water", amount = 100},
    },
    energy_required = 0.2
  }
})


data:extend({
  {
    type = "recipe",
    name = "debris-excavation",
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64
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
    category = "oil-processing",
    subgroup = "biomass-crafting",  
    ingredients = {
	  {type = "fluid", name = "water", amount = 300},
      {type = "item",  name = "biomass", amount = 1},
    },
    results = { 
      {type = "fluid", name = "crude-oil", amount = 100},
    },
    energy_required = 10
  }
})

-- todo: balance
data:extend({
  {
    type = "recipe",
    name = "biomass-cultivation",
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "oil-processing",
    subgroup = "biomass-crafting",  
    ingredients = {
	  {type = "fluid", name = "petroleum-gas", amount = 100},
	  {type = "fluid", name = "heavy-oil", amount = 100},
      {type = "item",  name = "biomass", amount = 10},
	  {type = "item",  name = "compressed-biomass", amount = 10},
    },
    results = { 
      {type = "fluid", name = "crude-oil", amount = 50},
	  {type = "fluid", name = "water", amount = 149},
	  {type = "fluid", name = "lubricant", amount = 1},
	  {type = "item",  name = "biomass", amount = 30},
	  {type = "item",  name = "compressed-biomass", amount = 11},
    },
    energy_required = 12
  }
})


data:extend({
  {
    type = "recipe",
    name = "biomass-irradiation",
    icons = {
      {
        icon = "__base__/graphics/icons/uranium-238.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "oil-processing",
    subgroup = "biomass-crafting",  
    ingredients = {
	  {type = "fluid", name = "sulfuric-acid", amount = 100},
      {type = "item",  name = "biomass", amount = 1},
    },
    results = { 
      {type = "fluid", name = "sulfuric-acid", amount = 99},
	  {type = "fluid", name = "water", amount = 1},
	  {type = "item",  name = "biomass", amount = 1, probability = 0.99},
	  {type = "item",  name = "biomass-238", amount = 1, probability = 0.01 - 0.0001},
	  {type = "item",  name = "biomass-235", amount = 1, probability = 0.0001},
    },
    energy_required = 1
  }
})


data:extend({
  {
    type = "recipe",
    name = "biomass-235-processing",
    icons = {
      {
        icon = "__base__/graphics/icons/uranium-235.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "centrifuging",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item",  name = "biomass-235", amount = 1},
    },
    results = { 
	  {type = "item",  name = "biomass", amount = 1, probability = 0.01},
	  {type = "item",  name = "uranium-235", amount = 1, probability = 0.99},
    },
    energy_required = 20
  }
})


data:extend({
  {
    type = "recipe",
    name = "biomass-238-processing",
    icons = {
      {
        icon = "__base__/graphics/icons/uranium-238.png",
        icon_size = 64
      },
      {
        icon = "__biomass-engineering__/graphics/icons/biomass.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 }  -- позиция второй иконки в правом нижнем углу
      },
    },
    icon_size = 64,
    enabled = false,
    allow_decomposition = true,
    category = "centrifuging",
    subgroup = "biomass-crafting",  
    ingredients = {
      {type = "item",  name = "biomass-238", amount = 1},
    },
    results = { 
	  {type = "item",  name = "biomass", amount = 1, probability = 0.01},
	  {type = "item",  name = "uranium-238", amount = 1, probability = 0.99},
    },
    energy_required = 2
  }
})