// Проверка текущего состояния здоровья и обновление спрайта
for (var i = 0; i < health; i++) {
    draw_sprite(sprHealthPoint, 0, x + i * 20, y);
}
for (var i = health; i < 5; i++) {
    draw_sprite(sprVoidHealthPoint, 0, x + i * 20, y);
}
