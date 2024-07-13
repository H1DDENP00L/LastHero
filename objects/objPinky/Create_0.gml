/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (!variable_global_exists("player_start_x")) {
    global.player_start_x = x;
}
if (!variable_global_exists("player_start_y")) {
    global.player_start_y = y;
}

/// @description Вставьте описание здесь
// Переменная таймера задержки
damage_cooldown = 60; // Количество кадров до следующего получения урона (1 секунда при 60 FPS)
damage_timer = 0; // Текущий таймер
