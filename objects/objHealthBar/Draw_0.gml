/// @description Отрисовка полоски здоровья
function draw_health() {
    var x_offset = 10;
    var y_offset = 10;
    var spacing = 20; // Расстояние между сердечками
    
    for (var i = 0; i < current_health; i++) {
        if (i < health) {
            draw_sprite(sprHealthPoint, 0, x + x_offset + i * spacing, y + y_offset);
        } else {
            draw_sprite(sprVoidHealthPoint, 0, x + x_offset + i * spacing, y + y_offset);
        }
    }
}
draw_health();
