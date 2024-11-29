            #language: pt

            Funcionalidade: Tela de Login
            Como cliente EBAC SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Cenário: Produto sem opção selecionada de tamanho
            Quando eu alterar "cor" e "tamanho" = <null>
            E escolher a "quantidade"
            Então deve aparecer uma mensagem de alerta: "Necessário selecionar a quantidade"

            Cenário: Produto sem opção selecionada de cor
            Quando eu alterar "tamanho" e "cor" = <null>
            E escolher a "quantidade"
            Então deve aparecer uma mensagem de alerta: "Necessário selecionar a cor"

            Cenário: Produto sem opção selecionada de quantidade
            Quando eu alterar "tamanho" e "cor"
            E escolher "quantidade" = <null>
            Então deve aparecer uma mensagem de alerta: "Necessário selecionar a quantidade"

            Cenário: Quantidade do produto não permitida
            Quando eu alterar "tamanho" e "cor"
            E a quantidade for > 10
            Então deve aparecer uma mensagem de alerta: "Limite de 10 unidades"

            Cenário: Resetar botões de opção
            Quando eu clicar em "Limpar"
            E houverem opções de "cor", "tamanho" e "quantidade"
            Então os botões devem ser restaurados para sua opção original

            Cenário: Adicionar produto ao carrinho
            Quando eu alterar <tamanho> e <cor>
            E escolher a <quantidade>
            Então deve aparecer um pop-up e animação de produto adicionado ao carrinho

            Exemplos:
            | tamanho | cor  | Quantidade | exibe      |
            | XS      | Blue | 9          | Pop-up     |
            | null    | Blue | 9          | alerta     |
            | XS      | null | 9          | alerta     |
            | XS      | Blue | null       | alerta     |
            | XS      | Blue | 11         | alerta     |


