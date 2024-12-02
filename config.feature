            #language: pt

            Funcionalidade: Tela de Login
            Como cliente EBAC SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Cenário: Produto sem opção selecionada de tamanho
            Quando eu deixar de preencher o tamanho
            E escolher a "quantidade"
            Então deve aparecer uma mensagem de alerta: "Necessário selecionar o tamanho"

            Cenário: Produto sem opção selecionada de cor
            Quando eu deixar de preencher a cor
            E escolher a "quantidade"
            Então deve aparecer uma mensagem de alerta: "Necessário selecionar a cor"

            Cenário: Produto sem opção selecionada de quantidade
            Quando eu alterar "tamanho" e "cor"
            E deixar de escolher a "quantidade"
            Então deve aparecer uma mensagem de alerta: "Necessário selecionar a quantidade"

            Cenário: Quantidade do produto não permitida
            Quando eu alterar "tamanho" e "cor"
            E a "quantidade" for maior que "10"
            Então deve aparecer uma mensagem de alerta: "Limite de 10 unidades"

            Cenário: Resetar botões de opção
            Quando eu clicar em "Limpar"
            E houverem opções de "cor", "tamanho" e "quantidade"
            Então os botões devem ser restaurados para sua opção original

            Esquema do Cenário: Adicionar produto ao carrinho
            Quando eu alterar <tamanho> e <cor>
            E escolher a <quantidade>
            Então deve aparecer uma <mensagem> finalizando a compra

            Exemplos:
            | tamanho | cor  | quantidade | mensagem   |
            | XS      | Blue | 9          | compra     |
            | null    | Blue | 9          | alerta     |
            | XS      | null | 9          | alerta     |
            | XS      | Blue | null       | alerta     |
            | XS      | Blue | 11         | alerta     |


