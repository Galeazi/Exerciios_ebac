#language: pt


Funcionalidade: Colcluir cadastro e finalizar
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu esteja com produto no carrinho e na tela de cadastro - checkout

Cenário: Cadastro de cliente valido
Quando todos campos obrigatorios no formato valido
Então finalizo o cadastro para concluir a compra

Cenário: Validar menssagem para formato invalido do e-mail
Quando campo e-mail no formato invalido e demia campos no formato valido
Então sistema deve apresentar uma mensagem de Erro

Esquema do Cenário: Validar obrigatoriedade dos campos marcado com asteriscos
Quando eu deixar de preencher algum campo obrigatorio
E clico em finalizar o cadastro
Então sistema deve exibir mensagem de alerta


