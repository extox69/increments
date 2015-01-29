data:extend({
--ITEM
{
  type = "mining-tool",
  name = "jack-hammer",
  icon = "__increments__/graphics/icons/jack-hammer.png",
  flags = {"goes-to-main-inventory"},
  action =
  {
    type="direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        type = "damage",
        damage = { amount = 40 , type = "physical"}
      }
    }
  },
  durability = 7000,
  subgroup = "tool",
  order = "a[mining]-c[jack-hammer]",
  speed = 20,
  stack_size = 20
},
  
--RECIPE
{
  type = "recipe",
  name = "jack-hammer",
  category = "crafting-with-fluid",
  enabled = "false",
  ingredients =
  {
    {"steel-plate", 10},
    {"steel-gear-wheel", 2},
	{type="fluid", name="lubricant", amount=20}
  },
  result = "jack-hammer"
},

--TECHNOLOGY
{
  type = "technology",
  name = "jack-hammer",
  icon = "__increments__/graphics/technology/jack-hammer.png",
  prerequisites = {"steel-processing-2", "oil-processing"},
  effects =
  {
    {
        type = "unlock-recipe",
        recipe = "jack-hammer"
    }
  },
  unit =
  {
    count = 50,
    ingredients =
    {
      {"science-pack-1", 2},
      {"science-pack-2", 2},
    },
    time = 25
  },
  order = "c-a"
}

})
