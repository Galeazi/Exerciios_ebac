#language: pt


Funcionalidade: Colcluir cadastro e finalizar
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu esteja com produto no carrinho e na tela de cadastro

Cenário: Cadastro de cliente valido
Quando eu preencho todos os campo obrigatorios
E e-mail no formato valido
Então finalizo o cadastro para concluir a compra

Cenário: Validar menssagem para formato invalido do e-mail
Quando eu preencho todos os campo obrigatorios
E Email no formato invalido
Então sistema deve apresentar uma mensagem de Erro

Esquema do Cenário: Validar obrigatoriedade dos campos marcado com asteriscos
Quando eu deixo de preencher um dos campos Nome, Sobrenome, país, Endereço, CEP, Telefone ou Endereço de e-mail obrigatorio
que apresenta asteristico
E clico em finalizar o cadastro
Então sistema deve exibir mensagem de alerta


