// Проверка на столкновение с игроком
if (place_meeting(x, y, objPinky)) {
    var player = instance_find(objPinky, 0);
    if (player != noone) {
        player.player_health -= 3;
        if (player.player_health <= 0) {
            room_restart();
        }
    }
    instance_destroy();
}

// Уничтожение снаряда при выходе за пределы экрана
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
