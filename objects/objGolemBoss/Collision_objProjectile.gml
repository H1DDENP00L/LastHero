// Уменьшение здоровья босса
boss_health -= 1; // Уменьшаем здоровье на 10

// Уничтожение снаряда
with (other) {
    instance_destroy();
}

// Если босс в состоянии "idle", переключаемся в состояние "activate"
if (state == "idle") {
    state = "activate";
    sprite_index = sprGolemBossActivate;
    image_index = 0;
    image_speed = 0.7;
}
