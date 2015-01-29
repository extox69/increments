data:extend({
--ENTITY
{
  type = "solar-panel",
  name = "solar-panel-2",
  icon = "__increments__/graphics/icons/solar-panel-2.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-2"},
  max_health = 125,
  corpse = "big-remnants",
  collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  energy_source =
  {
    type = "electric",
    usage_priority = "primary-output"
  },
  picture =
  {
    filename = "__increments__/graphics/entity/solar-panel-2.png",
    priority = "high",
    width = 104,
    height = 96
  },
  production = "600kW"
},
  
--ITEM
{
  type = "item",
  name = "solar-panel-2",
  icon = "__increments__/graphics/icons/solar-panel-2.png",
  flags = {"goes-to-quickbar"},
  subgroup = "energy",
  order = "d[solar-panel]-b[solar-panel-2]",
  place_result = "solar-panel-2",
  stack_size = 50
},
   
--RECIPE   
{
  type = "recipe",
  name = "solar-panel-2",
  energy_required = 10,
  enabled = "false",
  ingredients =
  {
    {"solar-panel", 10},
    {"advanced-circuit", 10},
    {"steel-plate", 10 }
  },
  result = "solar-panel-2"
},
  
--TECHNOLOGY
{
  type = "technology",
  name = "solar-energy-2",
  icon = "__base__/graphics/technology/solar-energy.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "solar-panel-2"
    }
  },
  prerequisites = {"solar-energy", "steel-processing-2"},
  unit =
  {
    count = 100,
    ingredients =
    {
      {"science-pack-1", 3},
	  {"science-pack-2", 2},
	  {"science-pack-3", 1}
    },
    time = 45
  },
  order = "a-i-c",
}
  
  })