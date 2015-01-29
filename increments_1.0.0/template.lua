--This is an example for easier item creation, its in lua so that color coding works in notepad++

data:extend({
--ENTITY -type is the name of the item
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
} --End of file notice no comma

}) --Closing data:extend 