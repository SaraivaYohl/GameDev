/// @Was a bullet created?
// when bullet is created,alarm rings and has a cooldown
alarm[0] = room_speed * 0.05
instance_destroy()
if instance_create_layer(x,y-40,"Player_stuff",ob_Fang)
{	
	with(ob_Ladybug)
	{
		ladybug_hp = ladybug_hp - 1
		if ladybug_hp <= 0
		{
			instance_destroy();
		}
	}
}
