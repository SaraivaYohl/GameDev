/// @description Insert description here
// You can write your code in this editor
//if keyboard_check_pressed(ord("Z"))
switch(object_exists(oPlayer))
{
	case state_idle:
	if keyboard_check(ord("A")) and state_idle = true and cooldown_on = false
	{
		instance_create_depth(oPlayer.x-50,y,0,oPunch)
		alarm[0] = room_speed * 0.5
		alarm[1] = room_speed * 1
		cooldown_on = true
		state_fight = true
		state_idle = false
		current_combo = 1
	}
	if keyboard_check(ord("D")) and state_idle = true and cooldown_on = false
	{
		instance_create_depth(oPlayer.x+50,y,0,oPunch)
		alarm[0] = room_speed * 0.5
		alarm[1] = room_speed * 1
		cooldown_on = true
		state_fight = true
		state_idle = false
		current_combo = 1
	}
	if keyboard_check(vk_left) and state_idle = true
	{
		oPlayer.x = x - 10
	}
	if keyboard_check(vk_up) and state_idle = true
	{
		oPlayer.y = y - 10
	}
	if keyboard_check(vk_down) and state_idle = true
	{
		oPlayer.y = y + 10
	}
	if keyboard_check(vk_right) and state_idle = true
	{
	oPlayer.x = x + 10
	}
	break;
	case state_fight:
	if keyboard_check_pressed(vk_right) and state_fight = true and cooldown_on = false and current_combo = 1
	{
		x = oPlayer.x + 10
		instance_create_depth(oPlayer.x+50,y,0,oPunch2)
		alarm[0] = room_speed * 0.5
		alarm[1] = room_speed * 1
		cooldown_on = true
		state_idle = false
		current_combo = 2
	}
		if keyboard_check_pressed(vk_right)  and cooldown_on = false and current_combo = 2 
		{
			instance_create_depth(oPlayer.x+50,y,0,oPunch3) 
			alarm[1] = room_speed * 0.5
			cooldown_on = true 
			state_idle = false
			current_combo = 3
		}
	if keyboard_check_pressed(vk_left) and state_fight = true and cooldown_on = false and current_combo = 1
	{
		x = oPlayer.x - 10
		instance_create_depth(oPlayer.x-50,y,0,oPunch2) 
		alarm[0] = room_speed * 0.5
		alarm[1] = room_speed * 1
		cooldown_on = true
		state_idle = false
		current_combo = 2
	}
		if keyboard_check_pressed(vk_left) and cooldown_on = false and current_combo = 2
		{
			instance_create_depth(oPlayer.x-50,y,0,oPunch3) 
			alarm[1] = room_speed * 0.5
			cooldown_on = true 
			state_idle = false
			current_combo = 3
		}
	break;
	//case state_finisher:
	//break;
}
// if press enter then punch, stop for 1 second(alarm)
// if punch during alarm, punch2, stop for 1 second(alarm)
// if punch during alarm and after punch2,punch3 also maybe alarm or smt
