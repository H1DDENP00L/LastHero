/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
// При столкновении с снарядом
if (!is_dead) {
    is_dead = true;
    image_index = 0; // Сброс анимации на начало
    image_speed = 0.1; // Скорость анимации смерти
    move_speed = 0; // Остановка движения
}


if (place_meeting(x, y, objProjectile)) {
    var health_bar = instance_find(objBatHealthBar, 0);
    if (health_bar != noone && health_bar.owner == id) {
        health_bar.health -= 1; // Уменьшаем здоровье
        if (health_bar.health <= 0) {
            image_index = 0; // Сброс анимации
            image_speed = 0.1;
            move_speed = 0; // Остановка движения
            instance_destroy();
        }
    } else {
        show_debug_message("Health bar not found or does not match!"); // Для отладки
    }
}
