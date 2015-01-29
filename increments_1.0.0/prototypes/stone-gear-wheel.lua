data:extend({
--ITEM
{
  type = "item",
  name = "stone-gear-wheel",
  icon = "__increments__/graphics/icons/stone-gear-wheel.png",
  flags = {"goes-to-main-inventory"},
  subgroup = "intermediate-product",
  order = "a[iron-gear-wheel]",
  stack_size = 100
},

--RECIPE
{
  type = "recipe",
  name = "stone-gear-wheel",
  ingredients = {{"stone", 2}},
  result = "stone-gear-wheel"
}
 
})
