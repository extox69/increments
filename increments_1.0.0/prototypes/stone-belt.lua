stone_belt_horizontal =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16
}
stone_belt_vertical =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 40
}
stone_belt_ending_top =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 80
}
stone_belt_ending_bottom =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 120
}
stone_belt_ending_side =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 160
}
stone_belt_starting_top =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 200
}
stone_belt_starting_bottom =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 240
}
stone_belt_starting_side =
{
  filename = "__increments__/graphics/entity/stone-belt.png",
  priority = "extra-high",
  width = 40,
  height = 40,
  frame_count = 16,
  y = 280
}

data:extend({
--ENTITY
{ 
  type = "transport-belt",
  name = "stone-belt",
  icon = "__increments__/graphics/icons/stone-belt.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.3, result = "stone-belt"},
  max_health = 100,
  corpse = "small-remnants",
  resistances =
  {
    {
      type = "fire",
      percent = 60
    }
  },
  collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/basic-transport-belt.ogg",
      volume = 0.4
    },
    max_sounds_per_type = 3
  },
  animation_speed_coefficient = 32,
  animations =
  {
    filename = "__increments__/graphics/entity/stone-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 16,
    direction_count = 12
  },
  belt_horizontal = stone_belt_horizontal,
  belt_vertical = stone_belt_vertical,
  ending_top = stone_belt_ending_top,
  ending_bottom = stone_belt_ending_bottom,
  ending_side = stone_belt_ending_side,
  starting_top = stone_belt_starting_top,
  starting_bottom = stone_belt_starting_bottom,
  starting_side = stone_belt_starting_side,
  ending_patch = ending_patch_prototype,
  fast_replaceable_group = "transport-belt",
  speed = 0.03
},

{
  type = "transport-belt-to-ground",
  name = "stone-transport-belt-to-ground",
  icon = "__increments__/graphics/icons/stone-transport-belt-to-ground.png",
  flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-transport-belt-to-ground"},
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
  belt_horizontal = stone_belt_horizontal,
  belt_vertical = stone_belt_vertical,
  ending_top = stone_belt_ending_top,
  ending_bottom = stone_belt_ending_bottom,
  ending_side = stone_belt_ending_side,
  starting_top = stone_belt_starting_top,
  starting_bottom = stone_belt_starting_bottom,
  starting_side = stone_belt_starting_side,
  ending_patch = ending_patch_prototype,
  fast_replaceable_group = "transport-belt-to-ground",
  speed = 0.03,
  max_distance = 3,
  structure =
  {
    direction_in =
    {
      sheet =
      {
        filename = "__increments__/graphics/entity/stone-transport-belt-to-ground-structure.png",
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
        filename = "__increments__/graphics/entity/stone-transport-belt-to-ground-structure.png",
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
  name = "stone-splitter",
  icon = "__increments__/graphics/icons/stone-splitter.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "stone-splitter"},
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
  belt_horizontal = stone_belt_horizontal,
  belt_vertical = stone_belt_vertical,
  ending_top = stone_belt_ending_top,
  ending_bottom = stone_belt_ending_bottom,
  ending_side = stone_belt_ending_side,
  starting_top = stone_belt_starting_top,
  starting_bottom = stone_belt_starting_bottom,
  starting_side = stone_belt_starting_side,
  ending_patch = ending_patch_prototype,
  fast_replaceable_group = "splitter",
  speed = 0.03,
  structure =
  {
    north =
    {
      filename = "__increments__/graphics/entity/stone-splitter-north.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 80,
      height = 35,
      shift = {0.225, 0}
    },
    east =
    {
      filename = "__increments__/graphics/entity/stone-splitter-east.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 46,
      height = 81,
      shift = {0.075, 0}
    },
    south =
    {
      filename = "__increments__/graphics/entity/stone-splitter-south.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 82,
      height = 36,
      shift = {0.075, 0}
    },
    west =
    {
      filename = "__increments__/graphics/entity/stone-splitter-west.png",
      frame_count = 32,
      line_length = 16,
      priority = "extra-high",
      width = 47,
      height = 79,
      shift = {0.25, 0.05}
    }
  }
},

--ITEM
{ 
  type = "item",
  name = "stone-belt",
  icon = "__increments__/graphics/icons/stone-belt.png",
  flags = {"goes-to-quickbar"},
  subgroup = "belt",
  order = "a[transport-belt]-a[stone-belt]",
  place_result = "stone-belt",
  stack_size = 50
},

{
  type = "item",
  name = "stone-transport-belt-to-ground",
  icon = "__increments__/graphics/icons/stone-transport-belt-to-ground.png",
  flags = {"goes-to-quickbar"},
  subgroup = "belt",
  order = "b[transport-belt-to-ground]-d[stone-transport-belt-to-ground]",
  place_result = "stone-transport-belt-to-ground",
  stack_size = 50
},

{
  type = "item",
  name = "stone-splitter",
  icon = "__increments__/graphics/icons/stone-splitter.png",
  flags = {"goes-to-quickbar"},
  subgroup = "belt",
  order = "c[splitter]-d[stone-splitter]",
  place_result = "stone-splitter",
  stack_size = 50
},

--RECIPE
{
  type = "recipe",
  name = "stone-belt",
  ingredients =
  {
    {"stone-brick", 1},
    {"stone-gear-wheel", 1}
  },
  result = "stone-belt",
  result_count = 2
},

{
  type = "recipe",
  name = "stone-transport-belt-to-ground",
  ingredients =
  {
    {"stone-belt", 3},
    {"stone-gear-wheel", 6},
    {"stone-brick", 4}
  },
  result_count = 2,
  result = "stone-transport-belt-to-ground"
},

{
  type = "recipe",
  name = "stone-splitter",
  ingredients =
  {
    {"stone-gear-wheel", 8},
    {"stone-belt", 4},
	{"stone-brick", 4}
  },
  result = "stone-splitter"
}

})