/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
// objPlatformSpawner: Step Event
var player_y = objPlayer.y;

// Создание новых платформ выше текущего положения игрока
if (player_y < spawn_height - 200) {
    var new_x = irandom(room_width - 32); // Случайное положение по горизонтали
    var new_y = spawn_height - irandom_range(64, 128); // Случайное положение по вертикали
    instance_create_layer(new_x, new_y, "Instances", objPlatform);
    spawn_height = new_y; // Обновляем высоту для следующей платформы
}
