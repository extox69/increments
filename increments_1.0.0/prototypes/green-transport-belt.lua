ending_patch_prototype =
{
  sheet = 
  {
    filename = "__increments__/graphics/entity/start-end-integration-patches.png",
    width = 40,
    height = 40,
    priority = "extra-high"
  }
}

---------------------- GREEN BELT PICTURES
green_belt_horizontal =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32
}
green_belt_vertical =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 40
}
green_belt_ending_top =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 80
}
green_belt_ending_bottom =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 120
}
green_belt_ending_side =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 160
}
green_belt_starting_top =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 200
}
green_belt_starting_bottom =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 240
}
green_belt_starting_side =
{
  filename = "__increments__/graphics/entity/green-transport-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 32,
  y = 280
}

data:extend({
--ITEM
{
  type = "item",
  name = "green-transport-belt",
  icon = "__increments__/graphics/icons/green-transport-belt.png",
  flags = {"goes-to-quickbar"},
  subgroup = "belt",
  order = "a[transport-belt]-d[green-transport-belt]",
  place_result = "green-transport-belt",
  stack_size = 50
},

{
  type = "item",
  name = "green-transport-belt-to-ground",
  icon = "__increments__/graphics/icons/green-transport-belt-to-ground.png",
  flags = {"goes-to-quickbar"},
  subgroup = "belt",
  order = "b[transport-belt-to-ground]-d[green-transport-belt-to-ground]",
  place_result = "green-transport-belt-to-ground",
  stack_size = 50
},

{
  type = "item",
  name = "green-splitter",
  icon = "__increments__/graphics/icons/green-splitter.png",
  flags = {"goes-to-quickbar"},
  subgroup = "belt",
  order = "c[splitter]-d[green-splitter]",
  place_result = "green-splitter",
  stack_size = 50
},

--ENTITY
{
  type = "transport-belt",
  name = "green-transport-belt",
  icon = "__increments__/graphics/icons/green-transport-belt.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.3, result = "green-transport-belt"},
  max_health = 50,
  corpse = "small-remnants",
  resistances = 
  {
    {
      type = "fire",
      percent = 50
    }
  },
  collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/express-transport-belt.ogg",
      volume = 0.4
    },
    max_sounds_per_type = 3
  },
  animation_speed_coefficient = 32,
  animations =
  {
    filename = "__increments__/graphics/entity/green-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    direction_count = 12
  },
  belt_horizontal = green_belt_horizontal,
  belt_vertical = green_belt_vertical,
  ending_top = green_belt_ending_top,
  ending_bottom = green_belt_ending_bottom,
  ending_side = green_belt_ending_side,
  starting_top = green_belt_starting_top,
  starting_bottom = green_belt_starting_bottom,
  starting_side = green_belt_starting_side,
  ending_patch = ending_patch_prototype,
  fast_replaceable_group = "transport-belt",
  speed = 0.125,
},

{
  type = "transport-belt-to-ground",
  name = "green-transport-belt-to-ground",
  icon = "__increments__/graphics/icons/green-transport-belt-to-ground.png",
  flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "green-transport-belt-to-ground"},
  max_health = 60,
  corpse = "small-remnants",
  underground_sprite =
  {
    filename = "__core__/graphics/arrows/underground-lines.png",
    priority = "high",
    width = 32,
    height = 32,
    x = 32
  },
  resistances = 
  {
    {
      type = "fire",
      percent = 60
    }
  },
  collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
  selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
  distance_to_enter = 0.35,
  animation_speed_coefficient = 32,
  belt_horizontal = green_belt_horizontal,
  belt_vertical = green_belt_vertical,
  ending_top = green_belt_ending_top,
  ending_bottom = green_belt_ending_bottom,
  ending_side = green_belt_ending_side,
  starting_top = green_belt_starting_top,
  starting_bottom = green_belt_starting_bottom,
  starting_side = green_belt_starting_side,
  ending_patch = ending_patch_prototype,
  fast_replaceable_group = "transport-belt-to-ground",
  speed = 0.125,
  max_distance = 20,
  structure =
  {
    direction_in =
    {
      sheet =
      {
        filename = "__increments__/graphics/entity/green-transport-belt-to-ground-structure.png",
        priority = "extra-high",
        shift = {0.26, 0},
        width = 57,
        height = 43,
        y = 43
      }
    },
    direction_out =
    {
      sheet =
      {
        filename = "__increments__/graphics/entity/green-transport-belt-to-ground-structure.png",
        priority = "extra-high",
        shift = {0.26, 0},
        width = 57,
        height = 43
      }
    }
  }
},

