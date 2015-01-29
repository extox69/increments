 data:extend({
--ENTITY
{
  type = "electric-pole",
  name = "substation-roboport",
  icon = "__increments__/graphics/icons/substation-roboport.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "substation-roboport"},
  max_health = 200,
  corpse = "medium-remnants",
  resistances = 
  {
    {
      type = "fire",
      percent = 90
    }
  },
  collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
  selection_box = {{-1, -1}, {1, 1}},
  drawing_box = {{-1, -1.5}, {1, 1}},
  maximum_wire_distance = 100,
  supply_area_distance = 50,
  pictures =
  {
    filename = "__increments__/graphics/entity/substation-roboport.png",
    priority = "high",
    width = 132,
    height = 144,
    axially_symmetrical = false,
    direction_count = 4,
    shift = {0.9, -1}
  },
  working_sound =
  {
    sound = { filename = "__base__/sound/substation.ogg" },
    apparent_volume = 1.5,
  },
  connection_points =
  {
    {
      shadow =
      {
        copper = {1.9, -0.6},
        green = {1.3, -0.6},
        red = {2.65, -0.6}
      },
      wire =
      {
        copper = {-0.23, -2.65},
        green = {-0.85,-2.65},
        red = {0.35,-2.65}
      }
    },
    {
      shadow =
      {
        copper = {1.9, -0.6},
        green = {1.2, -0.8},
        red = {2.5, -0.35}
      },
      wire =
      {
        copper = {-0.26, -2.71},
        green = {-0.67,-3},
        red = {0.17,-2.47}
      }
    },
    {
      shadow =
      {
        copper = {1.9, -0.6},
        green = {1.9, -0.9},
        red = {1.9, -0.3}
      },
      wire =
      {
        copper = {-0.23, -2.7},
        green = {-0.23,-3.2},
        red = {-0.23,-2.35}
      }
    },
    {
      shadow =
      {
        copper = {1.8, -0.7},
        green = {1.3, -0.6},
        red = {2.4, -1.15}
      },
      wire =
      {
        copper = {-0.2, -2.7},
        green = {-0.62,-2.45},
        red = {0.25,-2.98}
      }
    }
  },
  copper_wire_picture =
  {
    filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
    priority = "extra-high-no-scale",
    width = 224,
    height = 46
  },
  green_wire_picture =
  {
    filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
    priority = "extra-high-no-scale",
    width = 224,
    height = 46
  },
  radius_visualisation_picture =
  {
    filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
    width = 12,
    height = 12
  },
  red_wire_picture =
  {
    filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
    priority = "extra-high-no-scale",
    width = 224,
    height = 46
  },
  wire_shadow_picture =
  {
    filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
    priority = "extra-high-no-scale",
    width = 224,
    height = 46
  }
},

--ITEM
{
  type = "item",
  name = "substation-roboport",
  icon = "__increments__/graphics/icons/substation-roboport.png",
  flags = {"goes-to-quickbar"},
  subgroup = "energy-pipe-distribution",
  order = "a[energy]-d[substation]",
  place_result = "substation-roboport",
  stack_size = 50
},

--RECIPE
{
  type = "recipe",
  energy_required = "1",
  name = "substation-roboport",
  enabled = "false",
  ingredients =
  {
	{"substation-double", 1},
	{"roboport", 1},
    {"steel-plate", 50},
    {"advanced-circuit", 50},
    {"copper-plate", 100}
  },
  result = "substation-roboport"
},

--TECHNOLOGY
{
  type = "technology",
  name = "electric-energy-distribution-4",
  icon = "__base__/graphics/technology/electric-energy-distribution.png",
  prerequisites = {"electric-energy-distribution-3"},{"alien-technology-2"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "substation-roboport"
    }
  },		 
  unit =
  {
    count = 150,
    ingredients =
    {
      {"science-pack-1", 6},
      {"science-pack-2", 4},
      {"science-pack-3", 2}
    },
    time = 45
  },
  order = "c-e-c",
}

})
  