// Переменные для гравитации и прыжка
var grav = 0.5;
var jump_speed = -10;
var max_fall_speed = 10;

// Переменные для скорости
if (!variable_instance_exists(id, "vspeed")) vspeed = 0;

// Проверка нажатия клавиш для передвижения
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
    x += 10;
    if (place_meeting(x, y + 1, objPlatform) or place_meeting(x, y + 1, objGround)) {
        sprite_index = sprPinkyRun;
    }
    image_xscale = 3;
} else if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
    x -= 10;
    if (place_meeting(x, y + 1, objPlatform) or place_meeting(x, y + 1, objGround)) {
        sprite_index = sprPinkyRun;
    }
    image_xscale = -3;
} else {
    if (place_meeting(x, y + 1, objPlatform) or place_meeting(x, y + 1, objGround)) {
        sprite_index = sprPinkyIdle;
    }
}

// Проверка нажатия клавиши для прыжка
if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"))) {
    if (place_meeting(x, y + 1, objPlatform) or place_meeting(x, y + 1, objGround)) {
        vspeed = jump_speed;
        sprite_index = sprPinkyJump;
    }
}

// Применение гравитации
if (!place_meeting(x, y + 1, objPlatform) and !place_meeting(x, y + 1, objGround)) {
    vspeed += grav;
    if (vspeed > max_fall_speed) {
        vspeed = max_fall_speed;
    }
} else {
    if (vspeed > 0) {
        vspeed = 0;
    }
    if (keyboard_check(ord("S"))) {
        y += 1; // Персонаж сваливается с платформы
    }
}

// Перемещение персонажа по вертикали
y += vspeed;

// Проверка на столкновение с платформой сверху и снизу
if (vspeed < 0) {
    while (place_meeting(x, y - 1, objPlatform) or place_meeting(x, y - 1, objGround)) {
        y += 1;
        vspeed = 0;
    }
} else {
    while (place_meeting(x, y, objPlatform) or place_meeting(x, y, objGround)) {
        y -= 1;
        vspeed = 0;
    }
}

// Ограничение движения персонажа краями экрана
if (x < 0) {
    x = 0;
} else if (x > room_width - sprite_width) {
    x = room_width - sprite_width;
}

if (y > room_height) {
    y = room_height - sprite_height; // Персонаж не будет проваливаться за нижнюю границу экрана
}

// Анимация прыжка
if (!place_meeting(x, y + 1, objPlatform) and !place_meeting(x, y + 1, objGround)) {
    sprite_index = sprPinkyJump;
}

// Проверка нажатия правой кнопки мыши
if (mouse_check_button_pressed(mb_right)) {
    // Смена спрайта на анимацию броска
    sprite_index = sprThrowing;
    image_speed = 0.1; // Скорость анимации, настройте по необходимости

    // Создание снаряда
    var projectile = instance_create_layer(x, y, "Instances", objProjectile);
    projectile.direction = point_direction(x, y, mouse_x, mouse_y);
}

// Возврат к обычному спрайту после завершения анимации броска
if (sprite_index == sprThrowing and image_index >= image_number - 1) {
    sprite_index = sprPinkyIdle; // или sprPinkyRun в зависимости от состояния
    image_speed = 1; // Возвращение нормальной скорости анимации
}

// Ваш текущий код передвижения и логики игрока

// Обновление таймера задержки получения урона
if (damage_timer > 0) {
    damage_timer -= 1;
}

// Проверка здоровья игрока
if (player_health <= 0) {
    room_restart();
}