{
  type = "splitter",
  name = "green-splitter",
  icon = "__increments__/graphics/icons/green-splitter.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "green-splitter"},
  max_health = 80,
  corpse = "medium-remnants",
  resistances = 
  {
    {
      type = "fire",
      percent = 60
    }
  },
  collision_box = {{-0.9, -0.1}, {0.9, 0.1}},
  selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
  animation_speed_coefficient = 32,
  structure_animation_speed_coefficient = 1.2,
  structure_animation_movement_cooldown = 10,
  belt_horizontal = green_belt_horizontal,
  belt_vertical = green_belt_vertical,
  ending_top = green_belt_ending_top,
  ending_bottom = green_belt_ending_bottom,
  ending_side = green_belt_ending_side,
  starting_top = green_belt_starting_top,
  starting_bottom = green_belt_starting_bottom,
  starting_side = green_belt_starting_side,
  ending_patch = ending_patch_prototype,
  fast_replaceable_group = "splitter",
  speed = 0.125,
  structure =
  {
    north =
    {
      filename = "__increments__/graphics/entity/green-splitter-north.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 80,
      height = 35,
      shift = {0.225, 0}
    },
    east =
    {
      filename = "__increments__/graphics/entity/green-splitter-east.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 46,
      height = 81,
      shift = {0.075, 0}
    },
    south =
    {
      filename = "__increments__/graphics/entity/green-splitter-south.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 82,
      height = 36,
      shift = {0.075, 0}
    },
    west =
    {
      filename = "__increments__/graphics/entity/green-splitter-west.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 47,
      height = 79,
      shift = {0.25, 0.05}
    },
  }
},

--RECIPE
{
  type = "recipe",
  name = "green-transport-belt",
  category = "crafting-with-fluid",
  enabled = "false",
  ingredients =
  {
    {"express-transport-belt", 1},
	{"iron-gear-wheel", 5},
	{type="fluid", name="lubricant", amount=4}
  },
  result = "green-transport-belt"
},

{
  type = "recipe",
  name = "green-transport-belt-to-ground",
  category = "crafting-with-fluid",
  enabled = "false",
  ingredients =
  {
    {"express-transport-belt-to-ground", 2},
	{"iron-gear-wheel", 60},
	{type="fluid", name="lubricant", amount=4}
  },
  result_count = 2,
  result = "green-transport-belt-to-ground"
},

{
  type = "recipe",
  name = "green-splitter",
  category = "crafting-with-fluid",
  enabled = "false",
  ingredients =
  {
    {"express-splitter", 1},
	{"iron-gear-wheel", 15},
    {"advanced-circuit", 15},
    {type="fluid", name="lubricant", amount=16}
  },
  result = "green-splitter"
},

--TECHNOLOGY
{
  type = "technology",
  name = "logistics-4",
  icon = "__base__/graphics/technology/logistics.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "green-transport-belt"
    },
    {
      type = "unlock-recipe",
      recipe = "green-transport-belt-to-ground"
    },
    {
      type = "unlock-recipe",
      recipe = "green-splitter"
    }
  },
  prerequisites = {"logistics-3"},
  unit =
  {
    count = 150,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1}
    },
    time = 20
  },
  order = "a-f-d",
}

})

