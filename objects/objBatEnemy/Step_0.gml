
// хп
if (!instance_exists(objBatHealthBar)) {
    var health_bar = instance_create_layer(x, y - 20, "Instances", objBatHealthBar);
    health_bar.health = 3; // Устанавливаем полное здоровье
    health_bar.owner = id; // Сохраняем ссылку на мышь
}


// Проверка расстояния до игрока
if (distance_to_object(objPinky) < 500) {
    following = true;
} else {
    following = false;
}

// Движение и изменение направления
if (following) {
    // Если преследуем игрока
    direction = point_direction(x, y, objPinky.x, objPinky.y);
} else {
    // Случайное движение
    if (irandom(100) < 2) { // Изменение направления случайным образом
        direction = irandom(359);
    }
}

// Перемещение в текущем направлении
var new_x = x + lengthdir_x(move_speed, direction);
var new_y = y + lengthdir_y(move_speed, direction);

// Проверка выхода за границы экрана и корректировка направления
if (new_x < 0 or new_x > room_width) {
    direction = 180 - direction;
}
if (new_y < 0 or new_y > room_height) {
    direction = 360 - direction;
}

// Применение нового положения
x += lengthdir_x(move_speed, direction);
y += lengthdir_y(move_speed, direction);



// Проверка на состояние смерти
// Проверка на состояние смерти
if (is_dead) {
    sprite_index = sprBatEnemyDeath;
    image_speed = 2; // Увеличение скорости анимации смерти до 8 кадров в секунду
    if (image_index >= image_number - 1) {
        instance_destroy(); // Уничтожение объекта после завершения анимации смерти
    }
}


/*
if (place_meeting(x, y, objProjectile)) {
    // Получаем ссылку на полоску здоровья
    var health_bar = instance_find(objBatHealthBar, 0);
    if (health_bar != noone && health_bar.owner == id) {
        health_bar.health -= 1; // Уменьшаем здоровье
        if (health_bar.health <= 0) {
            // Анимация смерти
            image_index = 0; // Сброс анимации
            image_speed = 0.1;
            move_speed = 0; // Остановка движения
            // Можно также добавить уничтожение объекта после анимации
            instance_destroy();
        }
    }
}




