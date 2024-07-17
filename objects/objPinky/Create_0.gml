// Инициализация переменных здоровья
if (!variable_global_exists("player_start_x")) {
    global.player_start_x = x;
}
if (!variable_global_exists("player_start_y")) {
    global.player_start_y = y;
}
player_health = 5;
health = 5;// Максимальное здоровье игрока

// Переменная таймера задержки
damage_cooldown = 60; // Количество кадров до следующего получения урона (1 секунда при 60 FPS)
damage_timer = 0; // Текущий таймер
