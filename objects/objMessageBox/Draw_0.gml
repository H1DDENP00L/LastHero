draw_self(); // Рисуем спрайт объекта, если он есть

// Устанавливаем шрифт и выравнивание
draw_set_font(font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Рисуем текст внутри рамки с переносом
var margin = 11; // Отступ от края рамки
var text_y_offset = 100; // Смещение текста по Y
draw_text_ext(x - box_width / 2 + margin, y - box_height / 2 + margin + text_y_offset, dialogue_text, -1, box_width - 2 * margin);
