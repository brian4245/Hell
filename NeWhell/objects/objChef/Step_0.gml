// Posición del jugador
var px = objPlayer.x;
var py = objPlayer.y;

// Dirección hacia el jugador
var dir = point_direction(x, y, px, py);

// Movimiento hacia el jugador
x += lengthdir_x(spd / room_speed, dir);
y += lengthdir_y(spd / room_speed, dir);

// Opcional: girar sprite hacia el jugador
image_angle = dir;





