     #language: pt

     Funcionalidade: Editar produto para colocar no carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu estaeja na pagina do produto a ser inserido no carrinho

            Cenário: Configurar produto de acordo com meu tamanho e gosto
            Quando clico em comprar selecionando "cor", "tamanho" e "quantidade" 
            Então produto deve ser inderido no carrinho

            Cenário: Obrigatoriedade dos campos de seleção invalida
            Quando clico em comprar deixando de selecionar UM dos campos "cor", "tamanho" e "quantidade" 
            Então Site exibira alerta de ERRO 

            Cenário: Quantidade de produtos por venda excedida
            Quando clico em comprar selecionando "tamanho" maior que 10 
            Então site deve informar um mensagem "limite de 10 produtos por venda"

            Cenário: Botão limpar
            Quando clico em "limpar" com "cor", "tamanho" e "quantidade" selecionando 
            Então o produto deve voltar ao estado original