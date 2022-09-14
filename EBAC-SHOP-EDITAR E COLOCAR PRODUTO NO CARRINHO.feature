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