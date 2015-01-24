var top_down_player_sprite_index = object_get_sprite(top_down_player);
var player_sprite_width = sprite_get_width(top_down_player_sprite_index);
var player_sprite_height = sprite_get_height(top_down_player_sprite_index);
var player_x = top_down_player.x;
var player_y = top_down_player.y;
var BULLET_SPEED = 15;
var default_x = 0;
var default_y = -5;

if top_down_player.hspeed != 0 || top_down_player.vspeed != 0
{
    bullet_x = player_x + sign(top_down_player.hspeed) * player_sprite_width * 0.5;
    bullet_y = player_y + sign(top_down_player.vspeed) * player_sprite_height * 0.5;
    bullet_id = instance_create(bullet_x, bullet_y, bullet);
    with (bullet_id)
    {
        hspeed = sign(top_down_player.hspeed) * BULLET_SPEED;
        vspeed = sign(top_down_player.vspeed) * BULLET_SPEED;
    }
    previous_x = top_down_player.hspeed;
    previous_y = top_down_player.vspeed;
} else
{
    bullet_x = player_x + sign(default_x) * player_sprite_width * 0.5;
    bullet_y = player_y + sign(default_y) * player_sprite_height * 0.5;
    bullet_id = instance_create(bullet_x, bullet_y, bullet);
    with (bullet_id)
    {
        hspeed = sign(default_x) * BULLET_SPEED;
        vspeed = sign(default_y) * BULLET_SPEED;
    }
}
