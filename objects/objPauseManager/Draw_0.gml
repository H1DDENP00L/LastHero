if (is_paused) {
    draw_set_font(font_pause_large); // Убедитесь, что у вас есть подходящий шрифт
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Изменим цвет текста на черный
    draw_set_color(c_white);
    
    draw_text(room_width / 2, room_height / 2 - 40, "GAME IS PAUSED");
    
    // Рисуем кнопки
    draw_set_font(font_pause_large);
    
    // Continue
    draw_rectangle(button_continue.x - button_continue.width / 2, button_continue.y - button_continue.height / 2, 
                   button_continue.x + button_continue.width / 2, button_continue.y + button_continue.height / 2, false);
    draw_text(button_continue.x, button_continue.y, button_continue.text);
    
    // Reset Level
    draw_rectangle(button_reset.x - button_reset.width / 2, button_reset.y - button_reset.height / 2, 
                   button_reset.x + button_reset.width / 2, button_reset.y + button_reset.height / 2, false);
    draw_text(button_reset.x, button_reset.y, button_reset.text);
    
    // Quit Game
    draw_rectangle(button_quit.x - button_quit.width / 2, button_quit.y - button_quit.height / 2, 
                   button_quit.x + button_quit.width / 2, button_quit.y + button_quit.height / 2, false);
    draw_text(button_quit.x, button_quit.y, button_quit.text);
}
