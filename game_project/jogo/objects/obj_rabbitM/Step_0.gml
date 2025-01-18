// Movimento só ocorre se 'em_movimento' for verdadeiro
if (em_movimento) {
    // Movimenta o coelho com base na direção e velocidade
    x += passo_x * velocidade;
    y += passo_y * velocidade;

    // Calcula o centro do coelho
    var centro_coelho_x = x + sprite_width / 2;
    var centro_coelho_y = y + sprite_height / 2;

    // Checa se o centro do coelho está sobre uma seta
    var seta_encontrada = instance_place(centro_coelho_x, centro_coelho_y, obj_setaDireita) ||
                          instance_place(centro_coelho_x, centro_coelho_y, obj_setaEsquerda) ||
                          instance_place(centro_coelho_x, centro_coelho_y, obj_setaCima) ||
                          instance_place(centro_coelho_x, centro_coelho_y, obj_setaBaixo);

    if (seta_encontrada) {
        // Muda a direção do coelho com base na seta encontrada
        if (instance_place(centro_coelho_x, centro_coelho_y, obj_setaDireita)) {
            passo_x = tamanho_bloco;
            passo_y = 0;
        } 
        else if (instance_place(centro_coelho_x, centro_coelho_y, obj_setaEsquerda)) {
            passo_x = -tamanho_bloco;
            passo_y = 0;
        } 
        else if (instance_place(centro_coelho_x, centro_coelho_y, obj_setaCima)) {
            passo_x = 0;
            passo_y = -tamanho_bloco;
        } 
        else if (instance_place(centro_coelho_x, centro_coelho_y, obj_setaBaixo)) {
            passo_x = 0;
            passo_y = tamanho_bloco;
        }

        // Remove a seta ocupada pelo coelho
        with (seta_encontrada) {
            instance_destroy();
        }
    }
}
