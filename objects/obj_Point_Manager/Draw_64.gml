draw_text(20, 20, "Points: " + string(points) + "/" + string(goal));
//draw_text(20, 40, songTime);
//draw_text(20, 60, travelTime);

// Fade overlay
if (fadeAlpha > 0) {
    draw_set_alpha(fadeAlpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1.0);
}