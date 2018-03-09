// Checks Keyboard For User Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
jump = keyboard_check_pressed(vk_space);

// Calculates Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;


// Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
		hsp = 0;
}

x = x + hsp;

// Verical Collison
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
		vsp = 0;
}

y = y + vsp;


// Jumping
if(place_meeting(x,y+1,oWall)) and (jump)
{
	vsp = -7	
}
