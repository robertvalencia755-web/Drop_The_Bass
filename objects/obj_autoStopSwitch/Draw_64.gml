draw_self();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (position_meeting(_mx, _my, id)) {
    var _padding = 8;
    var _textW = string_width(text);
    var _textH = string_height(text);
        
    // Choose where the center of the tooltip should be (e.g. right above the mouse cursor)
    var _boxCenterX = _mx;
    var _boxCenterY = _my - 30;
        
    var _halfW = (_textW / 2) + _padding;
    var _halfH = (_textH / 2) + _padding;
        
    // 1. Draw Centered Dark Box
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(_boxCenterX - _halfW, _boxCenterY - _halfH, _boxCenterX + _halfW, _boxCenterY +
    _halfH, false);
        
    // 2. Draw Centered Text
    draw_set_alpha(1.0);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(_boxCenterX, _boxCenterY, text);
        
    // 3. Reset alignments back to standard defaults
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
 }