/// @description Вставьте описание здесь
// Задание начальных параметров


image_speed = 0.2; // Скорость анимации
move_speed = 2; // Скорость движения
direction = irandom(359); // Случайное начальное направление
following = false; // Флаг, указывающий на преследование игрока



// Флаг состояния смерти
is_dead = false;

// Задание здоровья
health = 3; // Полное здоровье

// Создаем полоску здоровья и привязываем ее к мыши
var health_bar = instance_create_layer(x, y - 20, "Instances", objBatHealthBar);
health_bar.owner = id; // Привязываем полоску здоровья к текущей мыши
health_bar.health = health; // Устанавливаем здоровье для полоски
