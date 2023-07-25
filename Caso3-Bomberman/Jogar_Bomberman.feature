Feature: Jogar Bomberman

  User story: Iniciar Jogo
    Como um jogador do Bomberman
    Eu desejo iniciar o jogo
    Para me divertir e desafiar minha habilidade

    	Scenario: Iniciar um novo jogo
      		Given que estou na tela inicial do jogo
      		When clico no botão "Novo Jogo"
      		Then o jogo deve ser iniciado
      		And eu devo ser direcionado para a primeira fase do jogo
     		And meu personagem deve começar com uma quantidade padrão de vidas e bombas

  User Story: Movimentar o Personagem
    Como um jogador do Bomberman
    Eu desejo movimentar meu personagem pelo cenário
    Para evitar obstáculos e alcançar meus objetivos

    	Scenario: Movimentar para cima
      		Given que estou jogando o Bomberman
      		And meu personagem está em uma posição inicial
      		When pressiono a tecla de seta "cima"
      		Then meu personagem deve se mover para cima no cenário

    	Scenario: Movimentar para baixo
      		Given que estou jogando o Bomberman
      		And meu personagem está em uma posição inicial
      		When pressiono a tecla de seta "baixo"
      		Then meu personagem deve se mover para baixo no cenário

    	Scenario: Movimentar para a esquerda
      		Given que estou jogando o Bomberman
      		And meu personagem está em uma posição inicial
      		When pressiono a tecla de seta "esquerda"
      		Then meu personagem deve se mover para a esquerda no cenário

    	Scenario: Movimentar para a direita
      		Given que estou jogando o Bomberman
      		And meu personagem está em uma posição inicial
      		When pressiono a tecla de seta "direita"
      		Then meu personagem deve se mover para a direita no cenário

  User story: Plantar Bombas
    Como um jogador do Bomberman
    Eu desejo plantar bombas no cenário
    Para destruir obstáculos e derrotar inimigos

    	Scenario: Plantar bomba com sucesso
      		Given que estou jogando o Bomberman
     		And meu personagem está em uma posição adequada
      		When pressiono a tecla de espaço para plantar uma bomba
      		Then uma bomba deve ser plantada na posição atual do meu personagem
      		And a bomba deve explodir após um determinado período de tempo

    	Scenario: Limite de bombas
      		Given que estou jogando o Bomberman
      		And meu personagem já plantou o número máximo de bombas permitido
      		When tento plantar uma nova bomba
      		Then a nova bomba não deve ser plantada
      		And nenhuma ação adicional deve ocorrer

  User story: Interagir com Power-ups
    Como um jogador do Bomberman
    Eu desejo interagir com power-ups especiais no jogo
    Para obter vantagens temporárias e melhorar minha jogabilidade

    	Scenario: Coletar power-up de velocidade
      		Given que estou jogando o Bomberman
      		And há um power-up de velocidade próximo ao meu personagem
      		When meu personagem se move em direção ao power-up
      		Then meu personagem deve coletar o power-up de velocidade
      		And a velocidade de movimentação do meu personagem deve aumentar temporariamente

    	Scenario: Coletar power-up de explosão
      		Given que estou jogando o Bomberman
      		And há um power-up de explosão próximo ao meu personagem
      		When meu personagem se move em direção ao power-up
      		Then meu personagem deve coletar o power-up de explosão
      		And o alcance das explosões das bombas do meu personagem deve aumentar temporariamente

    	Scenario: Coletar power-up de vidas extras
      		Given que estou jogando o Bomberman
      		And há um power-up de vidas extras próximo ao meu personagem
      		When meu personagem se move em direção ao power-up
      		Then meu personagem deve coletar o power-up de vidas extras
      		And o número de vidas do meu personagem deve aumentar temporariamente