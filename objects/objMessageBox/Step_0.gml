if (keyboard_check_pressed(vk_enter)) {
    current_dialogue_index++;
    if (current_dialogue_index < array_length(dialogue_texts)) {
        dialogue_text = dialogue_texts[current_dialogue_index];
    } else {
        // Если диалоги закончились, делаем портал видимым
        with (objPortal) {
            visible = true;
        }
        instance_destroy();
    }
}
