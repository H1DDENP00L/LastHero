/// @description Обновление позиции меню и обработка нажатий на кнопки
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

x = cam_x + (camera_get_view_width(view_camera[0]) / 2);
y = cam_y + (camera_get_view_height(view_camera[0]) / 2);

// Проверка нажатий на кнопки
var rect_width = 300;
var rect_height = 60;

// Координаты верхней кнопки "Play"
var play_x1 = x - rect_width/2;
var play_y1 = y - rect_height/2 - 60;
var play_x2 = x + rect_width/2;
var play_y2 = y - rect_height/2 + 60;

if (mouse_check_button_pressed(mb_left)) {
    var mouse_pos_x = device_mouse_x_to_gui(0);
    var mouse_pos_y = device_mouse_y_to_gui(0);
    
    // Кнопка Play
    if (mouse_pos_x > play_x1 && mouse_pos_x < play_x2 && mouse_pos_y > play_y1 && mouse_pos_y < play_y2) {
        // Перейти в игровую руму (например, room_game)
        room_goto(room_Start);
    }
    
    // Кнопка Controls (например, покажем сообщение)
    if (mouse_pos_x > play_x1 && mouse_pos_x < play_x2 && mouse_pos_y > (y - rect_height/2) && mouse_pos_y < (y + rect_height/2)) {
        // Показать сообщение с управлением
        show_message("Controls: Use arrow keys to move, space to shoot.");
    }
    
    // Кнопка Quit
    if (mouse_pos_x > play_x1 && mouse_pos_x < play_x2 && mouse_pos_y > (y + 60) && mouse_pos_y < (y + rect_height/2 + 60)) {
        // Закрыть игру
        game_end();
    }
}
