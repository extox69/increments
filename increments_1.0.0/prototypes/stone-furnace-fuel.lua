data:extend({
--ENTITY
{ 
  type = "furnace",
  name = "stone-furnace-fuel",
  icon = "__increments__/graphics/icons/stone-furnace-fuel.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 1, result = "stone-furnace-fuel"},
  max_health = 200,
  corpse = "medium-remnants",
  repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  working_sound =
  {
    sound = { filename = "__base__/sound/furnace.ogg", }
  },
  resistances =
  {
    {
      type = "fire",
      percent = 80
    },
    {
      type = "explosion",
      percent = 30
    }
  },
  collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
  selection_box = {{-0.8, -1}, {0.8, 1}},
  crafting_categories = {"smelting"},
  result_inventory_size = 2,
  energy_usage = "180kW",
  crafting_speed = 1,
  source_inventory_size = 2,
  energy_source =
  {
    type = "burner",
    effectivity = 2,
    fuel_inventory_size = 2,
    emissions = 0.01,
    smoke =
    {
      {
        name = "smoke",
        deviation = {0.1, 0.1},
        frequency = 0.5,
        position = {0, 0},
        starting_vertical_speed = 0.05
      }
    }
  },
  animation =
  {
    filename = "__increments__/graphics/entity/stone-furnace-fuel.png",
    priority = "extra-high",
    width = 81,
    height = 64,
    frame_count = 1,
    shift = {0.5, 0.05 }
  },
  working_visualisations =
  {
    {
      north_position = {0.0, 0.0},
      east_position = {0.0, 0.0},
      south_position = {0.0, 0.0},
      west_position = {0.0, 0.0},
      animation =
      {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
        priority = "extra-high",
        width = 23,
        height = 27,
        frame_count = 12,
        shift = { 0.078125, 0.5234375}
      },
      light = {intensity = 1, size = 1}
    }
  },
  fast_replaceable_group = "furnace"
},

--ITEM
{
  type = "item",
  name = "stone-furnace-fuel",
  icon = "__increments__/graphics/icons/stone-furnace-fuel.png",
  flags = {"goes-to-quickbar"},
  subgroup = "smelting-machine",
  order = "a[stone-furnace]",
  place_result = "stone-furnace-fuel",
  stack_size = 50
},

--RECIPE
{
  type = "recipe",
  energy_required = "1",
  name = "stone-furnace-fuel",
  enabled = "false",
  ingredients =
  {
	{"stone-furnace", 1},
    {"iron-chest", 1}
  },
  result = "stone-furnace-fuel",
},

--TECHNOLOGY
{
  type = "technology",
  name = "stone-furnace-fuel",
  icon = "__increments__/graphics/technology/stone-furnace-fuel.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "stone-furnace-fuel"
    }
  },
  unit =
  {
    count = 20,
    ingredients = {{"science-pack-1", 1}},
    time = 5
  }
}
		
})