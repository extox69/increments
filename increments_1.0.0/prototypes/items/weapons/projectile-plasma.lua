data:extend({
--ITEM 
{
  type = "projectile",
  name = "ps1200p",
  flags = {"not-on-map"},
  acceleration = 0,
  action =
  {
	type = "direct",
	action_delivery =
	{
	  type = "instant",
	  target_effects =
	  {
	    {
		  type = "create-entity",
		  entity_name = "plasma-explosion1200"
		},
		{
		  type = "nested-result",
		  action =
		  {
		    {
			  type = "area",
			  perimeter = 2,
			  action_delivery =
			  {
			    type = "instant",
				target_effects =
				{
				  {
					type = "damage",
					damage = {amount = 2, type = "physical"}
				  },
				  {
				    type = "damage",
					damage = {amount = 2, type = "fire"}
				  },
				  {
				    type = "damage",
					damage = {amount = 2, type = "acid"}
				  }
				}
			  }
			},				
			{
			  type = "area",
			  perimeter = 3,
			  action_delivery =
			  {
			    type = "instant",
				target_effects =
				{
				  {
					type = "damage",
					damage = {amount = 2, type = "physical"}
				  },
				  {
					type = "damage",
					damage = {amount = 2, type = "fire"}
				  }
				}
			  }
			},				
			{
			  type = "area",
			  perimeter = 4,
			  action_delivery =
			  {
			    type = "instant",
				target_effects =
				{
				  {
					type = "damage",
					damage = {amount = 2, type = "physical"}
				  },
				  {
					type = "damage",
					damage = {amount = 2, type = "fire"}
				  }
				}
			  }
		    }
		  }
		}
	  }
	}
  },
  animation =
  {
	filename = "__increments__/graphics/entity/plasma-bullet.png",
	frame_count = 1,
	scale = 0.5,
	width = 10,
	height = 30,
	priority = "high"
  }
}
	
})