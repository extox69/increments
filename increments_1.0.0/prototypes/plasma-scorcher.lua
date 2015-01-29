data:extend({
--ITEM
{
  type = "gun",
  name = "plasma-scorcher",
  icon = "__increments__/graphics/items/plasma-scorcher.png",
  flags = {"goes-to-main-inventory"},
  order = "c-a",
  attack_parameters =
  {
	ammo_category = "ps1200",
	damage_modifier = 1.5,
	cooldown = 60,
	movement_slow_down_factor = 0.2,
	projectile_creation_distance = 1,
	range = 30,
	sound =
	{
	  {
		filename = "__increments__/sound/player/laser-atk3.wav",
		volume = 0.5
	  }
	}
  },
  stack_size = 1
}
	
})
