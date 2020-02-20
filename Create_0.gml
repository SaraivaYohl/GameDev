/// @description gen level
// You can write your code in this editor
randomize()
rooms = 10
repeat(rooms)
{
	draw_box()
	with(ob_wall)
	{
		if place_meeting(x,y,ob_wall)
		{
			instance_destroy()
		}
	}
}

