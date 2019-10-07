/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,ob_Cherryfly) or place_meeting(x,y,ob_Ladybug) or place_meeting(x,y,ob_Freebee)
{
	with(ob_Ladybug)
	{
		global.ladybug_hp -= 20
		if global.ladybug_hp = 0
		{
			instance_destroy()
		}
	}
	instance_destroy()
}
