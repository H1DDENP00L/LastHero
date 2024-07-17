// Уменьшение здоровья игрока
if (instance_exists(other) && other.player_health > 0) {
    other.player_health -= 4;
    if (other.player_health <= 0) {
        room_restart();
    }
}

// Уменьшение количества сердечек в objHealthBar
var health_bar = instance_find(objHealthBar, 0);
if (health_bar != noone) {
    health_bar.current_health -= 4;
}

// Уничтожение снаряда
instance_destroy();
