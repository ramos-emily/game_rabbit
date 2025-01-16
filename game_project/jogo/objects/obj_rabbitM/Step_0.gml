// Evento Step
var tamanho_bloco = 2;  // Definindo o tamanho do bloco (ajustado para 15px)
var velocidade = 0.1;    // A velocidade de movimento, quanto menor, mais lento o movimento

// Verifica a colisão com as setas para mudar a direção
if (place_meeting(x + tamanho_bloco, y, obj_setaDireita)) {
    passo_x = tamanho_bloco;  // Muda para a direita
    passo_y = 0;               // Não se move verticalmente
} 
else if (place_meeting(x - tamanho_bloco, y, obj_setaEsquerda)) {
    passo_x = -tamanho_bloco; // Muda para a esquerda
    passo_y = 0;               // Não se move verticalmente
} 
else if (place_meeting(x, y - tamanho_bloco, obj_setaCima)) {
    passo_x = 0;               // Não se move horizontalmente
    passo_y = -tamanho_bloco;  // Muda para cima
}
else if (place_meeting(x, y + tamanho_bloco, obj_setaBaixo)) {
    passo_x = 0;               // Não se move horizontalmente
    passo_y = tamanho_bloco;   // Muda para baixo
}

// Empurra o coelho até encontrar um obstáculo ou o limite da tela
if (passo_x != 0 || passo_y != 0) {
    // Movimenta o coelho com a velocidade ajustada
    x += passo_x * velocidade;  // Move o coelho na direção x
    y += passo_y * velocidade;  // Move o coelho na direção y
}

// Limita a área de movimento (gramado)
if (x < limite_esquerda) {
    x = limite_esquerda; // Coelho não passa do limite esquerdo
}
if (x > limite_direita) {
    x = limite_direita; // Coelho não passa do limite direito
}
if (y < limite_superior) {
    y = limite_superior; // Coelho não passa do limite superior
}
if (y > limite_inferior) {
    y = limite_inferior; // Coelho não passa do limite inferior
}
