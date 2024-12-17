// Checa se o coelho pode mover para a direção desejada, verificando obstáculos
if (direction == 0 && !place_meeting(x, y - speed, obj_obstaculo)) {
    y -= speed;  // Cima
} else if (direction == 1 && !place_meeting(x + speed, y, obj_obstaculo)) {
    x += speed;  // Direita
} else if (direction == 2 && !place_meeting(x, y + speed, obj_obstaculo)) {
    y += speed;  // Baixo
} else if (direction == 3 && !place_meeting(x - speed, y, obj_obstaculo)) {
    x -= speed;  // Esquerda
}

// Verifica se a instância de `obj_rabbitF` existe antes de verificar a colisão
if (instance_exists(obj_rabbitF) && place_meeting(x, y, obj_rabbitF)) {
    show_message("O coelho chegou à coelha!");

    // Destruir o coelho ou desativar sua movimentação após alcançar a coelha
    instance_destroy();  // Destrói o coelho (opcional)
}
