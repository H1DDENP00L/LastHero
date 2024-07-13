if (keyboard_check_pressed(vk_escape)) {
    is_paused = !is_paused;
    
    if (is_paused) {
        // Приостановить все объекты
        instance_deactivate_all(true);
        instance_activate_object(self); // Активируем только этот объект для обработки паузы
    } else {
        // Возобновить все объекты
        instance_activate_all();
    }
}

if (is_paused) {
    // Обработка нажатий на кнопки
    if (mouse_check_button_pressed(mb_left)) {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);
        
        // Проверка нажатия на кнопку "Continue"
        if (mx > button_continue.x - button_continue.width / 2 && mx < button_continue.x + button_continue.width / 2 &&
            my > button_continue.y - button_continue.height / 2 && my < button_continue.y + button_continue.height / 2) {
            is_paused = false;
            instance_activate_all();
        }
        
        // Проверка нажатия на кнопку "Reset Level"
        if (mx > button_reset.x - button_reset.width / 2 && mx < button_reset.x + button_reset.width / 2 &&
            my > button_reset.y - button_reset.height / 2 && my < button_reset.y + button_reset.height / 2) {
            room_restart();
        }
        
        // Проверка нажатия на кнопку "Quit Game"
        if (mx > button_quit.x - button_quit.width / 2 && mx < button_quit.x + button_quit.width / 2 &&
            my > button_quit.y - button_quit.height / 2 && my < button_quit.y + button_quit.height / 2) {
            game_end();
        }
    }
}
