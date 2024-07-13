/// @description Вставьте описание здесь
var _cam_x = camera_get_view_x(view_camera[0]);

layer_x("parallax_background1", _cam_x * 0.9);
layer_x("parallax_background3", _cam_x * 0.8);
layer_x("parallax_background4", _cam_x * 0.4);
