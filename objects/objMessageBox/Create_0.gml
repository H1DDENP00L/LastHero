dialogue_texts = [
    "Greetings, stranger.",
    "You have been summoned into this cruel world to rescue the princess.",
    "Progress through levels, jumping on platforms and battling monsters, to eventually reach the princess and save her.",
    "I am opening the portal for you... Good luck!"
];
current_dialogue_index = 0;
dialogue_text = dialogue_texts[current_dialogue_index];

depth = -10; // Устанавливаем глубину, чтобы объект отображался перед статуей

// Устанавливаем размеры рамки
box_width = 200;
box_height = 50;

// Устанавливаем шрифт и размеры текста
font = fntDialogue;
