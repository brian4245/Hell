// Contador
spawn_timer += 1;

// Cada 3 segundos, crear enemigos
if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;

    // Cantidad aleatoria de enemigos (ejemplo entre 1 y 5)
    var count = irandom_range(1, 5);

    for (var i = 0; i < count; i++) {
        var side = irandom(3); // 0=izquierda, 1=derecha, 2=arriba, 3=abajo
        var ex, ey;

        switch (side) {
            case 0: // izquierda
                ex = 0;
                ey = irandom(room_height);
                break;
            case 1: // derecha
                ex = room_width;
                ey = irandom(room_height);
                break;
            case 2: // arriba
                ex = irandom(room_width);
                ey = 0;
                break;
            case 3: // abajo
                ex = irandom(room_width);
                ey = room_height;
                break;
        }

        // Crear enemigo en el borde elegido
        instance_create_layer(ex, ey, "Instances", objChef);
    }
}





