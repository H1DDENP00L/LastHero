// Отрисовываем спрайт здоровья
if (instance_exists(owner)) {
    x = owner.x + 30;
    y = owner.y - 50; // Позиция над мышью
    draw_sprite(sprBatEnemyHealth, health - 1, x, y);
}

