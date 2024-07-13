if (visible && mouse_check_button_pressed(mb_left)) {
    if (distance_to_object(objPinky) < 32) {
        // Устанавливаем координаты для новой комнаты
        global.player_start_x = 100; // Укажите нужное значение X
        global.player_start_y = 200; // Укажите нужное значение Y
        
        // Переход в новую комнату
        room_goto(room_Three);
    }
}
