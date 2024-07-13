
/// @description Отрисовка главного меню
draw_self(); // Отрисуем сам объект

// Отрисовка черного прямоугольника
var rect_width = 300;
var rect_height = 400;

draw_set_color(c_black);
draw_rectangle(x - rect_width/2, y - rect_height/2, x + rect_width/2, y + rect_height/2, false);

// Отрисовка текста кнопок
draw_set_color(c_white);
draw_text(x, y - 60, "Play");
draw_text(x, y, "Controls");
draw_text(x, y + 60, "Quit");
