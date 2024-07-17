switch (state) {
    case "idle":
        // Ожидание первого попадания
        if (place_meeting(x, y, objProjectile)) {
            state = "activate";
            sprite_index = sprGolemBossActivate;
            image_speed = 0.7; // Скорость анимации активации
        }
        break;

    case "activate":
        if (image_index >= image_number - 1) {
            activation_count += 1;
            if (activation_count >= 2) {
                state = "chase";
                sprite_index = sprGolemBossIddle; // Устанавливаем спрайт преследования
                image_speed = 0;
            } else {
                image_index = 0; // Перезапуск анимации активации
            }
        }
        break;

    case "chase":
        // Преследование игрока
        var player = instance_find(objPinky, 0);
        if (player != noone) {
            var angle = point_direction(x, y, player.x, player.y);
            motion_set(angle, move_speed);

            // Изменение направления спрайта
            if (x > player.x) {
                image_xscale = -1; // Зеркальное отображение при движении влево
            } else {
                image_xscale = 1; // Обычное отображение при движении вправо
            }
        }

        // Таймер атаки
        attack_timer += 1;
        if (attack_timer >= room_speed * 5) { // Атака раз в 5 секунд
            state = "attack";
            sprite_index = sprGolemBossAttack;
            image_index = 0;
            image_speed = 0.5;
            attack_timer = 0;
        }
        break;

    case "attack":
        if (image_index >= image_number - 1) {
            // Создание снаряда
            var player = instance_find(objPinky, 0);
            if (player != noone) {
                var proj = instance_create_layer(x, y, "Instances", objGolemProjectile);
                proj.direction = point_direction(x, y, player.x, player.y);
                proj.speed = 6;
            }
            state = "chase";
            sprite_index = sprGolemBossIddle;
            image_speed = 0;
        }
        break;

    case "death":
        if (image_index >= image_number - 1) {
            instance_destroy();
        }
        break;
}

// Столкновение с игроком
if (place_meeting(x, y, objPinky)) {
    room_restart();
}

// Проверка здоровья
if (boss_health <= 0 && state != "death") {
    state = "death";
    sprite_index = sprGolemBossDeath;
    image_index = 0;
    image_speed = 0.5;
}

// Создание полоски здоровья над боссом
if (!instance_exists(objBossHealthBar)) {
    instance_create_layer(x, y - 30, "Instances", objBossHealthBar);
}

