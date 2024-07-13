// objCamera: Step Event
var cam_x = objPlayer.x - view_wview[0] / 2;
var cam_y = objPlayer.y - view_hview[0] / 2;

if (cam_x < 0) {
    cam_x = 0;
} else if (cam_x > room_width - view_wview[0]) {
    cam_x = room_width - view_wview[0];
}

// Камера может двигаться только вверх
if (cam_y < 0) {
    cam_y = 0;
}

view_xview[0] = cam_x;
view_yview[0] = cam_y;
