Feature: Banco Porquinho da Felicidade
Gerenciamento de Contas Bancárias

User story: Acesso à Conta Bancária
    Como um cliente do "Porquinho da Felicidade"
    Eu desejo acessar minha conta bancária
    Para verificar meu saldo e realizar transações financeiras

     Scenario: Acesso bem-sucedido à conta bancária
      Given que sou um cliente do "Porquinho da Felicidade"
      And possuo uma conta bancária válida
      When acesso o sistema do banco
      Then devo ser redirecionado para a página de login
      And posso inserir meu nome de usuário e senha
      And realizar operações bancárias, como verificar saldo e transferir dinheiro.


User story: Transferência de Fundos
    Como um cliente do "Porquinho da Felicidade"
    Eu desejo transferir fundos entre minhas contas ou para outras contas
    Para gerenciar meu dinheiro de forma conveniente

    Scenario: Transferência bem-sucedida entre contas do mesmo cliente
      Given que sou um cliente do "Porquinho da Felicidade"
      And possuo duas contas bancárias válidas
      When estou logado no sistema do banco
      And seleciono a opção de transferência de fundos
      And escolho minha conta de origem e conta de destino
      And especifico o valor a ser transferido
      And confirmo a transação
      Then a transferência de fundos deve ser concluída com sucesso
      And o saldo da conta de origem deve ser atualizado corretamente
      And o saldo da conta de destino deve refletir a transferência

    Scenario: Transferência bem-sucedida para conta de terceiros
      Given que sou um cliente do "Porquinho da Felicidade"
      And possuo uma conta bancária válida
      When estou logado no sistema do banco
      And seleciono a opção de transferência de fundos
      And escolho minha conta de origem e uma conta de terceiros como destino
      And especifico o valor a ser transferido
      And confirmo a transação
      Then a transferência de fundos deve ser concluída com sucesso
      And o saldo da conta de origem deve ser atualizado corretamente
      And o beneficiário da transferência deve receber o valor transferido

    Scenario: Tranferência bem sucedida com valores específicos
      Given que eu esteja logado na minha conta do banco
      And possua um saldo em conta de R$500,00
      When eu tentar realizar a transferência de um valor de R$300,00 para outra conta
      Then o banco deverá autorizar e realizar a transferência do dinheiro
      And o meu saldo final deverá ser R$200,00

    Scenario: Tranferência mal sucedida com valores específicos
      Given que eu esteja logado na minha conta do banco
      And possua um saldo em conta de R$200,00
      When eu tentar realizar a transferência de um valor de R$300,00 para outra conta
      Then o banco deverá negar a realização da transferência do dinheiro
      And o app deverá mostrar a mensagem "Saldo insuficiente"  

User story: Pagamento de Contas
    Como um cliente do "Porquinho da Felicidade"
    Eu desejo pagar minhas contas online
    Para evitar atrasos e multas

    Scenario: Pagamento bem-sucedido de conta
      Given que sou um cliente do "Porquinho da Felicidade"
      And possuo uma conta bancária válida
      When estou logado no sistema do banco
      And seleciono a opção de pagamento de contas
      And escolho o beneficiário e especifico o valor a ser pago
      And confirmo o pagamento
      Then o pagamento deve ser concluído com sucesso
      And o saldo da minha conta bancária deve ser atualizado corretamente
      And o beneficiário deve receber o valor pago

User story: Solicitação de Empréstimo
    Como um cliente do "Porquinho da Felicidade"
    Eu desejo solicitar um empréstimo
    Para financiar projetos ou lidar com emergências financeiras

    Scenario: Solicitação de empréstimo bem-sucedida
      Given que sou um cliente do "Porquinho da Felicidade"
      And possuo uma conta bancária válida
      When estou logado no sistema do banco
      And seleciono a opção de solicitação de empréstimo
      And especifico o valor desejado e o prazo de pagamento
      And forneço as informações necessárias para a solicitação
      And confirmo a solicitação
      Then a solicitação de empréstimo deve ser enviada com sucesso
      And devo receber uma confirmação do banco sobre a solicitação