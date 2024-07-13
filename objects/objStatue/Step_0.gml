// Проверка наличия игрока рядом
if (distance_to_object(objPinky) < 32) {
    if (keyboard_check_pressed(vk_enter)) {
        // Убедитесь, что объект создаётся один раз
        if (!instance_exists(objMessageBox)) {
            // Создаём objMessageBox над головой статуи
            var message_box = instance_create_layer(x, y - sprite_height - 10, "Instances", objMessageBox);
            message_box.depth = -10; // Устанавливаем глубину для того, чтобы он отображался перед статуей

            // Устанавливаем положение сообщения с проверками границ экрана
            message_box.box_width = 200; // Ширина диалоговой рамки
            message_box.box_height = 50; // Высота диалоговой рамки

            message_box.x = clamp(x, message_box.box_width / 2, room_width - message_box.box_width / 2);
            message_box.y = clamp(y - sprite_height - 10, message_box.box_height / 2, room_height - message_box.box_height / 2);
        }
    }
}
