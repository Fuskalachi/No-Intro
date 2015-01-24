var BULLET_SPEED = 15;
var ray_direction = point_direction(top_down_player.x, top_down_player.y, 
                                    argument0, argument1)

var bullet_x = top_down_player.x;
var bullet_y = top_down_player.y;
bullet_id = instance_create(bullet_x, bullet_y, bullet);
with (bullet_id)
{
    speed = BULLET_SPEED;
    direction = ray_direction;
}
