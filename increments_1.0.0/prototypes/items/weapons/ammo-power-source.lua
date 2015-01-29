data:extend({
--ITEM
{
  type = "ammo",
  name = "ps1200",
  icon = "__increments__/graphics/items/ps1200.png",
  flags = {"goes-to-main-inventory"},
  ammo_type =
  {
	category = "ps1200",
	target_type = "direction",
	action =
	{
	  type = "direct",
	  action_delivery =
	  {
	    type = "projectile",
		projectile = "ps1200p",
		starting_speed = 1,
		direction_deviation = 0.2,
		range_deviation = 0.2,
		max_range = 30
	  }
	}
  },
  magazine_size = 200,
  order = "d-a",
  stack_size = 10
}

})
