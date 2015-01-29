data:extend({
--ITEM
{ 
  type = "item",
  name = "steel-gear-wheel",
  icon = "__increments__/graphics/icons/steel-gear-wheel.png",
  flags = {"goes-to-main-inventory"},
  subgroup = "intermediate-product",
  order = "a[steel-gear-wheel]",
  stack_size = 100
},

--RECIPE
{ 
  type = "recipe",
  name = "steel-gear-wheel",
  enabled = "false",
  ingredients = {{"steel-plate", 2}},
  result = "steel-gear-wheel"
}, 

--TECHNOLOGY
{ 
  type = "technology",
  name = "steel-processing-2",
  icon = "__base__/graphics/technology/steel-processing.png",
  prerequisites = {"steel-processing"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "steel-gear-wheel"
    }
  },
  unit =
  {
    count = 100,
    ingredients = 
    {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1}
	},
    time = 5
  }
}

})
