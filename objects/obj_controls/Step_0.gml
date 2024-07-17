/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

x = cam_x + room_width / 2; // Смещение от левого края экрана
y = cam_y + room_height - 200; // Смещение от верхнего края экрана
