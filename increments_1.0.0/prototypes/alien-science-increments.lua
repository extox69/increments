data:extend({
--RECIPE
{ 
  type = "recipe",
  name = "alien-science-increments",
  enabled = "false",
  energy_required = 5,
  ingredients =
  {
    {"science-pack-1", 100},
	{"science-pack-2", 50},
	{"science-pack-3", 10}
  },
  result = "alien-science-pack"
},

--TECHNOLOGY
{
  type = "technology",
  name = "alien-technology-2",
  icon = "__base__/graphics/technology/alien-technology.png",
  effects =
  {
    {
	  type = "unlock-recipe",
	  recipe = "alien-science-increments"
	}
  },
  prerequisites = {"alien-technology"},
  unit =
  {
	count = 300,
	ingredients =
	{
	  {"science-pack-1", 2},
	  {"science-pack-2", 2},
	  {"science-pack-3", 2}
	},
    time = 30
  },
  order = "e-f"
}

})