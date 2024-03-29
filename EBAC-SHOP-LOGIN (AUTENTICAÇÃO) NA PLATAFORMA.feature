            #language: pt

            Funcionalidade: Login (autenticação) na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login (autenticação) da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o <senha>, <usuario> 
            Então deve direcionar o cliente para a tela de checkout

            Esquema do Cenário: Autenticação invalida
            Quando eu digitar <usuario> ou <senha> invalidos
            Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Exemplos:
            | usuario                             | senha                |
            | “joao@ebac.com.br”                  | “123@abc”            |
            | “maria3898_@ebac.com.br”            | “SENHA”              |
            | “9898@ebac.com.br“                  | “891273”             |
            | “#$%&@ebac.com.br“                  | “@#$%&”              |
            | “ana.da.silva.oliveira@ebac.com.br“ | “ForteSenha@9885@=_” |