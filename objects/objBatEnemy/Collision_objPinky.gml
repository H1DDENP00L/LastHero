/// @description Столкновение с игроком

if (objPinky.damage_timer <= 0) {
    var health_bar = instance_find(objHealthBar, 0);
    
    if (health_bar != noone) {
        show_debug_message("Health before damage: " + string(health_bar.current_health));
        health_bar.current_health -= 1;

        if (health_bar.current_health <= 0) {
            room_restart();
        } else {
            objPinky.damage_timer = objPinky.damage_cooldown;
        }
    } else {
        show_debug_message("Health bar not found!");
    }
}

if (!is_dead) {
    is_dead = true;
    image_index = 0; // Сброс анимации на начало
    image_speed = 0.1; // Скорость анимации смерти
}
