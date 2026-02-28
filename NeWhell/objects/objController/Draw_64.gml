// Texto del puntaje
var txt = "Puntaje: " + string(global.score);

// Posición en esquina inferior derecha
var margin = 20;
var xpos = display_get_gui_width() - margin;
var ypos = display_get_gui_height() - margin;

// Alinear texto a la derecha y abajo
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(xpos, ypos, txt);



