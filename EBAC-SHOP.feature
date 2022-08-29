            #language: pt

            Funcionalidade: Editar produto para colocar no carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu estaeja na pagina do produto a ser inserido no carrinho

            Cenário: Obrigatoriedade dos campos de seleção valida
            Quando eu escolher o tamanho "XS"
            E a cor "orange"
            E selecionar a quantidade de "5" peças
            Então o botão "COMPRAR" deve ficar disponivel para clicar

            Cenário: Obrigatoriedade dos campos de seleção invalida
            Quando deixar de selecionar UM dos campos cor, tamanho e quantidade
            Então o botão "COMPRAR" não deve estar disponivel para clicar

            Cenário: Quantidade de produtos por venda excedida
            Quando eu escolher o tamanho "XS"
            E a cor "orange"
            E selecionar a quantidade de "11" peças
            Então o sistema deve informar um mensagem "limite de 10 produtos por venda"

            Cenário: Botão limpar
            Quando eu escolher o tamanho "XS"
            E a cor "orange"
            E selecionar a quantidade de "5" peças
            E clique no botão "Limpar"
            Então o produto deve voltar ao estado original



            Funcionalidade: Login (autenticação) na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login (autenticação) da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o <usuário>
            E a senha <senha>
            Então deve direcionar o cliente para a tela de checkout

            Cenário: Autenticação invalida
            Quando eu digitar o usuário Invalido@ebac.com.br
            E a senha 000@invalida
            Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Exemplos:
            | usuário              | senha     |
            | “joao@ebac.com.br”   | “123@abc” |
            | “maria@ebac.com.br”  | “123@abc” |
            | “felipe@ebac.com.br“ | “123@abc” |
            | “flavio@ebac.com.br“ | “123@abc” |
            | “ana@ebac.com.br“    | “123@abc” |



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

            Cenário: Validar obrigatoriedade dos campos marcado com asteriscos
            Quando eu deixo de preencher um <campo> obrigatorio que apresenta asteristico
            E clico em finalizar o cadastro
            Então sistema deve exibir mensagem de alerta

            Exemplos:
            | campo              |
            | Nome               |
            | Sobrenome          |
            | País               |
            | Endereço           |
            | CEP                |
            | Telefone           |
            | Endereço de e-mail |

