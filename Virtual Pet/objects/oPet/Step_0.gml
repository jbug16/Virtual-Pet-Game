// Health management
global.hp -= 0.05;
global.hp = clamp(global.hp, 0, 100);

if (global.hp <= 0) 
{
	var _ps = part_system_create(psExplosion);
	part_system_position(_ps, x+32, y+32);
	instance_destroy();
}