/// @description Отрисовка полоски здоровья босса
function draw_boss_health() {
    draw_sprite(sprite_index, 0, x, y - 130); // Отрисовываем хп-бар над головой босса
}

draw_boss_health();
