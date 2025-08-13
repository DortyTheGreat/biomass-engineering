data:extend({
  {
    type = "technology",
    name = "biomass-tech",
    icon = "__biomass-engineering__/graphics/icons/biomass.png", -- замени на путь к своей иконке
    icon_size = 64,
	prerequisites = {"automation-science-pack"},
    unit = {
      count = 10,
      ingredients = { { "automation-science-pack", 1 } },
      time = 10
    },



    effects = {
      {
        type = "unlock-recipe",
        recipe = "iron-recycling-biomass"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "copper-recycling-biomass"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "iron-base-recycling-biomass"
      },

      {
        type = "unlock-recipe",
        recipe = "copper-base-recycling-biomass"
      },

      {
        type = "unlock-recipe",
        recipe = "advanced-recycling-biomass"
      },

      {
        type = "unlock-recipe",
        recipe = "base-biomass-bettering"
      },

      {
        type = "unlock-recipe",
        recipe = "upgraded-biomass-bettering"
      },

      {
        type = "unlock-recipe",
        recipe = "to-base-biomass"
      },

      {
        type = "unlock-recipe",
        recipe = "bio-assembler"
      },

      {
        type = "unlock-recipe",
        recipe = "bio-farm"
      },


    },
    order = "a-b-a"
  }
})




data:extend({
  {
    type = "technology",
    name = "debris-excavation-tech",
    icon = "__biomass-engineering__/graphics/icons/compressed-biomass.png",
    icon_size = 64,
    prerequisites = { "biomass-tech", "oil-processing" },
    unit = {
      count = 100,
      ingredients = { { "automation-science-pack", 1 } },
      time = 1
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "debris-excavation"
      },

    },
    order = "a-b-a"
  }
})

data:extend({
  {
    type = "technology",
    name = "compressed-biomass-tech",
    icon = "__biomass-engineering__/graphics/icons/compressed-biomass.png",
    icon_size = 64,
    prerequisites = { "biomass-tech", "oil-processing" },
    unit = {
      count = 300,
      ingredients = { { "automation-science-pack", 1 } },
      time = 20
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "biomass-compression"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "biomass-uncompression"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "water-deletion"
      },

    },
    order = "a-b-a"
  }
})

data:extend({
  {
    type = "technology",
    name = "biomass-cultivation-tech",
    icon = "__biomass-engineering__/graphics/icons/compressed-biomass.png",
    icon_size = 64,
    prerequisites = { "compressed-biomass-tech", "advanced-oil-processing" },
    unit = {
      count = 100,
      ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } },
      time = 40
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "biomass-cultivation"
      },
    },
    order = "a-b-a"
  }
})


data:extend({
  {
    type = "technology",
    name = "biomass-irradiation-tech",
    icon = "__base__/graphics/icons/uranium-238.png",
    icon_size = 64,
    prerequisites = { "debris-excavation-tech", "nuclear-power" },
    unit = {
      count = 77,
      ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } },
      time = 100
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "biomass-irradiation"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "biomass-235-processing"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "biomass-238-processing"
      },
	  
    },
    order = "a-b-a"
  }
})


data:extend({
  {
    type = "technology",
    name = "dried-biomass-tech",
    icon = "__biomass-engineering__/graphics/icons/dried-biomass.png", -- замени на путь к своей иконке
    icon_size = 64,
    prerequisites = { "biomass-tech", "logistic-science-pack" },
    unit = {
      count = 100,
      ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
      time = 20
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "biomass-recovery"
      },

      {
        type = "unlock-recipe",
        recipe = "biomass-recovery-with-water"
      },


      
      {
        type = "unlock-recipe",
        recipe = "water-condensation-with-biomass"
      },

      {
        type = "unlock-recipe",
        recipe = "steam-condensation-with-biomass"
      },


    },
    order = "a-b-a"
  }
})

data:extend({
  {
    type = "technology",
    name = "mega-biomass-tech",
    icon = "__biomass-engineering__/graphics/icons/biomass-filter.png", -- замени на путь к своей иконке
    icon_size = 64,
    prerequisites = { "dried-biomass-tech", "chemical-science-pack" },
    unit = {
      count = 500,
      ingredients = { 
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30
    },
    effects = {
      {
      type = "unlock-recipe",
      recipe = "mega-recycling-biomass"
      },
    },
    order = "a-b-b"
  }
})