/// @description Обновление состояния полоски здоровья босса
if (instance_exists(objGolemBoss)) {
    var boss = instance_find(objGolemBoss, 0);
    boss_health = boss.boss_health; // Получаем здоровье босса
    
    // Обновление спрайта в зависимости от здоровья
    if (boss_health > 75) {
        sprite_index = sprBossHp100;
    } else if (boss_health > 50) {
        sprite_index = sprBossHp75;
    } else if (boss_health > 25) {
        sprite_index = sprBossHp50;
    } else if (boss_health > 0) {
        sprite_index = sprBossHp25;
    } else {
        sprite_index = sprBossHp0;
		
    }
    
    // Следование за боссом
    x = boss.x;
    y = boss.y - 30; // Отступ выше босса
}else {
    // Уничтожение полоски здоровья, если босса нет
    instance_destroy();
}
