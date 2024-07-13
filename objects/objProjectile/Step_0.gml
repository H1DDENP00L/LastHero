/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
// Уничтожение снаряда при столкновении с твердыми объектами
if (place_meeting(x, y, objGround) or place_meeting(x, y, objPlatform)) {
    instance_destroy();
}

// Уничтожение снаряда при выходе за пределы экрана
if (x < 0 or x > room_width or y < 0 or y > room_height) {
    instance_destroy();
}
