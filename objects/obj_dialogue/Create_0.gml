// Dynamic GUI resolution sizing based on GUI dimensions
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _scale_x = _gui_w / 640;
var _scale_y = _gui_h / 360;

// Proportional padding and box height
var _margin_x = 20 * _scale_x;
var _margin_bottom = 20 * _scale_y;
var _box_height = 80 * _scale_y;

x1Target = _margin_x;
x2Target = _gui_w - _margin_x;
y1 = _gui_h - _box_height - _margin_bottom;
y2 = _gui_h - _margin_bottom;

// Start animation from horizontal center
x1 = _gui_w / 2;
x2 = _gui_w / 2;

lerpProgress = 0;
textProgress = 0;

textSpeed = 0.25;

responseSelected = 0;