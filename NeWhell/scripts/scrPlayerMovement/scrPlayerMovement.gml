
function scrPlayerMovement(){
    // Si el jugador está inmovilizado, no puede moverse
    if (!can_move) {
        // Reducir el temporizador
        stun_timer -= 1;

        // Si presiona espacio mientras está inmovilizado
        if (keyboard_check_pressed(vk_space)) {
            with (objChef) {
                instance_destroy(); // eliminar al enemigo
            }
        }

        // Cuando el tiempo se acaba, recuperar movimiento
        if (stun_timer <= 0) {
            can_move = true;
        }

        exit; // salir de la función, no mover al jugador
    }

    // Movimiento normal
    var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (hor != 0 || ver != 0) {
        var dir = point_direction(0,0,hor, ver);
        x += lengthdir_x(1, dir);
        y += lengthdir_y(1, dir);

        action = "Walk";
        scrCharLookAt(dir);
    } else {
        action = "Idle";
    }
}




